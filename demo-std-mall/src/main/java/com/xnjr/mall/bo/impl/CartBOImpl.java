/**
 * @Title CartBOImpl.java 
 * @Package com.xnjr.mall.bo.impl 
 * @Description 
 * @author xieyj  
 * @date 2016年5月24日 下午9:41:51 
 * @version V1.0   
 */
package com.xnjr.mall.bo.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.ICartBO;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.dao.ICartDAO;
import com.xnjr.mall.domain.Cart;
import com.xnjr.mall.exception.BizException;

/** 
 * @author: xieyj 
 * @since: 2016年5月24日 下午9:41:51 
 * @history:
 */
@Component
public class CartBOImpl extends PaginableBOImpl<Cart> implements ICartBO {

    @Autowired
    private ICartDAO cartDAO;

    /** 
     * @see com.xnjr.mall.bo.ICartBO#isCartExist(java.lang.String, java.lang.String)
     */
    @Override
    public Cart getCart(String userId, String productCode) {
        Cart result = null;
        Cart condition = new Cart();
        condition.setUserId(userId);
        condition.setProductCode(productCode);
        List<Cart> list = cartDAO.selectList(condition);
        if (!CollectionUtils.sizeIsEmpty(list)) {
            result = list.get(0);
        }
        return result;
    }

    /** 
     * @see com.xnjr.mall.bo.ICartBO#saveCart(com.xnjr.mall.domain.Cart)
     */
    @Override
    public void saveCart(Cart data) {
        if (data != null && StringUtils.isNotBlank(data.getCode())) {
            cartDAO.insert(data);
        }
    }

    /** 
     * @see com.xnjr.mall.bo.ICartBO#removeCart(java.lang.String)
     */
    @Override
    public int removeCart(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Cart data = new Cart();
            data.setCode(code);
            count = cartDAO.delete(data);
        }
        return count;
    }

    /** 
     * @see com.xnjr.mall.bo.ICartBO#refreshCart(com.xnjr.mall.domain.Cart)
     */
    @Override
    public int refreshCart(Cart data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            count = cartDAO.update(data);
        }
        return count;
    }

    /** 
     * @see com.xnjr.mall.bo.ICartBO#queryCartList(com.xnjr.mall.domain.Cart)
     */
    @Override
    public List<Cart> queryCartList(Cart condition) {
        return cartDAO.selectList(condition);
    }

    /** 
     * @see com.xnjr.mall.bo.ICartBO#getCart(java.lang.String)
     */
    @Override
    public Cart getCart(String code) {
        Cart data = null;
        if (StringUtils.isNotBlank(code)) {
            Cart condition = new Cart();
            condition.setCode(code);
            data = cartDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "购物车编号不存在");
            }
        }
        return data;
    }

    @Override
    public Map<String, List<Cart>> getCartMap(List<String> cartCodeList) {
        Map<String, List<Cart>> resultList = new HashMap<String, List<Cart>>();
        List<Cart> cartList = new ArrayList<Cart>();
        Set<String> companyCodeSet = new HashSet<String>();
        for (String cartCode : cartCodeList) {
            Cart cart = getCart(cartCode);
            cartList.add(cart);
            String companyCode = cart.getCompanyCode();
            companyCodeSet.add(companyCode);
        }
        for (String companyCode : companyCodeSet) {
            List<Cart> companyCartList = new ArrayList<Cart>();
            for (Cart cart : cartList) {
                if (cart.getCompanyCode().equals(companyCode)) {
                    companyCartList.add(cart);
                }
            }
            resultList.put(companyCode, companyCartList);
            // companyCartList.clear();
        }
        return resultList;
    }

    @Override
    public List<Cart> queryCartList(List<String> cartCodeList) {
        List<Cart> cartList = new ArrayList<Cart>();
        for (String cartCode : cartCodeList) {
            Cart cart = getCart(cartCode);
            cartList.add(cart);
        }
        return cartList;
    }

    @Override
    public List<Cart> queryCartList(String productCode, Integer quantity) {
        List<Cart> cartList = new ArrayList<Cart>();
        Cart cart = new Cart();
        cart.setProductCode(productCode);
        cart.setQuantity(quantity);
        cartList.add(cart);
        return cartList;
    }

}
