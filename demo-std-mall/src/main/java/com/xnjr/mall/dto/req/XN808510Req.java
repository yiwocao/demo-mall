package com.xnjr.mall.dto.req;

public class XN808510Req {
    // token（必填）
    private String token;

    // 手机号（必填）
    private String mobile;

    // 登录密码（选填）
    private String loginPwd;

    // 本次兑换的嗨币金额（必填）
    private String highAmount;

    // 所属公司编号(必填)
    private String companyCode;

    // 所属系统编号(必填)
    private String systemCode;

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getLoginPwd() {
        return loginPwd;
    }

    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd;
    }

    public String getHighAmount() {
        return highAmount;
    }

    public void setHighAmount(String highAmount) {
        this.highAmount = highAmount;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

}
