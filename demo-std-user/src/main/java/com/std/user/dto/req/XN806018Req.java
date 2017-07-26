package com.std.user.dto.req;

/**
 * 公司上下架
 * @author: asus 
 * @since: 2017年5月4日 下午6:09:01 
 * @history:
 */
public class XN806018Req {
    // 编号（必填）
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
