package com.std.user.domain;

import com.std.user.dao.base.ABaseDO;

/**
 * 修改次数日志
 * @author: xieyj 
 * @since: 2016年10月22日 上午11:41:42 
 * @history:
 */
public class FieldTimes extends ABaseDO {

    private static final long serialVersionUID = 1L;

    // 序号
    private String id;

    // 类型(1 登录名 2 昵称)
    private String type;

    // 用户编号
    private String userId;

    // 登录次数
    private Integer times;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getTimes() {
        return times;
    }

    public void setTimes(Integer times) {
        this.times = times;
    }
}
