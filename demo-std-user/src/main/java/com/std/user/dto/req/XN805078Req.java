package com.std.user.dto.req;

/**
 * @author: xieyj 
 * @since: 2016年10月12日 上午6:38:45 
 * @history:
 */
public class XN805078Req extends APageReq {

    /** 
     * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
     */
    private static final long serialVersionUID = 1L;

    // 用户编号(必填)
    private String userId;

    // admin密码(必填)
    private String adminUserId;

    // admin密码(必填)
    private String adminPwd;

    // 系统编号(必填)
    private String systemCode;

    public String getAdminUserId() {
        return adminUserId;
    }

    public void setAdminUserId(String adminUserId) {
        this.adminUserId = adminUserId;
    }

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getAdminPwd() {
        return adminPwd;
    }

    public void setAdminPwd(String adminPwd) {
        this.adminPwd = adminPwd;
    }
}
