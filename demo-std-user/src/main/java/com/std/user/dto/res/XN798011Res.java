/**
 * @Title XN798011Res.java 
 * @Package com.std.certi.dto.res 
 * @Description 
 * @author leo(haiqing)  
 * @date 2017年2月23日 下午12:46:18 
 * @version V1.0   
 */
package com.std.user.dto.res;

/** 
 * @author: haiqingzheng 
 * @since: 2017年2月23日 下午12:46:18 
 * @history:
 */
public class XN798011Res {
    // 是否在本地实名成功
    private boolean isSuccess;

    // 认证标识
    private String bizNo;

    // 认证URL
    private String url;

    public boolean isSuccess() {
        return isSuccess;
    }

    public void setSuccess(boolean isSuccess) {
        this.isSuccess = isSuccess;
    }

    public String getBizNo() {
        return bizNo;
    }

    public void setBizNo(String bizNo) {
        this.bizNo = bizNo;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
