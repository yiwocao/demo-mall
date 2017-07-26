package com.xnjr.mall.dto.req;

public class XN808501Req {
    // 编号（必填）
    private String code;

    // 1个三方币兑换rate个菜狗币（必填）
    private String rate;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

}
