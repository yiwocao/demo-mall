package com.xnjr.mall.dto.req;

public class XN001350Req {
    // 登录名（必填）
    private String loginName;

    // 手机号（必填）
    private String mobile;

    // 类别(必填)
    private String kind;

    // 推荐人(选填)
    private String userReferee;

    // 更新人(必填)
    private String updater;

    // 备注(选填)
    private String remark;

    // 是否注册环信(选填)
    private String isRegHx;

    // 系统编号(必填)
    private String systemCode;

    // 公司编号(必填)
    private String companyCode;

    public String getUserReferee() {
        return userReferee;
    }

    public void setUserReferee(String userReferee) {
        this.userReferee = userReferee;
    }

    public String getIsRegHx() {
        return isRegHx;
    }

    public void setIsRegHx(String isRegHx) {
        this.isRegHx = isRegHx;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

}
