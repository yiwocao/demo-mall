package com.std.user.dto.req;

public class XN806007Req {

    // 公司编号（必填）
    private String code;

    // 行为（必填）
    private String action;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }
}
