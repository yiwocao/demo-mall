package com.xnjr.mall.domain;

//下单时辅助pojo
public class CommitOrderPOJO {
    // 收件人姓名（必填）
    private String receiver;

    // 收件人电话（必填）
    private String reMobile;

    // 收货地址（必填）
    private String reAddress;

    // 申请人（必填）
    private String applyUser;

    // 申请备注（选填）
    private String applyNote;

    // 发票类型（选填）
    private String receiptType;

    // 发票抬头（选填）
    private String receiptTitle;

    // 所属公司编号
    private String companyCode;

    // 所属系统编号
    private String systemCode;

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getReMobile() {
        return reMobile;
    }

    public void setReMobile(String reMobile) {
        this.reMobile = reMobile;
    }

    public String getReAddress() {
        return reAddress;
    }

    public void setReAddress(String reAddress) {
        this.reAddress = reAddress;
    }

    public String getApplyUser() {
        return applyUser;
    }

    public void setApplyUser(String applyUser) {
        this.applyUser = applyUser;
    }

    public String getApplyNote() {
        return applyNote;
    }

    public void setApplyNote(String applyNote) {
        this.applyNote = applyNote;
    }

    public String getReceiptType() {
        return receiptType;
    }

    public void setReceiptType(String receiptType) {
        this.receiptType = receiptType;
    }

    public String getReceiptTitle() {
        return receiptTitle;
    }

    public void setReceiptTitle(String receiptTitle) {
        this.receiptTitle = receiptTitle;
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
