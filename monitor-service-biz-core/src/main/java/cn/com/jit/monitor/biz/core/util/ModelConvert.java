package cn.com.jit.monitor.biz.core.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;

import static org.apache.commons.lang.StringUtils.equalsIgnoreCase;
import static org.apache.commons.lang.StringUtils.remove;

public class ModelConvert<T> {

    private Logger logger = LoggerFactory.getLogger(ModelConvert.class);

    private static final String[] EXCLUDE_CONVERT_SUFFIX =
            {"DO", "BO", "DTO", "INFO", "RESP", "REQ", "VO"};

    /**
     * 转换Bean
     *
     * @param source      源对象
     * @param targetClazz 目标对象Class
     * @return T
     */
    private T convertFrom(Object source, Class<T> targetClazz, boolean requireModelMatch) {
        T target = null;
        try {
            target = targetClazz.newInstance();
        } catch (InstantiationException | IllegalAccessException ignore) {
            logger.error("", ignore);
        }
        if (source != null && target != null) {
            String sourceEscapeName = source.getClass().getSimpleName().toUpperCase();
            String targetEscapeName = target.getClass().getSimpleName().toUpperCase();
            for (String exclude : EXCLUDE_CONVERT_SUFFIX) {
                sourceEscapeName = remove(sourceEscapeName, exclude);
                targetEscapeName = remove(targetEscapeName, exclude);
            }
            if (requireModelMatch && !equalsIgnoreCase(sourceEscapeName, targetEscapeName)) {
                throw new IllegalArgumentException("source and target class does not match");
            }
            BeanUtils.copyProperties(source, target);
        }
        return target;
    }

    /**
     * model转换
     *
     * @param source      源model
     * @param targetClazz 目标model class
     */
    public T convertFrom(Object source, Class<T> targetClazz) {
        return convertFrom(source, targetClazz, true);
    }

    /**
     * model转换(忽略类型匹配)
     *
     * @param source      源model
     * @param targetClazz 目标model class
     */
    public T convertFromWithOutModelNameCheck(Object source, Class<T> targetClazz) {
        return convertFrom(source, targetClazz, false);
    }


}
