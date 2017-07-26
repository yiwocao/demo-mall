package com.std.user.dto.req;

public class XN805159Req {
    // 用户编号(必填)
    private String userId;

    // 手机号(必填)
    private String mobile;

    // 真实姓名(必填)
    private String realName;

    // 证件类型(必填)
    private String idKind;

    // 证件号码(必填)
    private String idNo;

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

    public String getIdKind() {
        return idKind;
    }

    public void setIdKind(String idKind) {
        this.idKind = idKind;
    }

    public String getIdNo() {
        return idNo;
    }

    public void setIdNo(String idNo) {
        this.idNo = idNo;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }
}
