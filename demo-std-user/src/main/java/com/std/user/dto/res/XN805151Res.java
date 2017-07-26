package com.std.user.dto.res;

public class XN805151Res {
    // 用户编号
    private String userId;

    // 是否绑定手机号
    private String isNeedMobile;

    public XN805151Res() {
    }

    public XN805151Res(String userId, String isNeedMobile) {
        this.userId = userId;
        this.isNeedMobile = isNeedMobile;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getIsNeedMobile() {
        return isNeedMobile;
    }

    public void setIsNeedMobile(String isNeedMobile) {
        this.isNeedMobile = isNeedMobile;
    }
}
