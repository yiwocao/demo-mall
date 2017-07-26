package com.std.user.dto.req;

public class XN806143Req {

    // 资质编号（必填）
    private String code;

    // 资质编号
    private String certificateCode;

    // 申请人
    private String applyUser;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCertificateCode() {
        return certificateCode;
    }

    public void setCertificateCode(String certificateCode) {
        this.certificateCode = certificateCode;
    }

    public String getApplyUser() {
        return applyUser;
    }

    public void setApplyUser(String applyUser) {
        this.applyUser = applyUser;
    }
}
