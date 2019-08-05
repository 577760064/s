package cn.com.jit.monitor.biz.core.exception;

import cn.com.jit.cube.framework.exception.CubeServiceException;

/**
 * @author  刘洋
 * @version V1.0
 * @Description
 */
public class MonitorServicesException extends CubeServiceException {
    private String errorCode;
    private Object[] errorArgs;
    private String errorMessage;

    public MonitorServicesException(Throwable cause, String errorCode, Object... errorArgs) {
        this("AqsServices exception", cause, errorCode, errorArgs);
    }
    private static String checkerroeCode(String errorCode,Object... errorArgs) {
//        String s = PropertiesUtil.get(errorCode);
//        if(s != null && !"".equals(s)){
//            if(errorArgs != null && errorArgs.length > 0){
//                for(int i = 0 ; i< errorArgs.length ; i++){
//                    String code = errorArgs[i].toString();
//                    s = s.replace("{"+i+"}",code);
//                }
//            }
//        }else{
//            s = errorCode;
//        }
//        return s;
        return null;
    }
    public MonitorServicesException(String errorCode, Object... errorArgs) {
        super(checkerroeCode(errorCode,errorArgs),errorCode,errorArgs);
        this.errorCode = errorCode;
        this.errorArgs = errorArgs;
        this.errorMessage = "["+errorCode+"]"+ " "+ checkerroeCode(errorCode,errorArgs);
//        this("Demo exception", errorCode, errorArgs);
    }

    @Override
    public String getErrorCode() {
        return errorCode;
    }

    private void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    @Override
    public Object[] getErrorArgs() {
        return errorArgs;
    }

    private void setErrorArgs(Object[] errorArgs) {
        this.errorArgs = errorArgs;
    }

    @Override
    public String getErrorMessage() {
        return errorMessage;
    }

    private void setErrorMessage(String errorMessage) {

        this.errorMessage = errorMessage;
    }
}
