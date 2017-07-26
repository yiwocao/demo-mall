package com.std.user.dto.req;

public class XN001403Req {
    // 省(选填)
    private String province;

    // 市(选填)
    private String city;

    // 县(选填)
    private String area;

    // kind(选填)
    private String kind;

    // 推荐人(选填)
    private String userReferee;

    // 系统编号(选填)
    private String systemCode;

    public String getUserReferee() {
        return userReferee;
    }

    public void setUserReferee(String userReferee) {
        this.userReferee = userReferee;
    }

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }
}
