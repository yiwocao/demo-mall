package com.std.user.enums;

import java.util.HashMap;
import java.util.Map;

/**
 * @author: xieyj 
 * @since: 2016年11月24日 下午2:37:28 
 * @history:
 */
public enum ECouponStatus {
    TO_USE("0", "待使用"), USED("1", "支出"), DROP("2", "作废");

    public static Map<String, ECouponStatus> getBizTypeMap() {
        Map<String, ECouponStatus> map = new HashMap<String, ECouponStatus>();
        for (ECouponStatus bizType : ECouponStatus.values()) {
            map.put(bizType.getCode(), bizType);
        }
        return map;
    }

    ECouponStatus(String code, String value) {
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
