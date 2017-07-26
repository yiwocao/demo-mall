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
 * 公司资质状态
 * @author: zuixian 
 * @since: 2016年10月14日 下午3:18:37 
 * @history:
 */
public enum EComCertificateStatus {
    TOAPPROVE("0", "待确认"), APPROVE_YES("1", "验证通过"), APPROVE_NO("2", "验证不通过");

    EComCertificateStatus(String code, String value) {
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
