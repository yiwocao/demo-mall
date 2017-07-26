/**
 * @Title XN808222Req.java 
 * @Package com.xnjr.mall.dto.req 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午9:07:05 
 * @version V1.0   
 */
package com.xnjr.mall.dto.req;

/** 
 * 修改折扣券
 * @author: haiqingzheng 
 * @since: 2016年12月18日 下午9:07:05 
 * @history:
 */
public class XN808252Req {

    // 折扣券编号(必填)
    private String code;

    // 折扣券名称(必填)
    private String name;

    // 类型(1 满减 2 返现)(必填)
    private String type;

    // key1(选填)
    private String key1;

    // key2(选填)
    private String key2;

    // 使用详情(必填)
    private String description;

    // 销售价格(必填)
    private String price;

    // 币种(必填)
    private String currency;

    // 有效期起(必填)
    private String validateStart;

    // 有效期止(必填)
    private String validateEnd;

    // 商家编号(必填)
    private String storeCode;

    // 是否上架（0 不上架 1 上架）(必填)
    private String isPutaway;

    // 所属公司编号(必填)
    private String companyCode;

    // 系统编号(必填)
    private String systemCode;

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

    public String getKey1() {
        return key1;
    }

    public void setKey1(String key1) {
        this.key1 = key1;
    }

    public String getKey2() {
        return key2;
    }

    public void setKey2(String key2) {
        this.key2 = key2;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getValidateStart() {
        return validateStart;
    }

    public void setValidateStart(String validateStart) {
        this.validateStart = validateStart;
    }

    public String getValidateEnd() {
        return validateEnd;
    }

    public void setValidateEnd(String validateEnd) {
        this.validateEnd = validateEnd;
    }

    public String getStoreCode() {
        return storeCode;
    }

    public void setStoreCode(String storeCode) {
        this.storeCode = storeCode;
    }

    public String getIsPutaway() {
        return isPutaway;
    }

    public void setIsPutaway(String isPutaway) {
        this.isPutaway = isPutaway;
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
