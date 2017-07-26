package com.xnjr.mall.dto.req;

public class XN808061Req {
	
	 // 订单编号
    public String orderCode;

    // 支付方式
    public String payType;

    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
    }

    public String getPayType() {
        return payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

}
