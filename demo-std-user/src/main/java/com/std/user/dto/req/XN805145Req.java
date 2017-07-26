package com.std.user.dto.req;

public class XN805145Req extends APageReq {

    private static final long serialVersionUID = 1L;

    // 广播编号（必填）
    private String smsCode;

    // 状态（必填）
    private String status;

    // 用户编号（必填）
    private String userId;

    public String getSmsCode() {
        return smsCode;
    }

    public void setSmsCode(String smsCode) {
        this.smsCode = smsCode;
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
