package com.xnjr.mall.dto.res;

import java.util.Date;

/**
 * 菜狗池出金记录
 * @author: myb858 
 * @since: 2017年3月28日 下午5:36:10 
 * @history:
 */
public class XN808511Res {
    // 编号
    private Long id;

    // 嗨币金额
    private Long highAmount;

    // 手机号
    private String mobile;

    // 菜狗币金额
    private Long cgbAmount;

    // 返还时间
    private Date createDatetime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getHighAmount() {
        return highAmount;
    }

    public void setHighAmount(Long highAmount) {
        this.highAmount = highAmount;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Long getCgbAmount() {
        return cgbAmount;
    }

    public void setCgbAmount(Long cgbAmount) {
        this.cgbAmount = cgbAmount;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

}
