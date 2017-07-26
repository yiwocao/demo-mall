package com.xnjr.mall.enums;

public enum EPoolCode {
    highPool("P201704011700000001", "嗨币对接池");

    EPoolCode(String code, String value) {
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
