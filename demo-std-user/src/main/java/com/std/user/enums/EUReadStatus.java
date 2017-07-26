/**
 * @Title Status.java 
 * @Package com.ibis.pz.enums 
 * @Description 
 * @author miyb  
 * @date 2015-3-7 上午8:41:50 
 * @version V1.0   
 */
package com.std.user.enums;

/** 
 * @author: zuixian 
 * @since: 2016年10月14日 上午10:40:03 
 * @history:
 */
public enum EUReadStatus {
    TOREAD("0", "未读"), READ_YES("1", "已读"), DELETE_NO("2", "未读被删"), DELETE_YES(
            "3", "已读被删");

    EUReadStatus(String code, String value) {
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
