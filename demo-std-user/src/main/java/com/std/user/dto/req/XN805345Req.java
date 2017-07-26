package com.std.user.dto.req;

/**
 * 邀请码查询分页
 * @author: shan 
 * @since: 2016年12月19日 上午11:12:35 
 * @history:
 */
public class XN805345Req extends APageReq {

    /** 
     * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
     */
    private static final long serialVersionUID = 1L;

    // 邀请码
    public String invCode;

    // 使用状态
    public String status;

    public String getInvCode() {
        return invCode;
    }

    public void setInvCode(String invCode) {
        this.invCode = invCode;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
