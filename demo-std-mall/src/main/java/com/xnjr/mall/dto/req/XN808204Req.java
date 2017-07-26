package com.xnjr.mall.dto.req;

public class XN808204Req {
    // 商家编号(必填)
    private String code;

    // UI位置(必填)
    private String uiLocation;

    // UI序号(必填)
    private String uiOrder;

    // 费率1 使用折扣券分成比例(必填)
    private String rate1;

    // 费率2 不使用折扣券分成比例(必填)
    private String rate2;

    // 费率3 返点比例(必填)
    private String rate3;

    // 是否默认(必填)
    private String isDefault;

    // 操作人(必填)
    private String updater;

    // 备注(选填)
    private String remark;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getUiLocation() {
        return uiLocation;
    }

    public void setUiLocation(String uiLocation) {
        this.uiLocation = uiLocation;
    }

    public String getUiOrder() {
        return uiOrder;
    }

    public void setUiOrder(String uiOrder) {
        this.uiOrder = uiOrder;
    }

    public String getRate1() {
        return rate1;
    }

    public void setRate1(String rate1) {
        this.rate1 = rate1;
    }

    public String getRate2() {
        return rate2;
    }

    public void setRate2(String rate2) {
        this.rate2 = rate2;
    }

    public String getRate3() {
        return rate3;
    }

    public void setRate3(String rate3) {
        this.rate3 = rate3;
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

    public String getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(String isDefault) {
        this.isDefault = isDefault;
    }

}
