package com.std.user.enums;

/**
 * @author: xieyj 
 * @since: 2016年11月21日 下午12:26:09 
 * @history:
 */
public enum EXiaoMi {
    APPKEY("appKey", "关联的AppKey"), TO("to", "指定关联对应的im号"), TENANTID("tenantId",
            "租户id");

    EXiaoMi(String code, String value) {
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
