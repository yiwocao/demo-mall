package com.std.user.dto.req;

/**
 * 增加角色
 * @author: xieyj 
 * @since: 2016年5月16日 下午10:53:50 
 * @history:
 */
public class XN805023Req {

    // 角色名称(必填)
    private String name;

    // 角色等级(必填)
    private String level;

    // 更新人(必填)
    private String updater;

    // 备注(选填)
    private String remark;

    // 系统编号（必填）
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

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

}
