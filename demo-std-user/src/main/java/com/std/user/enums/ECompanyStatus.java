package com.std.user.enums;

import java.util.HashMap;
import java.util.Map;

/** 
 * @author: miyb 
 * @since: 2015-2-26 下午2:15:22 
 * @history:
 */
public enum ECompanyStatus {
    NO_PUBLIC("1", "未上架"), PUBLIC("2", "已上架"), PUBLICED("3", "已下架");

    public static Map<String, ECompanyStatus> getCompanyStatusMap() {
        Map<String, ECompanyStatus> map = new HashMap<String, ECompanyStatus>();
        for (ECompanyStatus bizType : ECompanyStatus.values()) {
            map.put(bizType.getCode(), bizType);
        }
        return map;
    }

    ECompanyStatus(String code, String value) {
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
