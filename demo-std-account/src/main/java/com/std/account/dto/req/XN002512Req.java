package com.std.account.dto.req;


public class XN002512Req {
	private static final long serialVersionUID = -8441077820529066204L;

	
	private String fromAccountNo ;
	private String toAccountNo;
	private String transAmount ;
	private String channelType ;
	
	private String bizType ;
	private String bizNote ;
	private String payGroup ;
	
	
	public String getPayGroup() {
		return payGroup;
	}
	public void setPayGroup(String payGroup) {
		this.payGroup = payGroup;
	}
	public String getFromAccountNo() {
		return fromAccountNo;
	}
	public void setFromAccountNo(String fromAccountNo) {
		this.fromAccountNo = fromAccountNo;
	}
	public String getToAccountNo() {
		return toAccountNo;
	}
	public void setToAccountNo(String toAccountNo) {
		this.toAccountNo = toAccountNo;
	}
	public String getTransAmount() {
		return transAmount;
	}
	public void setTransAmount(String transAmount) {
		this.transAmount = transAmount;
	}
	public String getChannelType() {
		return channelType;
	}
	public void setChannelType(String channelType) {
		this.channelType = channelType;
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
	
	
	
	
	

}
