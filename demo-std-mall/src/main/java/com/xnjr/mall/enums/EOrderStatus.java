package com.xnjr.mall.enums;

/**
 * @author: xieyj 
 * @since: 2016年5月25日 上午9:28:36 
 * @history:
 */
public enum EOrderStatus {
    TO_PAY("1", "待支付"), PAY_YES("2", "已支付"), SEND("3", "已发货"), RECEIVE("4",
            "已收货"), CANCEL("5", "取消"), YHYC("91", "用户异常"), SHYC("92", "商户异常"), KDYC("93", "快递异常");

    EOrderStatus(String code, String value) {
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
