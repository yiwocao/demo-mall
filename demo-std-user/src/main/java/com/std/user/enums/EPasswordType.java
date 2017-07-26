/**
 * @Title ECheckResult.java 
 * @Package com.ibis.account.enums 
 * @Description 
 * @author miyb  
 * @date 2015-2-26 下午2:58:54 
 * @version V1.0   
 */
package com.std.user.enums;

import java.util.HashMap;
import java.util.Map;

/** 
 * @author: miyb 
 * @since: 2015-2-26 下午2:58:54 
 * @history:
 */
public enum EPasswordType {
    company("1", "公司"), individual("0", "个体户");
    public static Map<String, EPasswordType> getBooleanResultMap() {
        Map<String, EPasswordType> map = new HashMap<String, EPasswordType>();
        for (EPasswordType status : EPasswordType.values()) {
            map.put(status.getCode(), status);
        }
        return map;
    }

    EPasswordType(String code, String value) {
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
