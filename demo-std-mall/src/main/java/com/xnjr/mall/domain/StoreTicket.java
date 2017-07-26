package com.xnjr.mall.domain;

import java.util.Date;

import com.xnjr.mall.dao.base.ABaseDO;

/**
* 店铺折扣券
* @author: xieyj 
* @since: 2016年12月18日 16:18:14
* @history:
*/
public class StoreTicket extends ABaseDO {

    private static final long serialVersionUID = 1L;

    // 编号
    private String code;

    // 名称
    private String name;

    // 类型(1 满减 2 返现)
    private String type;

    // key1(条件，满100)返现为空
    private Long key1;

    // key2(减少10，返现10)
    private Long key2;

    // 使用详情
    private String description;

    // 销售价格
    private Long price;

    // 价格币种
    private String currency;

    // 有效期起
    private Date validateStart;

    // 有效期止
    private Date validateEnd;

    // 创建时间
    private Date createDatetime;

    // 状态（待上架，已上架，已下架，期满作废）
    private String status;

    // 所属商家编号
    private String storeCode;

    // 所属公司编号
    private String companyCode;

    // 所属系统编号
    private String systemCode;

    // ***************db properties****************
    // 传入的查询用户是否已购买该折扣卷
    private String isBuy;

    // 有效期止开始时间
    private Date validateEndStart;

    // 有效期止结束时间
    private Date validateEndEnd;

    // 所属商家
    private Store store;

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

    public Long getKey1() {
        return key1;
    }

    public void setKey1(Long key1) {
        this.key1 = key1;
    }

    public Long getKey2() {
        return key2;
    }

    public void setKey2(Long key2) {
        this.key2 = key2;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public Date getValidateStart() {
        return validateStart;
    }

    public void setValidateStart(Date validateStart) {
        this.validateStart = validateStart;
    }

    public Date getValidateEnd() {
        return validateEnd;
    }

    public void setValidateEnd(Date validateEnd) {
        this.validateEnd = validateEnd;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStoreCode() {
        return storeCode;
    }

    public void setStoreCode(String storeCode) {
        this.storeCode = storeCode;
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

    public String getIsBuy() {
        return isBuy;
    }

    public void setIsBuy(String isBuy) {
        this.isBuy = isBuy;
    }

    public Date getValidateEndStart() {
        return validateEndStart;
    }

    public void setValidateEndStart(Date validateEndStart) {
        this.validateEndStart = validateEndStart;
    }

    public Date getValidateEndEnd() {
        return validateEndEnd;
    }

    public void setValidateEndEnd(Date validateEndEnd) {
        this.validateEndEnd = validateEndEnd;
    }

    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

}
