package cn.com.jit.monitor.biz.core.util;

import lombok.Data;

@Data
public class RestResponse {

    private String code = "0";

    private String message;

    private Object data;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    @Override
    public String toString(){
        StringBuffer sb = new StringBuffer();
        sb.append(" code :"+ this.code);
        sb.append(" message :"  +  this.message);
        sb.append(" data　："+ this.data);
        return sb.toString();
    }
    public static RestResponse build(String code,Object data) {
        RestResponse messages = new RestResponse();
        messages.setCode(code);
        messages.setData(data);
        return messages;
    }
}
