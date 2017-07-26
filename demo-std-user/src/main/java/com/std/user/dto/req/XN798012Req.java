/**
 * @Title XN798012Req.java 
 * @Package com.std.certi.dto.req 
 * @Description 
 * @author leo(haiqing)  
 * @date 2017年2月23日 下午9:34:09 
 * @version V1.0   
 */
package com.std.user.dto.req;

/** 
 * @author: haiqingzheng 
 * @since: 2017年2月23日 下午9:34:09 
 * @history:
 */
public class XN798012Req {
    // 系统编号(必填)
    private String systemCode;

    // 公司编号(必填)
    private String companyCode;

    // 芝麻信用唯一认证标识（必填）
    private String bizNo;

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getBizNo() {
        return bizNo;
    }

    public void setBizNo(String bizNo) {
        this.bizNo = bizNo;
    }
}
