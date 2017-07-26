package com.xnjr.mall.enums;

public enum EStoreLevel {
    NOMAL("1", "普通商家"), FINANCIAL("2", "公益型商家");

    EStoreLevel(String code, String value) {
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
