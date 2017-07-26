package com.xnjr.mall.dto.req;

public class XN808217Req extends APageReq {
    /** 
     * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
     */
    private static final long serialVersionUID = 1526230923461236694L;

    // 当前用户（选填）
    private String userId;

    // 名称（选填）
    private String name;

    // 等级（选填）
    private String level;

    // 类型（选填）
    private String type;
    
    private String isDefault ;

    // 省（选填）
    private String province;

    // 市（选填）
    private String city;

    // 区（选填）
    private String area;

    // 用户经度（选填）
    private String longitude;

    // 用户纬度（选填）
    private String latitude;

    // UI位置（选填）
    private String uiLocation;

    // 是否默认（选填）
    // private String isDefault;

    // 所属公司编号（必填）
    private String companyCode;

    // 所属系统编号（必填）
    private String systemCode;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }
    
    

    public String getIsDefault() {
		return isDefault;
	}

	public void setIsDefault(String isDefault) {
		this.isDefault = isDefault;
	}

	public String getUiLocation() {
        return uiLocation;
    }

    public void setUiLocation(String uiLocation) {
        this.uiLocation = uiLocation;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

}
