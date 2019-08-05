package cn.com.jit.monitor.application;

import cn.com.jit.cube.framework.config.configuration.EnableCubeConfigurer;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;

@SpringBootApplication
@Configuration
@EnableCubeConfigurer
@PropertySource({"file:config/conf/platform.properties","file:config/application.properties","file:config/database/jdbc.properties"})
//@ImportResource(locations={"classpath*:/META-INF/platform/spring*.xml"})
@MapperScan(basePackages = {"cn.com.jit.monitor.biz.core.dal.mapper"})
@ComponentScan("cn.com.jit.monitor.*")
public class MonitorBootApplication {
    public static void main(String[] args) {
        SpringApplication springApplication =  new SpringApplication(MonitorBootApplication.class);
        springApplication.setWebEnvironment(false);
        springApplication.run(args);

    }
}

