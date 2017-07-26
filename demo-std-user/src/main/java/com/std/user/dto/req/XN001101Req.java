package com.std.user.dto.req;

public class XN001101Req {
    // 验证编号（必填）
    private String tokenId;

    // 用户编号（必填）
    private String userId;

    // 登录密码_明文（必填）
    private String loginPwd;

    public String getTokenId() {
        return tokenId;
    }

    public void setTokenId(String tokenId) {
        this.tokenId = tokenId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getLoginPwd() {
        return loginPwd;
    }

    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd;
    }
}
