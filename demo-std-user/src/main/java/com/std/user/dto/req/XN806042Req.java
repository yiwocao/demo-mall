package com.std.user.dto.req;

public class XN806042Req {

    // 编号（必填）
    private String code;

    // 名字（必填）
    private String name;

    // 类型（必填）
    private String type;

    // 访问Url（必填）
    private String url;

    // 图片（选填）
    private String pic;

    // 状态（必填）
    private String status;

    // 位置（选填）
    private String location;

    // 相对位置编号（必填）
    private String orderNo;

    // 属于（选填）
    private String belong;

    // 父编号（选填）
    private String parentCode;

    // 内容源类型（选填）
    private String contentType;

    // 公司编号（必填）
    private String companyCode;

    // 备注(选填)
    private String remark;

    // 是否地方修改(必填)
    private String isCompanyEdit;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getBelong() {
        return belong;
    }

    public void setBelong(String belong) {
        this.belong = belong;
    }

    public String getParentCode() {
        return parentCode;
    }

    public void setParentCode(String parentCode) {
        this.parentCode = parentCode;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getIsCompanyEdit() {
        return isCompanyEdit;
    }

    public void setIsCompanyEdit(String isCompanyEdit) {
        this.isCompanyEdit = isCompanyEdit;
    }
}
