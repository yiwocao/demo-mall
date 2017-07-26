package com.std.user.enums;

public enum EAccountJourStatus {
    noCheck("0", "免对账"), todoCheck("1", "待对账"), Checked_NO("2", "已对账且账不平"), Checked_YES(
            "9", "已对账且账已平");

    EAccountJourStatus(String code, String value) {
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
