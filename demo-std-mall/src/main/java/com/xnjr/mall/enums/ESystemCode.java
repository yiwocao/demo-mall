package com.xnjr.mall.enums;

import java.util.HashMap;
import java.util.Map;

/**
 * @author: xieyj 
 * @since: 2017年2月9日 下午8:10:43 
 * @history:
 */
public enum ESystemCode {
    ZHPAY("CD-CZH000001", "正汇钱包"), Caigo("CD-CCG000007", "菜狗商城"), CSW(
            "CD-CCSW000008", "城市网"), PIPE("CD-CGD000006", "全能水电工助手"), ;

    public static Map<String, ESystemCode> getMap() {
        Map<String, ESystemCode> map = new HashMap<String, ESystemCode>();
        for (ESystemCode direction : ESystemCode.values()) {
            map.put(direction.getCode(), direction);
        }
        return map;
    }

    ESystemCode(String code, String value) {
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
