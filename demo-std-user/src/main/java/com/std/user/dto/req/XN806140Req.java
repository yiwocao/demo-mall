package com.std.user.dto.req;

public class XN806140Req {

    // 资质编号（必填）
    private String certificateCode;

    // 所属公司编号（必填）
    private String companyCode;

    // 申请人（必填）
    private String applyUser;

    public String getCertificateCode() {
        return certificateCode;
    }

    public void setCertificateCode(String certificateCode) {
        this.certificateCode = certificateCode;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getApplyUser() {
        return applyUser;
    }

    public void setApplyUser(String applyUser) {
        this.applyUser = applyUser;
    }
}
