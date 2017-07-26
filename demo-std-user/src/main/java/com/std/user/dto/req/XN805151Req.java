package com.std.user.dto.req;

public class XN805151Req {

    // 开放编号（必填）
    private String code;

    // 类型(选填，默认h5 3=微信h5 4=微信APP)
    private String type;

    // 手机号（选填）
    private String mobile;

    // 短信验证码（选填）
    private String smsCaptcha;

    // 是否注册环信（必填）
    private String isRegHx;
    
 // 是否需要传入验证码，默认是(选填)，非微信登录后绑定微信，不传验证码
    private String isLoginCaptcha;

    // 推荐人（选填）
    private String userReferee;

    // 公司编号（必填）
    private String companyCode;

    // 系统编号(必填)
    private String systemCode;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getSmsCaptcha() {
        return smsCaptcha;
    }

    public void setSmsCaptcha(String smsCaptcha) {
        this.smsCaptcha = smsCaptcha;
    }

    public String getIsRegHx() {
        return isRegHx;
    }

    public void setIsRegHx(String isRegHx) {
        this.isRegHx = isRegHx;
    }

    public String getUserReferee() {
        return userReferee;
    }

    public void setUserReferee(String userReferee) {
        this.userReferee = userReferee;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

	public String getIsLoginCaptcha() {
		return isLoginCaptcha;
	}

	public void setIsLoginCaptcha(String isLoginCaptcha) {
		this.isLoginCaptcha = isLoginCaptcha;
	}
    
    
}
