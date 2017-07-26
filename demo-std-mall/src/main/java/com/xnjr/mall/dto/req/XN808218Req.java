package com.xnjr.mall.dto.req;

public class XN808218Req {
    // 当前用户（选填）
    private String userId;

    // 店铺编号（必填）
    private String code;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

}
