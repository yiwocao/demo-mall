package com.std.user.dto.req;

public class XN806006Req {

    // 公司编号（必填）
    private String code;

    // 是否热门（必填）
    private String isHot;

    // 序号（选填）
    private String orderNo;

    // 处理人（必填）
    private String updater;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getIsHot() {
        return isHot;
    }

    public void setIsHot(String isHot) {
        this.isHot = isHot;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }
}
