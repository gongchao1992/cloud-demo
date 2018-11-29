

<!-- TOC -->

- [0.1. 项目说明](#01-项目说明)
    - [0.1.1. 设计文档](#011-设计文档)
    - [0.1.2. 运行环境](#012-运行环境)
    - [0.1.3. 测试工具](#013-测试工具)
    - [0.1.4. 启动步骤](#014-启动步骤)
    - [0.1.5. base服务api](#015-base服务api)
    - [0.1.6. 接口举例](#016-接口举例)

<!-- /TOC -->

## 0.1. 项目说明

### 0.1.1. 设计文档

- [表设计](/document/table.md)
- [技术架构](/document/technologyFramework.md)

### 0.1.2. 运行环境

1. 数据库env：
```
spring.datasource.password: 
spring.datasource.url:  jdbc:mysql://localhost:3306/demo
spring.datasource.username: root
```
- 数据库修改 `/config/application-base.properties`


### 0.1.3. 测试工具

1. chrome
2. postman


### 0.1.4. 启动步骤

1. 启动 `ServerApplication`
2. 启动 `ConfigApplication`
3. 启动 `ZuulApplication`
4. 启动 `BaseApplication`

|name|host|port|testUrl|remark|
|----|----|----|----|----|
|Server|127.0.0.1|1000|http://localhost:1000/login|服务注册中心 -u: admin -p: 123456|
|config|127.0.0.1|2000|http://localhost:2000/application-base.properties|配置服务 -u: admin -p: 123456|
|base|127.0.0.1|8000|http://localhost:8000/login|权限基础服务 -u: admin -p: 123456|
|zuul|127.0.0.1|8888|http://localhost:8888/base/login|网关服务 -u: admin -p: 123456|


### 0.1.5. base服务api
|operation|path|remark|
|----|----|----|
|登陆|/login|无token验证|
|日志保存|/log/save|无token验证|
|日志查看|/log/list|token验证|
|机构保存|/organ/save|token验证|
|机构查看|/organ/list|token验证|
|用户保存|/user/save|token验证|
|用户查看|/user/list|token验证|


### 0.1.6. 接口举例
1. 登陆

- url: http://localhost:8888/base/login

- method ：POST
- headers
```json
    Content-Type:application/json
```
- requestBody
```json
{
	"username":"admin",
	"password":"123456"
}
```

2. 保存机构

- url: http://localhost:8888/base/organ/save

- method ：POST

- headers
```json
    Authorization:xxx.yyy.zzzz
    Content-Type:application/json
```
- requestBody
```json
{
	"name":"后端开发部",
	"type":"type_3",
	"enName":"hdkfb",
	"address":"武警路151 2FF",
	"contactTel":"12345678",
	"remark":"test data",
	"nodePath":"0-1-3",
	"parent":{"id":3}
}
```

3. 机构查询

- url : http://localhost:8888/base/organ/list

- method : GET

- headers
```json
    Authorization:xxx.yyy.zzzz
```

- requestParam
```json
search_parent.id_eq:3
search_name_like:xxx
pindex:0
pcount:10
sort:id_desc
```
