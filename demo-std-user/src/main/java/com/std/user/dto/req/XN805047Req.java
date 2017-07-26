package com.std.user.dto.req;

public class XN805047Req {
    // userId
    private String userId;

    // 新手机号
    private String newMobile;

    // 验证码
    private String smsCaptcha;

    // 支付密码
    private String tradePwd;

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

    public String getTradePwd() {
        return tradePwd;
    }

    public void setTradePwd(String tradePwd) {
        this.tradePwd = tradePwd;
    }

    public String getIsMall() {
        return isMall;
    }

    public void setIsMall(String isMall) {
        this.isMall = isMall;
    }
}
