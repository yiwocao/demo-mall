/**
 * @Title XN805192Req.java 
 * @Package com.std.user.dto.req 
 * @Description 
 * @author leo(haiqing)  
 * @date 2017年2月24日 下午5:57:49 
 * @version V1.0   
 */
package com.std.user.dto.req;

/** 
 * @author: haiqingzheng 
 * @since: 2017年2月24日 下午5:57:49 
 * @history:
 */
public class XN805192Req {
    // 用户编号(必填)
    private String userId;

    // 芝麻信用唯一认证标识（必填）
    private String bizNo;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getBizNo() {
        return bizNo;
    }

    public void setBizNo(String bizNo) {
        this.bizNo = bizNo;
    }
}
