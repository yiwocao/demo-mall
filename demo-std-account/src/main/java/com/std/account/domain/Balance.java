package com.std.account.domain;

import java.util.Date;

import com.std.account.dao.base.ABaseDO;

public class Balance extends ABaseDO{

	private static final long serialVersionUID = 8322573358554172531L;
	//编号
	private String code ;
	
	// 账户编号
	private String accountNumber;

	// 用户编号
	private String userId;

	private String bizType;

	private String bizNote;

	// 
	private String transAmount;

	// 余额
	private Long amount;

	// 创建时间
	private Date createDatetime;

	
	// 系统编号
	private String systemCode;


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public String getAccountNumber() {
		return accountNumber;
	}


	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getBizType() {
		return bizType;
	}


	public void setBizType(String bizType) {
		this.bizType = bizType;
	}


	public String getBizNote() {
		return bizNote;
	}


	public void setBizNote(String bizNote) {
		this.bizNote = bizNote;
	}


	public String getTransAmount() {
		return transAmount;
	}


	public void setTransAmount(String transAmount) {
		this.transAmount = transAmount;
	}


	public Long getAmount() {
		return amount;
	}


	public void setAmount(Long amount) {
		this.amount = amount;
	}


	public Date getCreateDatetime() {
		return createDatetime;
	}


	public void setCreateDatetime(Date createDatetime) {
		this.createDatetime = createDatetime;
	}


	public String getSystemCode() {
		return systemCode;
	}


	public void setSystemCode(String systemCode) {
		this.systemCode = systemCode;
	}


	

}
