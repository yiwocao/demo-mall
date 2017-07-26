package com.std.user.domain;

import java.util.Date;

import com.std.user.dao.base.ABaseDO;

/**
* 卡券
* @author: xieyj 
* @since: 2016年11月24日 14:11:53
* @history:
*/
public class Coupon extends ABaseDO {

    private static final long serialVersionUID = 1L;

    // 编号
    private String code;

    // 积分面值
    private Long amount;

    // 人民币价格
    private Long cnyPrice;

    // 使用次数
    private Integer useTimes;

    // 样式
    private String style;

    // 状态(0 待使用 1 已使用 2已作废)
    private String status;

    // 创建人
    private String creator;

    // 创建时间
    private Date createDatetime;

    // 扫描人
    private String scanner;

    // 扫描时间
    private Date scanDatetime;

    // 公司编号
    private String companyCode;

    // 系统编号(必填)
    private String systemCode;

    // ****************db properties***********
    private String creatorName;

    private String scannerMobile;

    // 域名
    private String domain;

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

    public String getCreatorName() {
        return creatorName;
    }

    public void setCreatorName(String creatorName) {
        this.creatorName = creatorName;
    }

    public String getScannerMobile() {
        return scannerMobile;
    }

    public void setScannerMobile(String scannerMobile) {
        this.scannerMobile = scannerMobile;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }

    public Long getCnyPrice() {
        return cnyPrice;
    }

    public void setCnyPrice(Long cnyPrice) {
        this.cnyPrice = cnyPrice;
    }

    public Integer getUseTimes() {
        return useTimes;
    }

    public void setUseTimes(Integer useTimes) {
        this.useTimes = useTimes;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    public String getScanner() {
        return scanner;
    }

    public void setScanner(String scanner) {
        this.scanner = scanner;
    }

    public Date getScanDatetime() {
        return scanDatetime;
    }

    public void setScanDatetime(Date scanDatetime) {
        this.scanDatetime = scanDatetime;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }
}
