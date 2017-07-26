/**
 * @Title EStoreStatus.java 
 * @Package com.xnjr.mall.enums 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月17日 下午5:36:05 
 * @version V1.0   
 */
package com.xnjr.mall.enums;

/** 
 * @author: haiqingzheng 
 * @since: 2016年12月17日 下午5:36:05 
 * @history:
 */
public enum EStoreStatus {
    TOCHECK("0", "待审核"), UNPASS("91", "审核不通过"), PASS("1", "审核通过待上架"), ON_OPEN(
            "2", "已上架，开店"), ON_CLOSE("3", "已上架，关店"), OFF("4", "已下架");

    // 状态解释
    // 待审核---审核---上架,上架后商家可自行关店开店，但其开店关店优先级小于平台的上架下架
    // 平台上架后，并且状态是开店

    EStoreStatus(String code, String value) {
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
