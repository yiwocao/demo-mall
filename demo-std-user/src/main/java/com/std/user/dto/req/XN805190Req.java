package com.std.user.dto.req;

public class XN805190Req {
    // 用户编号(必填)
    private String userId;

    // 证件类型(必填)
    private String idKind;

    // 证件号码(必填)
    private String idNo;

    // 真实姓名(必填)
    private String realName;

    // 验证银行卡号(必填)
    private String cardNo;

    // 绑定手机号(选填)
    private String bindMobile;

    // // // 银行别名(必填)
    // // private String bankCode;
    // //
    // // // 银行名称(必填)
    // // private String bankName;
    //
    // public String getBankCode() {
    // return bankCode;
    // }
    //
    // public void setBankCode(String bankCode) {
    // this.bankCode = bankCode;
    // }
    //
    // public String getBankName() {
    // return bankName;
    // }
    //
    // public void setBankName(String bankName) {
    // this.bankName = bankName;
    // }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
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

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getBindMobile() {
        return bindMobile;
    }

    public void setBindMobile(String bindMobile) {
        this.bindMobile = bindMobile;
    }
}
