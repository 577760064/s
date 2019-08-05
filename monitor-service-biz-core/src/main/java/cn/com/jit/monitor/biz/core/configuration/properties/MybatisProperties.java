package cn.com.jit.monitor.biz.core.configuration.properties;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * @author liuyang
 * @version V1.0
 * @ClassName MybatisProperties
 * @Description
 * @Copyright Deep Kernel
 * @date 2018/7/23 21:04
 */
@ConfigurationProperties(prefix = "monitor.mybatis")
@Data
public class MybatisProperties {
    private String mapperLocations;

    private String databaseType;

    public String getMapperLocations() {
        return mapperLocations;
    }

    public void setMapperLocations(String mapperLocations) {
        this.mapperLocations = mapperLocations;
    }

    public String getDatabaseType() {
        return databaseType;
    }

    public void setDatabaseType(String databaseType) {
        this.databaseType = databaseType;
    }
}
