package com.std.user.dto.req;

/**
 * 
 * @author: shan 
 * @since: 2016年12月17日 下午8:02:28 
 * @history:
 */
public class XN805341Req {
    // 邀请码
    public String invCode;

    // 使用者
    public String userId;

    public String getInvCode() {
        return invCode;
    }

    public void setInvCode(String invCode) {
        this.invCode = invCode;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
