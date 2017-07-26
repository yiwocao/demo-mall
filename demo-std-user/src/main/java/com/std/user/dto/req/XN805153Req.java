package com.std.user.dto.req;

public class XN805153Req {

    // 用户编号（必填）
    private String userId;

    // 手机号（必填）
    private String mobile;

    // 短信验证码（必填）
    private String smsCaptcha;

    // 是否发送短信(1 是 0 否)
    private String isSendSms;

    public String getIsSendSms() {
        return isSendSms;
    }

    public void setIsSendSms(String isSendSms) {
        this.isSendSms = isSendSms;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getSmsCaptcha() {
        return smsCaptcha;
    }

    public void setSmsCaptcha(String smsCaptcha) {
        this.smsCaptcha = smsCaptcha;
    }
}
