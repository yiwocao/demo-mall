package com.xnjr.mall.enums;

public enum ECategoryStatus {
    TO_ON("0", "待上架"), ON("1", "已上架"), OFF("2", "已下架");
    ECategoryStatus(String code, String value) {
        this.code = code;
        this.value = value;
    }

    private String code;

    private String value;

    public String getCode() {
        return code;
    }

    public String getValue() {
        return value;
    }
}
