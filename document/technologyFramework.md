
# 1. 技术框架
- 
## 1.1. 后端
### 1.1.1. springBoot 2.0
- jpa
- aop
- redis
- Async
- 其他

### 1.1.2. springcloud Finchley.SR1

具体的完整项目中，一般使用`Zuul`+`Feign`（集成了`Ribbon`、`Hystrix`）+ `Eureka` + `Config`

#### 1.1.2.1. Eureka Server

- 服务注册中心

```java
@EnableEurekaServer
@SpringBootApplication
public class EurekaServerApplication {
    ...
}
```

```yml
spring.application.name=eureka-service
# 修改端口
server.port=1000

# 实例的主机名称
eureka.instance.hostname=localhost
## 表示不去检索其他的服务，因为服务注册中心本身的职责就是维护服务实例，它也不需要去检索其他服务
eureka.client.fetch-registry=false
## 不要向注册中心注册自己
eureka.client.register-with-eureka=false
```
#### 1.1.2.2. Eureka client

- 服务发现的提供者

```java
@EnableDiscoveryClient
@SpringBootApplication
public class EurekaClientApplication {

    public static void main(String[] args) throws Exception {
        SpringApplication.run(EurekaClientApplication.class, args);
        System.err.println("spring-cloud-eureka-client启动!");
    }
}
```
```yml
spring.application.name=eureka-client
server.port=2000

# 注册中心地址
eureka.client.service-url.defaultZone=http://127.0.0.1:1000/eureka
# 启用ip配置 这样在注册中心列表中看见的是以ip+端口呈现的
eureka.instance.prefer-ip-address=true
# 实例名称  最后呈现地址：ip:2000
eureka.instance.instance-id=${spring.cloud.client.ip-address}:${server.port}
```

- 服务发现的消费者

```java
@SpringBootApplication
@EnableDiscoveryClient
public class EurekaConsumerRibbonApplication {
    ...
    @Bean
    public RestTemplate restTemplage() {
        return new RestTemplate();
    }
}

@RestController
public class DemoController {

    @wired
    LoadBalancerClient loadBalancerClient;
    
    @wired 
    RestTemplate restTemplate;
    
    @GetMapping("/hello") 
    public String hello(String name) {
        ServiceInstance serviceInstance = loadBalancerClient.choose("eureka-client");
        String url = "http://" + serviceInstance.getHost() + ":" + serviceInstance.getPort() + "/hello?name=" + name;
        return restTemplate.getForObject(url, String.class);
    } 
}
```
```yml
spring.application.name=eureka-consumer-ribbon
server.port=8018

#指定注册中心地址
eureka.client.service-url.defaultZone=http://127.0.0.1:1000/eureka
# 启用ip配置 这样在注册中心列表中看见的是以ip+端口呈现的
eureka.instance.prefer-ip-address=true
# 实例名称  最后呈现地址：ip:2000
eureka.instance.instance-id=${spring.cloud.client.ip-address}:${server.port}
```
#### 1.1.2.3. 声明式服务`Feign`

`Feign`是`Netflix`开发的声明式、模块化的`HTTP`客户端。`Feign`可帮助我们更好更快的便捷、优雅地调用`HTTP API`
`Feign`内部集成了`Ribbon`和`Hystrix`

```java
@EnableFeignClients
@SpringBootApplication
public class EurekaConsumerFeignApplication {

    public static void main(String[] args) throws Exception {
        ...
    }

}
...
@Headers("Content-Type:application/json")
@FeignClient(name = "base", configuration = FeignIntercepter.class)
public interface OAuthService {

    @GetMapping("/validatePath")
    Resp validatePath(@RequestParam("path")String path);
}
...
@Component
public class ApiFallbackProvider implements FallbackProvider {

	@Override
	public String getRoute() {
        //正则表达式
		return "*";
	}
    ...
	@Override
	public ClientHttpResponse fallbackResponse(String route, Throwable cause) {
		//标记不同的异常为不同的http状态值
		if (cause instanceof HystrixTimeoutException) {
			return response(HttpStatus.GATEWAY_TIMEOUT);
		} else {
			//可继续添加自定义异常类
			return response(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	//处理
	private ClientHttpResponse response(final HttpStatus status) {
        return new ClientHttpResponse() {
            ...
            @Override
            public InputStream getBody() throws IOException {
            	//可替换成相应的json串的 看业务规定了
                return new ByteArrayInputStream("The service is unavailable.".getBytes());
            }
            ...
        };
    }
}
```
```yml
spring.application.name=eureka-consumer-feign
server.port=8028

#指定注册中心地址
eureka.client.service-url.defaultZone=http://127.0.0.1:1000/eureka
# 启用ip配置 这样在注册中心列表中看见的是以ip+端口呈现的
eureka.instance.prefer-ip-address=true
# 实例名称  最后呈现地址：ip:2000
eureka.instance.instance-id=${spring.cloud.client.ip-address}:${server.port}
```

