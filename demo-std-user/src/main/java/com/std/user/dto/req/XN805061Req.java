package com.std.user.dto.req;

public class XN805061Req {
    // userId
    private String userId;

    // 新手机号
    private String newMobile;

    // 验证码
    private String smsCaptcha;

    // 是否区分不同商户（选填 1 区分，其他不区分）
    private String isMall;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getNewMobile() {
        return newMobile;
    }

    public void setNewMobile(String newMobile) {
        this.newMobile = newMobile;
    }

    public String getSmsCaptcha() {
        return smsCaptcha;
    }

    public void setSmsCaptcha(String smsCaptcha) {
        this.smsCaptcha = smsCaptcha;
    }

    public String getIsMall() {
        return isMall;
    }

    public void setIsMall(String isMall) {
        this.isMall = isMall;
    }

}
