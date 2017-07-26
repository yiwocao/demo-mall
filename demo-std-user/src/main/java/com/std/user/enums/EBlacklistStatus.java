/**
 * @Title EBlacklistStatus.java 
 * @Package com.std.user.enums 
 * @Description 
 * @author leo(haiqing)  
 * @date 2017年2月22日 下午12:16:45 
 * @version V1.0   
 */
package com.std.user.enums;

/** 
 * @author: haiqingzheng 
 * @since: 2017年2月22日 下午12:16:45 
 * @history:
 */
public enum EBlacklistStatus {
    DELETE("0", "已删除"), VALID("1", "生效中");

    EBlacklistStatus(String code, String value) {
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
