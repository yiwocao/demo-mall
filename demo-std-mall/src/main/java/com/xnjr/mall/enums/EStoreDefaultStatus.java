package com.xnjr.mall.enums;

public enum EStoreDefaultStatus {
	NOTISDEFAULT("0", "不推荐"), ISDEFAULT("1", "推荐");



	EStoreDefaultStatus(String code, String value) {
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
