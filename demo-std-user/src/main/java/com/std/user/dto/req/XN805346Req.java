package com.std.user.dto.req;

/**
 * 邀请码列表查询
 * @author: shan 
 * @since: 2016年12月19日 上午11:30:09 
 * @history:
 */
public class XN805346Req {
    // 邀请码
    public String invCode;

    // 状态
    public String status;

    // 使用人
    public String userId;

    public String getInvCode() {
        return invCode;
    }

    public void setInvCode(String invCode) {
        this.invCode = invCode;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

}
