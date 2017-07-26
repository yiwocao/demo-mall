package com.std.user.dto.req;

public class XN806131Req {

    // 类别（选填）
    private String type;

    // 名称（选填）
    private String name;

    // 状态（选填）
    private String status;

    // 更新人（选填）
    private String updater;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }
}
