/**
 * @Title Invoice.java 
 * @Package com.xnjr.mall.domain 
 * @Description 
 * @author xieyj  
 * @date 2016年5月23日 下午7:32:38 
 * @version V1.0   
 */
package com.xnjr.mall.domain;

import java.util.Date;
import java.util.List;

import com.xnjr.mall.dao.base.ABaseDO;

/**
 * @author: haiqingzheng 
 * @since: 2016年11月16日 上午11:16:07 
 * @history:
 */
public class Order extends ABaseDO {
    /** 
     * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
     */
    private static final long serialVersionUID = -6380104639754144884L;

    // 编号
    private String code;

    // 类型
    private String type;

    // 向谁提货
    private String toUser;
    
    //商店编号
    private String storeCode;

    // 收件人姓名
    private String receiver;

    // 收件人电话
    private String reMobile;

    // 收货地址
    private String reAddress;

    // 发票类型(1 个人，2 企业)
    private String receiptType;

    // 发票抬头
    private String receiptTitle;

    // 下单人
    private String applyUser;

    // 申请备注
    private String applyNote;

    // 申请时间
    private Date applyDatetime;

    // 订单金额(人民币)
    private Long amount1;

    // 订单金额
    private Long amount2;

    // 订单金额
    private Long amount3;

    // 运费
    private Long yunfei;

    // 状态
    private String status;

    private String payGroup;

    private String payCode;

    // 实际支付时间
    private Date payDatetime;

    // 实际支付金额1
    private Long payAmount1;

    // 实际支付金额1_1（正汇系统用来记录贡献值）
    private Long payAmount11;

    // 实际支付金额2
    private Long payAmount2;

    // 实际支付金额3
    private Long payAmount3;

    // 催货次数
    private Integer promptTimes;

    // 发货人
    private String deliverer;

    // 发货时间
    private Date deliveryDatetime;

    // 物流单号
    private String logisticsCode;

    // 物流公司
    private String logisticsCompany;

    // 物流单
    private String pdf;

    // 更新人
    private String updater;

    // 更新时间
    private Date updateDatetime;

    // 备注
    private String remark;

    // 所属公司编号
    private String companyCode;

    // 所属系统编号
    private String systemCode;

    // *************dp properties **************

    // 申请开始时间起
    private Date applyDatetimeStart;

    // 申请开始时间止
    private Date applyDatetimeEnd;

    // 订单产品详情列表
    List<ProductOrder> productOrderList;

    // 下单人
    private User user;

    // 商户用户信息
    private User companyUser;

    // 订单所属商户
    private Store store;

    // 状态list
    private List<String> statusList;

    public User getCompanyUser() {
        return companyUser;
    }

    public void setCompanyUser(User companyUser) {
        this.companyUser = companyUser;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getToUser() {
        return toUser;
    }

    public void setToUser(String toUser) {
        this.toUser = toUser;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getReMobile() {
        return reMobile;
    }

    public void setReMobile(String reMobile) {
        this.reMobile = reMobile;
    }

    public String getReAddress() {
        return reAddress;
    }

    public void setReAddress(String reAddress) {
        this.reAddress = reAddress;
    }

    public String getReceiptType() {
        return receiptType;
    }

    public void setReceiptType(String receiptType) {
        this.receiptType = receiptType;
    }

    public String getReceiptTitle() {
        return receiptTitle;
    }

    public void setReceiptTitle(String receiptTitle) {
        this.receiptTitle = receiptTitle;
    }

    public String getApplyUser() {
        return applyUser;
    }

    public void setApplyUser(String applyUser) {
        this.applyUser = applyUser;
    }

    public String getApplyNote() {
        return applyNote;
    }

    public void setApplyNote(String applyNote) {
        this.applyNote = applyNote;
    }

    public Date getApplyDatetime() {
        return applyDatetime;
    }

    public void setApplyDatetime(Date applyDatetime) {
        this.applyDatetime = applyDatetime;
    }

    public Long getAmount1() {
        return amount1;
    }

    public void setAmount1(Long amount1) {
        this.amount1 = amount1;
    }

    public Long getAmount2() {
        return amount2;
    }

    public void setAmount2(Long amount2) {
        this.amount2 = amount2;
    }

    public Long getAmount3() {
        return amount3;
    }

    public void setAmount3(Long amount3) {
        this.amount3 = amount3;
    }

    public Long getYunfei() {
        return yunfei;
    }

    public void setYunfei(Long yunfei) {
        this.yunfei = yunfei;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public Date getPayDatetime() {
        return payDatetime;
    }

    public void setPayDatetime(Date payDatetime) {
        this.payDatetime = payDatetime;
    }

    public Long getPayAmount1() {
        return payAmount1;
    }

    public void setPayAmount1(Long payAmount1) {
        this.payAmount1 = payAmount1;
    }

    public Long getPayAmount11() {
        return payAmount11;
    }

    public void setPayAmount11(Long payAmount11) {
        this.payAmount11 = payAmount11;
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

    public Integer getPromptTimes() {
        return promptTimes;
    }

    public void setPromptTimes(Integer promptTimes) {
        this.promptTimes = promptTimes;
    }

    public String getDeliverer() {
        return deliverer;
    }

    public void setDeliverer(String deliverer) {
        this.deliverer = deliverer;
    }

    public Date getDeliveryDatetime() {
        return deliveryDatetime;
    }

    public void setDeliveryDatetime(Date deliveryDatetime) {
        this.deliveryDatetime = deliveryDatetime;
    }

    public String getLogisticsCode() {
        return logisticsCode;
    }

    public void setLogisticsCode(String logisticsCode) {
        this.logisticsCode = logisticsCode;
    }

    public String getLogisticsCompany() {
        return logisticsCompany;
    }

    public void setLogisticsCompany(String logisticsCompany) {
        this.logisticsCompany = logisticsCompany;
    }

    public String getPdf() {
        return pdf;
    }

    public void setPdf(String pdf) {
        this.pdf = pdf;
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

    public Date getApplyDatetimeStart() {
        return applyDatetimeStart;
    }

    public void setApplyDatetimeStart(Date applyDatetimeStart) {
        this.applyDatetimeStart = applyDatetimeStart;
    }

    public Date getApplyDatetimeEnd() {
        return applyDatetimeEnd;
    }

    public void setApplyDatetimeEnd(Date applyDatetimeEnd) {
        this.applyDatetimeEnd = applyDatetimeEnd;
    }

    public List<ProductOrder> getProductOrderList() {
        return productOrderList;
    }

    public void setProductOrderList(List<ProductOrder> productOrderList) {
        this.productOrderList = productOrderList;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public List<String> getStatusList() {
        return statusList;
    }

    public void setStatusList(List<String> statusList) {
        this.statusList = statusList;
    }

    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

	public String getStoreCode() {
		return storeCode;
	}

	public void setStoreCode(String storeCode) {
		this.storeCode = storeCode;
	}
    
    

}
