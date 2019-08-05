package cn.com.jit.monitor.biz.core.configuration;

import cn.com.jit.monitor.biz.core.configuration.properties.MybatisProperties;
import cn.com.jit.mybatis.pager.interceptor.PageableInterceptor;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.TransactionManagementConfigurer;

import javax.sql.DataSource;
import java.util.Properties;

/**
 * @author liuyang
 * @version V1.0
 * @ClassName MybatisSpringConfiguration
 * @Description
 * @Copyright Deep Kernel
 * @date 2018/7/23 21:23
 */
@Configuration
public class MybatisSpringConfiguration implements TransactionManagementConfigurer {
    @Autowired
    private MybatisProperties mybatisProperties;

    @Autowired
    private DataSource dataSource;

    @Bean(name = "sqlSessionFactoryMybatis")
    public SqlSessionFactory sqlSessionFactory () throws Exception{
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource);
        ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        Properties properties = new Properties();
        properties.setProperty("dialect",mybatisProperties.getDatabaseType());
        PageableInterceptor pageableInterceptor = new PageableInterceptor();
        pageableInterceptor.setProperties(properties);
        sqlSessionFactoryBean.setPlugins(new Interceptor[]{pageableInterceptor});
        try {
            sqlSessionFactoryBean.setMapperLocations(resolver.getResources(mybatisProperties.getMapperLocations()));
        } catch (Exception e) {
            throw new IllegalArgumentException(String.format("Mybatis mapperConfigLocation %s is Illegal", mybatisProperties.getMapperLocations()));
        }
        return sqlSessionFactoryBean.getObject();

    }

    @Override
    public PlatformTransactionManager annotationDrivenTransactionManager() {
        return new DataSourceTransactionManager(dataSource);
    }
}
