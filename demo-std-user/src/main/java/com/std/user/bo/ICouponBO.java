package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.Coupon;
import com.std.user.enums.ECouponStatus;

/**
 * @author: xieyj 
 * @since: 2016年11月24日 下午2:22:03 
 * @history:
 */
public interface ICouponBO extends IPaginableBO<Coupon> {

    public boolean isCouponExist(String code);

    public String saveCoupon(Coupon data);

    public int removeCoupon(String code);

    public int refreshCouponStatus(String code, ECouponStatus couponStatus,
            String scanner);

    public List<Coupon> queryCouponList(Coupon condition);

    public Coupon getCoupon(String code);

}
