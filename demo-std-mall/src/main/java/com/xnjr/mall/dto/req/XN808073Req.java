package com.xnjr.mall.dto.req;

public class XN808073Req extends APageReq{
  private static final long serialVersionUID = 1L;

    // 名称
    private String name;

    // 属于
    private String belong;

    // ui位置
    private String location;

    // 公司编号
    private String companyCode;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBelong() {
        return belong;
    }

    public void setBelong(String belong) {
        this.belong = belong;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

}
