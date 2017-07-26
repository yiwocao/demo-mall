package com.xnjr.mall.domain;

import java.util.Date;
import java.util.List;

import com.xnjr.mall.dao.base.ABaseDO;

public class Store extends ABaseDO {
    /** 
     * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
     */
    private static final long serialVersionUID = 1L;

    // 编号
    private String code;

    // 名称
    private String name;

    // 等级
    private String level;

    // 类型
    private String type;
    
    //分类
    private String category ;

    // 广告语
    private String slogan;

    // 店铺缩略图
    private String advPic;

    // 店铺图片
    private String pic;

    // 描述
    private String description;

    // 省份
    private String province;

    // 城市
    private String city;

    // 区
    private String area;

    // 详细地址
    private String address;

    // 经度
    private String longitude;

    // 纬度
    private String latitude;

    // 预定电话
    private String bookMobile;

    // 接收短信手机号
    private String smsMobile;

    // pdf
    private String pdf;

    // UI位置
    private String uiLocation;

    // UI序号
    private String uiOrder;

    // 法人姓名
    private String legalPersonName;

    // 店铺推荐人
    private String userReferee;

    // 费率1 使用折扣券分成比例
    private Double rate1;

    // 费率2 不使用折扣券分成比例
    private Double rate2;

    // 费率3 返点比例
    private Double rate3;

    // 是否默认
    private String isDefault;

    // 状态
    private String status;

    // 更新人
    private String updater;

    // 更新时间
    private Date updateDatetime;

    // 备注
    private String remark;

    // 店铺主人
    private String owner;

    // 合同编号
    private String contractNo;

    // 总的积分数
    private int totalRmbNum;

    // 总的积分数
    private int totalJfNum;

    // 总的点赞数
    private int totalDzNum;

    // 总的点赞数
    private int totalScNum;

    // 所属公司编号
    private String companyCode;

    // 所属系统编号
    private String systemCode;

    // ************db properites***********
    // 登录名
    private String loginName;

    // B端登录用户手机号
    private String mobile;

    // 店铺推荐人手机号
    private String refereeMobile;

    // 当前用户
    private String fromUser;

    // 当前用户是否对该商家点赞
    private Boolean isDZ;

    // 可使用折扣券列表
    private List<StoreTicket> storeTickets;

    // 用户经度（选填）
    private String userLongitude;

    // 用户纬度（选填）
    private String userLatitude;

    // 距离
    private String distance;

    // 省份
    private String provinceForQuery;

    // 城市
    private String cityForQuery;

    // 区
    private String areaForQuery;

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
    
    

    public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSlogan() {
        return slogan;
    }

    public void setSlogan(String slogan) {
        this.slogan = slogan;
    }

    public String getAdvPic() {
        return advPic;
    }

    public void setAdvPic(String advPic) {
        this.advPic = advPic;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getBookMobile() {
        return bookMobile;
    }

    public void setBookMobile(String bookMobile) {
        this.bookMobile = bookMobile;
    }

    public String getSmsMobile() {
        return smsMobile;
    }

    public void setSmsMobile(String smsMobile) {
        this.smsMobile = smsMobile;
    }

    public String getPdf() {
        return pdf;
    }

    public void setPdf(String pdf) {
        this.pdf = pdf;
    }

    public String getUiLocation() {
        return uiLocation;
    }

    public void setUiLocation(String uiLocation) {
        this.uiLocation = uiLocation;
    }

    public String getUiOrder() {
        return uiOrder;
    }

    public void setUiOrder(String uiOrder) {
        this.uiOrder = uiOrder;
    }

    public String getLegalPersonName() {
        return legalPersonName;
    }

    public void setLegalPersonName(String legalPersonName) {
        this.legalPersonName = legalPersonName;
    }

    public String getUserReferee() {
        return userReferee;
    }

    public void setUserReferee(String userReferee) {
        this.userReferee = userReferee;
    }

    public Double getRate1() {
        return rate1;
    }

    public void setRate1(Double rate1) {
        this.rate1 = rate1;
    }

    public Double getRate2() {
        return rate2;
    }

    public void setRate2(Double rate2) {
        this.rate2 = rate2;
    }

    public Double getRate3() {
        return rate3;
    }

    public void setRate3(Double rate3) {
        this.rate3 = rate3;
    }

    public String getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(String isDefault) {
        this.isDefault = isDefault;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }

    public Date getUpdateDatetime() {
        return updateDatetime;
    }

    public void setUpdateDatetime(Date updateDatetime) {
        this.updateDatetime = updateDatetime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getContractNo() {
        return contractNo;
    }

    public void setContractNo(String contractNo) {
        this.contractNo = contractNo;
    }

    public int getTotalRmbNum() {
        return totalRmbNum;
    }

    public void setTotalRmbNum(int totalRmbNum) {
        this.totalRmbNum = totalRmbNum;
    }

    public int getTotalJfNum() {
        return totalJfNum;
    }

    public void setTotalJfNum(int totalJfNum) {
        this.totalJfNum = totalJfNum;
    }

    public int getTotalDzNum() {
        return totalDzNum;
    }

    public void setTotalDzNum(int totalDzNum) {
        this.totalDzNum = totalDzNum;
    }

    public int getTotalScNum() {
        return totalScNum;
    }

    public void setTotalScNum(int totalScNum) {
        this.totalScNum = totalScNum;
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

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Boolean getIsDZ() {
        return isDZ;
    }

    public void setIsDZ(Boolean isDZ) {
        this.isDZ = isDZ;
    }

    public List<StoreTicket> getStoreTickets() {
        return storeTickets;
    }

    public void setStoreTickets(List<StoreTicket> storeTickets) {
        this.storeTickets = storeTickets;
    }

    public String getUserLongitude() {
        return userLongitude;
    }

    public void setUserLongitude(String userLongitude) {
        this.userLongitude = userLongitude;
    }

    public String getUserLatitude() {
        return userLatitude;
    }

    public void setUserLatitude(String userLatitude) {
        this.userLatitude = userLatitude;
    }

    public String getDistance() {
        return distance;
    }

    public void setDistance(String distance) {
        this.distance = distance;
    }

    public String getProvinceForQuery() {
        return provinceForQuery;
    }

    public void setProvinceForQuery(String provinceForQuery) {
        this.provinceForQuery = provinceForQuery;
    }

    public String getCityForQuery() {
        return cityForQuery;
    }

    public void setCityForQuery(String cityForQuery) {
        this.cityForQuery = cityForQuery;
    }

    public String getAreaForQuery() {
        return areaForQuery;
    }

    public void setAreaForQuery(String areaForQuery) {
        this.areaForQuery = areaForQuery;
    }

    public String getFromUser() {
        return fromUser;
    }

    public void setFromUser(String fromUser) {
        this.fromUser = fromUser;
    }

    public String getRefereeMobile() {
        return refereeMobile;
    }

    public void setRefereeMobile(String refereeMobile) {
        this.refereeMobile = refereeMobile;
    }

}
