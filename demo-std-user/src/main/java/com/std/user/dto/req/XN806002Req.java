package com.std.user.dto.req;

public class XN806002Req {

    // 公司编号（必填）
    private String code;

    // 更新人（必填）
    private String updater;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }
}
