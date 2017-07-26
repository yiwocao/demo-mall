package com.std.user.dto.req;

/** 
 * @author: xieyj 
 * @since: 2016年8月31日 下午12:04:08 
 * @history:
 */
public class XN805092Req {

    // 用户编号(必填)
    private String userId;

    // 关系人编号(必填)
    private String toUser;

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

}
