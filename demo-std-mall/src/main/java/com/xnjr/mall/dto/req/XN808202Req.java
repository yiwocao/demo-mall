/**
 * @Title XN808202Req.java 
 * @Package com.xnjr.mall.dto.req 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午1:00:31 
 * @version V1.0   
 */
package com.xnjr.mall.dto.req;

import java.util.List;

public class XN808202Req {

    // 店铺ID编号（必填）
    private List<String> storeCodeList;

    // 审核结果（必填）
    private String approveResult;

    // 审核人（必填）
    private String approver;

    // 审核备注（选填）
    private String remark;

    public List<String> getStoreCodeList() {
        return storeCodeList;
    }

    public void setStoreCodeList(List<String> storeCodeList) {
        this.storeCodeList = storeCodeList;
    }

    public String getApproveResult() {
        return approveResult;
    }

    public void setApproveResult(String approveResult) {
        this.approveResult = approveResult;
    }

    public String getApprover() {
        return approver;
    }

    public void setApprover(String approver) {
        this.approver = approver;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
