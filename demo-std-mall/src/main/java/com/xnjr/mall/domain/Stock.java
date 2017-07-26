package com.xnjr.mall.domain;

import java.util.Date;

import com.xnjr.mall.dao.base.ABaseDO;

/**
 * 股份（分红权）
 * @author: myb858 
 * @since: 2017年3月27日 下午4:48:18 
 * @history:
 */
public class Stock extends ABaseDO {

    private static final long serialVersionUID = 1L;

    // 编号
    private String code;

    // 拥有者
    private String userId;

    // 从哪个基金中拿的钱
    private String fundCode;

    // 成本金额
    private Long costAmount;

    // 成本币种
    private String costCurrency;

    // 返利间隔(单位天)
    private Integer backInterval;

    // 收益金额
    private Long profitAmount;

    // 收益币种
    private String profitCurrency;

    // 已返还次数
    private Integer backCount;

    // 已返还福利
    private Long backAmount;

    // 今日可得福利
    private Long todayAmount;

    // 下次返还时间
    private Date nextBackDate;

    // 生成时间
    private Date createDatetime;

    // 状态
    private String status;

    // 所属公司编号
    private String companyCode;

    // 所属系统编号
    private String systemCode;

    // *********************************
    // 下次返还时间起
    private Date nextBackDateStart;

    // 下次返还时间止
    private Date nextBackDateEnd;

    // 排除的状态，供查询
    private String noStatus;

    public Date getNextBackDateStart() {
        return nextBackDateStart;
    }

    public void setNextBackDateStart(Date nextBackDateStart) {
        this.nextBackDateStart = nextBackDateStart;
    }

    public Date getNextBackDateEnd() {
        return nextBackDateEnd;
    }

    public void setNextBackDateEnd(Date nextBackDateEnd) {
        this.nextBackDateEnd = nextBackDateEnd;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Long getCostAmount() {
        return costAmount;
    }

    public void setCostAmount(Long costAmount) {
        this.costAmount = costAmount;
    }

    public String getCostCurrency() {
        return costCurrency;
    }

    public void setCostCurrency(String costCurrency) {
        this.costCurrency = costCurrency;
    }

    public Long getProfitAmount() {
        return profitAmount;
    }

    public void setProfitAmount(Long profitAmount) {
        this.profitAmount = profitAmount;
    }

    public String getProfitCurrency() {
        return profitCurrency;
    }

    public void setProfitCurrency(String profitCurrency) {
        this.profitCurrency = profitCurrency;
    }

    public Integer getBackCount() {
        return backCount;
    }

    public void setBackCount(Integer backCount) {
        this.backCount = backCount;
    }

    public Long getBackAmount() {
        return backAmount;
    }

    public void setBackAmount(Long backAmount) {
        this.backAmount = backAmount;
    }

    public Long getTodayAmount() {
        return todayAmount;
    }

    public void setTodayAmount(Long todayAmount) {
        this.todayAmount = todayAmount;
    }

    public Date getNextBackDate() {
        return nextBackDate;
    }

    public void setNextBackDate(Date nextBackDate) {
        this.nextBackDate = nextBackDate;
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

    public Integer getBackInterval() {
        return backInterval;
    }

    public void setBackInterval(Integer backInterval) {
        this.backInterval = backInterval;
    }

    public String getFundCode() {
        return fundCode;
    }

    public void setFundCode(String fundCode) {
        this.fundCode = fundCode;
    }

    public String getNoStatus() {
        return noStatus;
    }

    public void setNoStatus(String noStatus) {
        this.noStatus = noStatus;
    }

}
