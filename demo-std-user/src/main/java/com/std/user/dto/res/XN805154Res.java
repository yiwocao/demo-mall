package com.std.user.dto.res;

public class XN805154Res {
    // 用户编号
    private String userId;

    // 注册送积分
    private Long amount;

    public XN805154Res() {
    }

    public XN805154Res(String userId, Long amount) {
        this.userId = userId;
        this.amount = amount;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Long getAmount() {
        return amount;
    }

    public void setAmount(Long amount) {
        this.amount = amount;
    }
}
