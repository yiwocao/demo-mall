package com.std.user.enums;

/** 
 * @author: xieyj 
 * @since: 2015-3-7 上午8:41:50 
 * @history:
 */
public enum ECPwdType {
    HX("1", "环信"), QINIU("2", "七牛"), WEIXIN_H5("3", "微信h5"), WEIXIN_APP("4",
            "微信APP");

    ECPwdType(String code, String value) {
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
