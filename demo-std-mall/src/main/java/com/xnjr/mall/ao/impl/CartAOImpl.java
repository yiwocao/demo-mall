/**
 * @Title CartAOImpl.java 
 * @Package com.xnjr.mall.ao.impl 
 * @Description 
 * @author xieyj  
 * @date 2016年5月24日 下午10:27:08 
 * @version V1.0   
 */
package com.xnjr.mall.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xnjr.mall.ao.ICartAO;
import com.xnjr.mall.bo.ICartBO;
import com.xnjr.mall.bo.IProductBO;
import com.xnjr.mall.bo.IUserBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.domain.Cart;
import com.xnjr.mall.domain.Product;
import com.xnjr.mall.enums.EGeneratePrefix;

/** 
 * @author: xieyj 
 * @since: 2016年5月24日 下午10:27:08 
 * @history:
 */
@Service
public class CartAOImpl implements ICartAO {

    @Autowired
    ICartBO cartBO;

    @Autowired
    IProductBO productBO;

    @Autowired
    IUserBO userBO;

    @Override
    public String addCart(String userId, String productCode, Integer quantity) {
        String code = null;
        Product product = productBO.getProduct(productCode);
        Cart cart = cartBO.getCart(userId, productCode);
        if (cart != null) {
            code = cart.getCode();
            cart.setQuantity(cart.getQuantity() + quantity);
            cartBO.refreshCart(cart);
        } else {
            cart = new Cart();
            code = OrderNoGenerater.generateM(EGeneratePrefix.CART.getCode());
            cart.setCode(code);
            cart.setUserId(userId);
            cart.setProductCode(productCode);
            cart.setQuantity(quantity);
            cart.setCompanyCode(product.getCompanyCode());
            cart.setSystemCode(product.getSystemCode());
            cartBO.saveCart(cart);
        }
        return code;
    }

    @Override
    public void editCart(String code, Integer quantity) {
        Cart data = new Cart();
        data.setCode(code);
        data.setQuantity(quantity);
        cartBO.refreshCart(data);
    }

    /** 
     * @see com.xnjr.mall.ao.ICartAO#dropCartList(java.util.List)
     */
    @Override
    public void dropCartList(List<String> cartCodeList) {
        for (String cartCode : cartCodeList) {
            cartBO.removeCart(cartCode);
        }
    }

    /** 
     * @see com.xnjr.mall.ao.ICartAO#queryCartPage(int, int, com.xnjr.mall.domain.Cart)
     */
    @Override
    public Paginable<Cart> queryCartPage(int start, int limit, Cart condition) {
        return cartBO.getPaginable(start, limit, condition);
    }

    /** 
     * @see com.xnjr.mall.ao.ICartAO#queryCartList(com.xnjr.mall.domain.Cart)
     */
    @Override
    public List<Cart> queryCartList(String userId) {
        Cart condition = new Cart();
        condition.setUserId(userId);
        return cartBO.queryCartList(condition);
    }

    /** 
     * @see com.xnjr.mall.ao.ICartAO#getCart(java.lang.String)
     */
    @Override
    public Cart getCart(String code) {
        return cartBO.getCart(code);
    }

}
