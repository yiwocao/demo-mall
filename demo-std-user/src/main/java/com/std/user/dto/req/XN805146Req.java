package com.std.user.dto.req;

public class XN805146Req {

    // 广播编号（必填）
    private String smsCode;

    // 状态（必填）
    private String status;

    // 用户编号（必填）
    private String userId;

    // 阅读时间起
    private String dateStart;

    // 阅读时间止
    private String dateEnd;

    public String getSmsCode() {
        return smsCode;
    }

    public void setSmsCode(String smsCode) {
        this.smsCode = smsCode;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getDateStart() {
        return dateStart;
    }

    public void setDateStart(String dateStart) {
        this.dateStart = dateStart;
    }

    public String getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(String dateEnd) {
        this.dateEnd = dateEnd;
    }
}
