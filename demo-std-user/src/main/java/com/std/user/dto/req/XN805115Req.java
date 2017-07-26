package com.std.user.dto.req;

public class XN805115Req extends APageReq {

    private static final long serialVersionUID = 1L;

    // 等级名称（选填）
    private String name;

    // 作用（选填）
    private String effect;

    // 系统编号(必填)
    private String systemCode;

    public String getSystemCode() {
        return systemCode;
    }

    public void setSystemCode(String systemCode) {
        this.systemCode = systemCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEffect() {
        return effect;
    }

    public void setEffect(String effect) {
        this.effect = effect;
    }

}
