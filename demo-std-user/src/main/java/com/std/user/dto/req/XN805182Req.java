package com.std.user.dto.req;

public class XN805182Req {
    // 用户编号（必填）
    private String userId;

    // 手机号(必填)
    private String mobile;

    // 证件类型（选填）
    private String idKind;

    // 证件号码（选填）
    private String idNo;

    // 真实姓名（选填）
    private String realName;

    // 分成比例（选填）
    private String divRate;

    // 更新人(必填)
    private String updater;

    // 推荐人(必填)
    private String userReferee;

    // 备注(选填)
    private String remark;

    // 省(必填)
    private String province;

    // 市区（选填）
    private String city;

    // 区(县)（选填）
    private String area;

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

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

    public String getDivRate() {
        return divRate;
    }

    public void setDivRate(String divRate) {
        this.divRate = divRate;
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

    public String getUserReferee() {
        return userReferee;
    }

    public void setUserReferee(String userReferee) {
        this.userReferee = userReferee;
    }
}
