package cn.com.jit.monitor.biz.core.configuration;

import cn.com.jit.monitor.biz.core.configuration.properties.DatabaseProperties;
import cn.com.jit.monitor.biz.core.configuration.properties.MybatisProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * @author liuyang
 * @version V1.0
 * @Description
 * @Copyright Deep Kernel
 * @date 2018/7/23 21:30
 */
@Configuration
@EnableConfigurationProperties({DatabaseProperties.class, MybatisProperties.class})
@Import({MybatisSpringConfiguration.class, DataSourceConfiguration.class})
public class DatabaseMybatisAutoConfiguration {
}
