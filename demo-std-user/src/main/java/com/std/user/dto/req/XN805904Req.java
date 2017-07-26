package com.std.user.dto.req;

public class XN805904Req {
    // 系统编号(必填)
    private String systemCode;

    // 手机号(必填)
    private String mobile;

    // 业务类型(必填)
    private String bizType;

    // 种类(必填)
    private String kind;

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
