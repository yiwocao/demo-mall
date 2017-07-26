/**
 * @Title EBizType.java 
 * @Package com.ibis.account.enums 
 * @Description 
 * @author miyb  
 * @date 2015-2-26 下午2:15:22 
 * @version V1.0   
 */
package com.std.user.enums;

import java.util.HashMap;
import java.util.Map;

/** 
 * @author: miyb 
 * @since: 2015-2-26 下午2:15:22 
 * @history:
 */
public enum EFieldType {
    LOGINNAME("1", "登录名"), NICKNAME("2", "昵称");

    public static Map<String, EFieldType> getBizTypeMap() {
        Map<String, EFieldType> map = new HashMap<String, EFieldType>();
        for (EFieldType bizType : EFieldType.values()) {
            map.put(bizType.getCode(), bizType);
        }
        return map;
    }

    EFieldType(String code, String value) {
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
