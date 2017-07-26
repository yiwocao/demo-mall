package com.xnjr.mall.domain;

import java.util.Date;

import com.xnjr.mall.dao.base.ABaseDO;

/**
 * 菜狗池出金记录
 * @author: myb858 
 * @since: 2017年3月28日 下午5:36:10 
 * @history:
 */
public class CaigopoolBack extends ABaseDO {
    /** 
     * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
     */
    private static final long serialVersionUID = -5753460382625950341L;

    // 编号
    private Long id;

    // 哪个池
    private String poolCode;

    // 哪个池
    private String poolName;

    // 三方系统的金额
    private Long fromAmount;

    // 三方系统的币种
    private String fromCurrency;

    // 三方系统的用户（手机号）
    private String fromUser;

    // 我方系统的金额
    private Long toAmount;

    // 我方系统的币种
    private String toCurrency;

    // 我方系统的用户编号
    private String toUser;

    // 返还时间
    private Date createDatetime;

    // 所属公司编号
    private String companyCode;

    // 所属系统编号
    private String systemCode;

    // **************************************

    // 返还时间起
    private Date createDatetimeStart;

    // 返还时间止
    private Date createDatetimeEnd;

    // ***************分页返回,字段无法处理，只能放在pojo里面分装***************
    // 手机号
    private String mobile;

    // 嗨币金额
    private Long highAmount;

    // 菜狗币金额
    private Long cgbAmount;

    // ***************分页返回,字段无法处理，只能放在pojo里面分装***************

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Long getHighAmount() {
        return highAmount;
    }

    public void setHighAmount(Long highAmount) {
        this.highAmount = highAmount;
    }

    public Long getCgbAmount() {
        return cgbAmount;
    }

    public void setCgbAmount(Long cgbAmount) {
        this.cgbAmount = cgbAmount;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPoolCode() {
        return poolCode;
    }

    public void setPoolCode(String poolCode) {
        this.poolCode = poolCode;
    }

    public String getPoolName() {
        return poolName;
    }

    public void setPoolName(String poolName) {
        this.poolName = poolName;
    }

    public Long getFromAmount() {
        return fromAmount;
    }

    public void setFromAmount(Long fromAmount) {
        this.fromAmount = fromAmount;
    }

    public String getFromCurrency() {
        return fromCurrency;
    }

    public void setFromCurrency(String fromCurrency) {
        this.fromCurrency = fromCurrency;
    }

    public String getFromUser() {
        return fromUser;
    }

    public void setFromUser(String fromUser) {
        this.fromUser = fromUser;
    }

    public Long getToAmount() {
        return toAmount;
    }

    public void setToAmount(Long toAmount) {
        this.toAmount = toAmount;
    }

    public String getToCurrency() {
        return toCurrency;
    }

    public void setToCurrency(String toCurrency) {
        this.toCurrency = toCurrency;
    }

    public String getToUser() {
        return toUser;
    }

    public void setToUser(String toUser) {
        this.toUser = toUser;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
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

    public Date getCreateDatetimeStart() {
        return createDatetimeStart;
    }

    public void setCreateDatetimeStart(Date createDatetimeStart) {
        this.createDatetimeStart = createDatetimeStart;
    }

    public Date getCreateDatetimeEnd() {
        return createDatetimeEnd;
    }

    public void setCreateDatetimeEnd(Date createDatetimeEnd) {
        this.createDatetimeEnd = createDatetimeEnd;
    }

}
