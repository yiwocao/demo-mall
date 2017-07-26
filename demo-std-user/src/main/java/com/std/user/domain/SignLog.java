/**
 * @Title SignLog.java 
 * @Package com.std.user.domain 
 * @Description 
 * @author xieyj  
 * @date 2016年8月31日 上午9:37:56 
 * @version V1.0   
 */
package com.std.user.domain;

import java.util.Date;

import com.std.user.dao.base.ABaseDO;

/**
 * 签到 
 * @author: xieyj 
 * @since: 2016年8月31日 上午9:37:56 
 * @history:
 */
public class SignLog extends ABaseDO {
    /** 
     * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
     */
    private static final long serialVersionUID = 1L;

    // 编号
    private String code;

    // 用户编号
    private String userId;

    // 位置
    private String location;

    // 签到时间
    private Date signDatetime;

    // *************dp properties **************

    // 申请开始时间起
    private Date signDatetimeStart;

    // 申请开始时间止
    private Date signDatetimeEnd;

    // 系统编号
    private String systemCode;

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getSignDatetime() {
        return signDatetime;
    }

    public void setSignDatetime(Date signDatetime) {
        this.signDatetime = signDatetime;
    }

    public Date getSignDatetimeStart() {
        return signDatetimeStart;
    }

    public void setSignDatetimeStart(Date signDatetimeStart) {
        this.signDatetimeStart = signDatetimeStart;
    }

    public Date getSignDatetimeEnd() {
        return signDatetimeEnd;
    }

    public void setSignDatetimeEnd(Date signDatetimeEnd) {
        this.signDatetimeEnd = signDatetimeEnd;
    }
}
