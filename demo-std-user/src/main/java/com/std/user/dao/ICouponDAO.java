package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.Coupon;

//dao层 
public interface ICouponDAO extends IBaseDAO<Coupon> {
    String NAMESPACE = ICouponDAO.class.getName().concat(".");

    public int updateStatus(Coupon data);

}
