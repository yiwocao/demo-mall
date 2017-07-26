package com.xnjr.mall.dto.req;

import java.util.List;

import com.xnjr.mall.domain.CommitOrderPOJO;

/**
 * 购物车批量下单
 * @author: xieyj 
 * @since: 2016年5月23日 上午8:46:53 
 * @history:
 */
public class XN808051Req {
    // 购物车列表（必填）
    private List<String> cartCodeList;

    // 向谁提货(选填)
    private String toUser;

    // 下单个人信息(必填)
    private CommitOrderPOJO pojo;

    public List<String> getCartCodeList() {
        return cartCodeList;
    }

    public void setCartCodeList(List<String> cartCodeList) {
        this.cartCodeList = cartCodeList;
    }

    public String getToUser() {
        return toUser;
    }

    public void setToUser(String toUser) {
        this.toUser = toUser;
    }

    public CommitOrderPOJO getPojo() {
        return pojo;
    }

    public void setPojo(CommitOrderPOJO pojo) {
        this.pojo = pojo;
    }

}
