package com.xnjr.mall.domain;

import java.util.Date;

import com.xnjr.mall.dao.base.ABaseDO;

/**
* 店铺买单
* @author: xieyj 
* @since: 2016年12月19日 00:42:58
* @history:
*/
public class StorePurchase extends ABaseDO {

    private static final long serialVersionUID = 1L;

    // 编号
    private String code;

    // 用户编号
    private String userId;

    // 商户编号
    private String storeCode;

    // 折扣券编号
    private String ticketCode;

    // 服务总价
    private Long price;

    // 返现金额
    private Long backAmount;

    // 返现币种
    private String backCurrency;

    // 消费时间
    private Date createDatetime;

    // 状态
    private String status;

    // 支付方式
    private String payType;

    // 支付组号
    private String payGroup;

    // 支付编号
    private String payCode;

    // 人民币消费金额
    private Long payAmount1;

    // 虚拟币1消费金额
    private Long payAmount2;

    // 虚拟币2消费金额
    private Long payAmount3;

    // 实际支付时间
    private Date payDatetime;

    // 备注
    private String remark;

    // 所属公司编号
    private String companyCode;

    // 所属系统编号
    private String systemCode;

    // *************db properties****************
    private Store store;

    private StoreTicket storeTicket;

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public String getStoreCode() {
        return storeCode;
    }

    public void setStoreCode(String storeCode) {
        this.storeCode = storeCode;
    }

    public String getTicketCode() {
        return ticketCode;
    }

    public void setTicketCode(String ticketCode) {
        this.ticketCode = ticketCode;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getBackAmount() {
        return backAmount;
    }

    public void setBackAmount(Long backAmount) {
        this.backAmount = backAmount;
    }

    public String getBackCurrency() {
        return backCurrency;
    }

    public void setBackCurrency(String backCurrency) {
        this.backCurrency = backCurrency;
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

    public String getPayType() {
        return payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

    public String getPayGroup() {
        return payGroup;
    }

    public void setPayGroup(String payGroup) {
        this.payGroup = payGroup;
    }

    public String getPayCode() {
        return payCode;
    }

    public void setPayCode(String payCode) {
        this.payCode = payCode;
    }

    public Long getPayAmount1() {
        return payAmount1;
    }

    public void setPayAmount1(Long payAmount1) {
        this.payAmount1 = payAmount1;
    }

    public Long getPayAmount2() {
        return payAmount2;
    }

    public void setPayAmount2(Long payAmount2) {
        this.payAmount2 = payAmount2;
    }

    public Long getPayAmount3() {
        return payAmount3;
    }

    public void setPayAmount3(Long payAmount3) {
        this.payAmount3 = payAmount3;
    }

    public Date getPayDatetime() {
        return payDatetime;
    }

    public void setPayDatetime(Date payDatetime) {
        this.payDatetime = payDatetime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
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

    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

    public StoreTicket getStoreTicket() {
        return storeTicket;
    }

    public void setStoreTicket(StoreTicket storeTicket) {
        this.storeTicket = storeTicket;
    }

}
