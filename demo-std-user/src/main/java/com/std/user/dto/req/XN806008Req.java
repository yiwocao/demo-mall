package com.std.user.dto.req;

public class XN806008Req {

    // 公司编号（必填）
    private String code;

    // 旧密码（必填）
    private String oldPassword;

    // 新密码（必填）
    private String newPassword;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getOldPassword() {
        return oldPassword;
    }

    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
}
