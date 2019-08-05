package cn.com.jit.monitor.biz.core.configuration;

import cn.com.jit.monitor.biz.core.configuration.properties.DatabaseProperties;
import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author liuyang
 * @version V1.0
 * @ClassName DataSourceConfiguration
 * @Description
 * @Copyright Deep Kernel
 * @date 2018/7/23 21:15
 */
@Configuration
@EnableTransactionManagement
public class DataSourceConfiguration {
    @Autowired
    private DatabaseProperties databaseProperties;
    @Bean(initMethod = "init" ,destroyMethod = "close")
    public DruidDataSource dataSource (){
        DruidDataSource dataSource = new DruidDataSource();
        dataSource.setDriverClassName(databaseProperties.getDriverClassName());
        dataSource.setUrl(databaseProperties.getUrl());
        dataSource.setUsername(databaseProperties.getUsername());
        dataSource.setPassword(databaseProperties.getPassword());
        dataSource.setMaxActive(Integer.parseInt(databaseProperties.getMaxActive()));
        dataSource.setInitialSize(Integer.parseInt(databaseProperties.getInitialSize()));
        dataSource.setMinIdle(Integer.parseInt(databaseProperties.getMinIdle()));
        dataSource.setMaxWait(Long.parseLong(databaseProperties.getMaxWait()));
        dataSource.setValidationQuery(databaseProperties.getValidationQuery());
        dataSource.setBreakAfterAcquireFailure(true);
        dataSource.setConnectionErrorRetryAttempts(Integer.MAX_VALUE);
        return dataSource;
    }

}
