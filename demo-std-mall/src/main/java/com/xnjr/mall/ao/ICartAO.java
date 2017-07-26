package com.xnjr.mall.ao;

import java.util.List;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.Cart;

/** 
 * @author: xieyj 
 * @since: 2015年8月27日 上午10:39:37 
 * @history:
 */
public interface ICartAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addCart(String userId, String productCode, Integer quantity);

    public void dropCartList(List<String> cartCodeList);

    public void editCart(String code, Integer quantity);

    public Paginable<Cart> queryCartPage(int start, int limit, Cart condition);

    public List<Cart> queryCartList(String userId);

    public Cart getCart(String code);

}
