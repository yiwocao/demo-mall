package com.std.user.dto.req;

/**
 * @author: xieyj 
 * @since: 2016年10月21日 下午4:38:39 
 * @history:
 */
public class XN805079Req {

    // 手机号(必填)
    private String mobile;

    // 公司编号(必填)
    private String companyCode;

    // 推荐人(选填)
    private String userReferee;

    // 系统编号
    private String systemCode;

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getUserReferee() {
        return userReferee;
    }

    public void setUserReferee(String userReferee) {
        this.userReferee = userReferee;
    }
}
