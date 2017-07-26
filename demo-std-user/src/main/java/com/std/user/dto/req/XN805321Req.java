package com.std.user.dto.req;

public class XN805321Req {
    // 用户编号(必填)
    private String userId;

    // 卡券编号(必填)
    private String couponCode;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCouponCode() {
        return couponCode;
    }

    public void setCouponCode(String couponCode) {
        this.couponCode = couponCode;
    }
}
