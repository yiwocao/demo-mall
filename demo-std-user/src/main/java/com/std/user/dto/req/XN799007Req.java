package com.std.user.dto.req;

public class XN799007Req {

    // 手机号-- 必填
    private String companyCode;

    // 手机号-- 必填
    private String mobile;

    // 接受短信的手机号--必填
    private String captcha;

    // 业务类型 -- 必填
    private String bizType;

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getBizType() {
        return bizType;
    }

    public void setBizType(String bizType) {
        this.bizType = bizType;
    }
}
