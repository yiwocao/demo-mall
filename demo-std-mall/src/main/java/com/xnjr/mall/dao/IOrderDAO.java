package com.xnjr.mall.dao;

import com.xnjr.mall.dao.base.IBaseDAO;
import com.xnjr.mall.domain.Order;

/**
 * @author: xieyj 
 * @since: 2016年5月24日 下午9:03:38 
 * @history:
 */
public interface IOrderDAO extends IBaseDAO<Order> {
    String NAMESPACE = IOrderDAO.class.getName().concat(".");

    public int updateUserCancel(Order data);

    public int updatePaySuccess(Order data);

    public int updateDeliverLogistics(Order data);

    public int updateDeliverXianchang(Order data);

    public int updatePlatCancel(Order data);

    public int updateConfirm(Order data);

    public int updatePayGroup(Order data);
    
    public int updateOrderPay(Order order);
    
    public int payGroup(Order data);
}