#### 1.1.2.4. 网关权限`Zuul`

核心功能：`路由`和`权限`的`过滤验证`功能。所有请求先经过`zuul`来进行路由到各个子服务系统中，`token`的验证也往往放在这一层。

```java
@EnableZuulProxy
@EnableFeignClients(basePackages = {"com.wonders"})
//@EnableDiscoveryClient
@SpringBootApplication(scanBasePackages = {"com.wonders"})
public class ZuulApplication {

    public static void main(String[] args) {
        SpringApplication.run(ZuulApplication.class, args);
        System.err.println("zuul启动");
    }

}

/**
 * 自定义过滤器-校验请求参数是否合法：包含token参数
 * @author youlian.fei
 */
@Component
public class AccessZuulFilter extends ZuulFilter {
    ...
    @Override
    public Object run() {
        ...
        //是否是忽略url
        if (isIgnorePath(requestUri)) {
            return null;
        }
        //消息头中获取
        String accessToken = request.getHeader(Const.CONTEXT_TOKEN);
        if (StringUtils.isBlank(accessToken)) {
            //参数中获取
            accessToken = request.getParameter(Const.TOKEN);
        }

        if (StringUtils.isBlank(accessToken)) {
            //中断请求
            cutRequestHandler(Resp.error401(), 200);
            return null;
        }
        //将accessToken存入当前请求上下文中
        TokenHandler.setToken(accessToken);

        //功能权限验证
        if (!havePermission(request)) {
            //中断请求
            cutRequestHandler(Resp.error401(), 200);
            return null;
        }
        return null;
    }
    ...
}
```

```yml
...
#zuul忽略消息头
zuul.sensitive-headers=Cookie,Set-Cookie

zuul.routes.baseApi.path=base
zuul.routes.baseApi.service-id=base

zuul.routes.myDemo.path=/myDemo/**
zuul.routes.myDemo.url=forward:/demo

zuul.routes.legacy.path=/**
...
```

#### 1.1.2.5. 配置中心`Config`

- 配置中心服务端

```java
@EnableConfigServer
@EnableDiscoveryClient
@SpringBootApplication
public class ConfigApplication {

    public static void main(String[] args) throws Exception{
        SpringApplication.run(ConfigApplication.class,args);
        System.err.println("config启动");
    }
}
```

```yml
spring.application.name=config
server.port=2000

#配置文件git配置
spring.cloud.config.server.git.uri=http://10.141.28.2/feiyoulian/demo.git
# 搜索路径，即配置文件的目录，可配置多个，逗号分隔。默认为根目录。
spring.cloud.config.server.git.searchPaths=config
# git用户名和密码 针对私有仓库而言需要填写
spring.cloud.config.server.git.username=feiyoulian
spring.cloud.config.server.git.password=12345678

# 注册中心地址
eureka.client.service-url.defaultZone=http://127.0.0.1:1000/eureka
# 启用ip配置 这样在注册中心列表中看见的是以ip+端口呈现的
eureka.instance.prefer-ip-address=true
# 实例名称  最后呈现地址：ip:2000
eureka.instance.instance-id=${spring.cloud.client.ip-address}:${server.port}
```

- 配置中心客户端

```yml
# 设置分支
spring.cloud.config.label=master
# 策略
spring.cloud.config.profile=base

# 是否使用注册中心方式进行获取
spring.cloud.config.discovery.enabled=true
# 服务端地址
# 注册中心应用id 
spring.cloud.config.discovery.service-id=config
# 在不使用注册中心模式下 直接填写实际地址
#spring.cloud.config.uri=http://127.0.0.1:5678

#添加注册中心配置
# 注册中心地址 -此为单机模式
eureka.client.service-url.defaultZone=http://admin:123456@127.0.0.1:1000/eureka
# 启用ip配置 这样在注册中心列表中看见的是以ip+端口呈现的
eureka.instance.prefer-ip-address=true
# 实例名称  最后呈现地址：ip:15678
eureka.instance.instance-id=${spring.cloud.client.ip-address}:${server.port}

```



## 1.2. 前端

### 1.2.1. 启动

- 安装nodejs

    [安装教程](https://www.liaoxuefeng.com/wiki/001434446689867b27157e896e74d51a89c25cc8b43bdb3000/00143450141843488beddae2a1044cab5acb5125baf0882000)

- 命令 pip install

### 1.2.2. 文档教程

vue-cli + vuex + vue-router  + iview + axios


- 基础

[axios](https://github.com/axios/axios)

[vue](https://cn.vuejs.org/v2/guide/)

[npm]()

- 开发

[ue Loader](https://vue-loader.vuejs.org/zh/)

[vue-cli](https://cli.vuejs.org/zh/guide/)

[vue-router](https://router.vuejs.org/zh/)

[vuex](https://vuex.vuejs.org/zh/)

[iview](https://www.iviewui.com/docs/guide/install)
