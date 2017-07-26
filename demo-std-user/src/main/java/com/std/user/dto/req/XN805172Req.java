package com.std.user.dto.req;

/** 
 * @author: haiqingzheng 
 * @since: 2017年3月12日 下午8:17:16 
 * @history:
 */
public class XN805172Req {

    // 登录名（必填）
    private String loginName;

    // 类型（必填）
    private String kind;

    // 角色编号（必填）
    private String roleCode;

    // 更新人（必填）
    private String updater;

    // 系统编号（必填）
    private String systemCode;

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

}
