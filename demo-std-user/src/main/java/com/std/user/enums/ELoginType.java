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
public enum ELoginType {
    LOGINNAME("1", "登录名"), MOBILE("2", "手机号"), ALL("3", "登录名或手机号");

    public static Map<String, ELoginType> getBizTypeMap() {
        Map<String, ELoginType> map = new HashMap<String, ELoginType>();
        for (ELoginType bizType : ELoginType.values()) {
            map.put(bizType.getCode(), bizType);
        }
        return map;
    }

    ELoginType(String code, String value) {
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
