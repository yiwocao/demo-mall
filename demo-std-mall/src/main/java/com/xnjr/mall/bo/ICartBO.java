/**
 * @Title ICart.java 
 * @Package com.xnjr.mall 
 * @Description 
 * @author xieyj  
 * @date 2016年5月24日 上午8:23:54 
 * @version V1.0   
 */
package com.xnjr.mall.bo;

import java.util.List;
import java.util.Map;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.Cart;

/** 
 * @author: xieyj 
 * @since: 2016年5月24日 上午8:23:54 
 * @history:
 */
public interface ICartBO extends IPaginableBO<Cart> {

    public Cart getCart(String userId, String modelCode);

    public void saveCart(Cart data);

    public int removeCart(String code);

    public int refreshCart(Cart data);

    public List<Cart> queryCartList(Cart data);

    public Cart getCart(String code);

    /**
     * 对购物车内产品进行按公司分类
     * @param cartCodeList
     * @return 
     * @create: 2017年3月26日 下午7:36:33 myb858
     * @history:
     */
    public Map<String, List<Cart>> getCartMap(List<String> cartCodeList);

    public List<Cart> queryCartList(List<String> cartCodeList);

    public List<Cart> queryCartList(String productCode, Integer quantity);
}
