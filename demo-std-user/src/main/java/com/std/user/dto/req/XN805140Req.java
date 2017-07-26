package com.std.user.dto.req;

public class XN805140Req {

    // 广播编号（必填）
    private String smsCode;

    // 用户编号（必填）
    private String userId;

    public String getSmsCode() {
        return smsCode;
    }

    public void setSmsCode(String smsCode) {
        this.smsCode = smsCode;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
