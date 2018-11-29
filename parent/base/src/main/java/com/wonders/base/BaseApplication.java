package com.wonders.base;


import com.wonders.common.intercepter.AuthIntercepter;
import com.wonders.core.repository.BaseRepositoryFactoryBean;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


@EnableFeignClients(basePackages = {"com.wonders"})
//@EnableDiscoveryClient
@SpringBootApplication(scanBasePackages = {"com.wonders"})
@EnableJpaRepositories(repositoryFactoryBeanClass = BaseRepositoryFactoryBean.class)
public class BaseApplication {

    public static void main(String[] args) throws Exception {
        SpringApplication.run(BaseApplication.class, args);
        System.err.println("base启动");
    }

    @Bean
    public AuthIntercepter authIntercepter() {
        return new AuthIntercepter();
    }

    @Configuration
    class WebMvcConfigurer extends WebMvcConfigurerAdapter {
        public void addInterceptors(InterceptorRegistry registry) {
            InterceptorRegistration addInterceptor = registry.addInterceptor(authIntercepter());
            // 排除配置
            addInterceptor.excludePathPatterns("/error");
            addInterceptor.excludePathPatterns("/login**");
            addInterceptor.excludePathPatterns("/test**");
            addInterceptor.excludePathPatterns("/log/save");
            // 拦截配置
            addInterceptor.addPathPatterns("/**");

        }
    }

}
