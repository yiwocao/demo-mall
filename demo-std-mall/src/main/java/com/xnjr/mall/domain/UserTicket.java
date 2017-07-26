package com.xnjr.mall.domain;

import java.util.Date;

import com.xnjr.mall.dao.base.ABaseDO;

/**
* 用户折扣券
* @author: xieyj 
* @since: 2016年12月18日 16:35:10
* @history:
*/
public class UserTicket extends ABaseDO {

    private static final long serialVersionUID = 1L;

    // 编号
    private String code;

    // 用户编号
    private String userId;

    // 折扣券编号
    private String ticketCode;

    // 折扣券所属商家编号
    private String storeCode;

    // 购买时间
    private Date createDatetime;

    // 状态
    private String status;

    // 所属公司编号
    private String companyCode;

    // 所属系统编号
    private String systemCode;

    // *************db properties************

    // 店铺折扣券
    private StoreTicket storeTicket;

    // 所属商家
    private Store store;

    public StoreTicket getStoreTicket() {
        return storeTicket;
    }

    public void setStoreTicket(StoreTicket storeTicket) {
        this.storeTicket = storeTicket;
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

    public String getTicketCode() {
        return ticketCode;
    }

    public void setTicketCode(String ticketCode) {
        this.ticketCode = ticketCode;
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

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getStoreCode() {
        return storeCode;
    }

    public void setStoreCode(String storeCode) {
        this.storeCode = storeCode;
    }

    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

}
