package com.std.user.domain;

import java.util.Date;

import com.std.user.dao.base.ABaseDO;

public class URead extends ABaseDO {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String smsCode;

    private String userId;

    private String status;

    private Date readDatetime;

    private B2cSms b2cSms;

    /*************db proprietary**************/

    private Date readDatetimeStart;

    private Date readDatetimeEnd;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSmsCode() {
        return smsCode;
    }

    public void setSmsCode(String smsCode) {
        this.smsCode = smsCode;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getReadDatetime() {
        return readDatetime;
    }

    public void setReadDatetime(Date readDatetime) {
        this.readDatetime = readDatetime;
    }

    public B2cSms getB2cSms() {
        return b2cSms;
    }

    public void setB2cSms(B2cSms b2cSms) {
        this.b2cSms = b2cSms;
    }

    public Date getReadDatetimeStart() {
        return readDatetimeStart;
    }

    public void setReadDatetimeStart(Date readDatetimeStart) {
        this.readDatetimeStart = readDatetimeStart;
    }

    public Date getReadDatetimeEnd() {
        return readDatetimeEnd;
    }

    public void setReadDatetimeEnd(Date readDatetimeEnd) {
        this.readDatetimeEnd = readDatetimeEnd;
    }
}
