package com.xnjr.mall.dto.req;

public class XN808002Req {
    // 编号(必填)
    private String code;

    // 类型(必填)
    private String type;

    // 父编号(必填)
    private String parentCode;

    // 分类名称(必填)
    private String name;

    // 分类图片(选填)
    private String pic;

    // 顺序(必填)
    private String orderNo;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getParentCode() {
        return parentCode;
    }

    public void setParentCode(String parentCode) {
        this.parentCode = parentCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

}
