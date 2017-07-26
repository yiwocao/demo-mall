package com.std.user.dto.req;

public class XN806022Req {

    // 编号（必填）
    private String code;

    // 类型（必填）
    private String type;

    // 账号（必填）
    private String account;

    // 密码（必填）
    private String password;

    // 备注（必填）
    private String remark;

    // 公司编号（必填）
    private String companyCode;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
