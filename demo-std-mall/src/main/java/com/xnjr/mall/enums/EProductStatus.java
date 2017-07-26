/**
 * @Title EProductStatus.java 
 * @Package com.xnjr.mall.enums 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年5月17日 上午10:36:47 
 * @version V1.0   
 */
package com.xnjr.mall.enums;

/** 
 * @author: haiqingzheng 
 * @since: 2016年5月17日 上午10:36:47 
 * @history:
 */
public enum EProductStatus {
    TO_APPROVE("0", "待审核"), APPROVE_YES("1", "审批通过待上架"), APPROVE_NO("91",
            "审批不通过"), PUBLISH_YES("3", "已上架"), PUBLISH_NO("4", "已下架");

    EProductStatus(String code, String value) {
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
