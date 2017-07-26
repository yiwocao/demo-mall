/**
 * @Title XN805091Req.java 
 * @Package com.std.user.dto.req 
 * @Description 
 * @author xieyj  
 * @date 2016年8月31日 下午12:04:08 
 * @version V1.0   
 */
package com.std.user.dto.req;

/** 
 * @author: xieyj 
 * @since: 2016年8月31日 下午12:04:08 
 * @history:
 */
public class XN805091Req {

    // 用户编号(选填)
    private String userId;

    // 关系人编号(选填)
    private String toUser;

    // 手机号(选填)
    private String mobile;

    // 昵称(选填)
    private String nickname;

    // 系统编号(必填)
    private String systemCode;

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getToUser() {
        return toUser;
    }

    public void setToUser(String toUser) {
        this.toUser = toUser;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

}
