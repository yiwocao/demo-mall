package com.xnjr.mall.dto.req;

public class XN808030Req {

    // 产品名称(必填)
    private String productCode;

    // key（(必填)
    private String dkey;

    // value(必填)
    private String dvalue;

    // 相对位置编号(必填)
    private String orderNo;

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getDkey() {
        return dkey;
    }

    public void setDkey(String dkey) {
        this.dkey = dkey;
    }

    public String getDvalue() {
        return dvalue;
    }

    public void setDvalue(String dvalue) {
        this.dvalue = dvalue;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

}
