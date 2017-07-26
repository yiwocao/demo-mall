package com.std.user.domain;

import java.util.Date;

import com.std.user.dao.base.ABaseDO;

/**
 * 邀请码
 * @author: shan 
 * @since: 2016年12月17日 下午3:15:56 
 * @history:
 */
public class Invitation extends ABaseDO {
    /** 
     * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
     */
    private static final long serialVersionUID = 1L;

    // 编号
    public String code;

    // 邀请码
    public String invCode;

    // 状态
    public String status;

    // 创建时间
    public Date createDatetime;

    // 使用时间
    public Date useDatetime;

    // 使用人
    public String userId;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

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

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Date getUseDatetime() {
        return useDatetime;
    }

    public void setUseDatetime(Date useDatetime) {
        this.useDatetime = useDatetime;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

}
