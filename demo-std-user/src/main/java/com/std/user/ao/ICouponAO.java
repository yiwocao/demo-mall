package com.std.user.ao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.Coupon;

@Component
public interface ICouponAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addCoupon(Coupon data);

    public void scanCoupon(String userId, String code);

    public void dropCoupon(String code, String updater);

    public Paginable<Coupon> queryCouponPage(int start, int limit,
            Coupon condition);

    public List<Coupon> queryCouponList(Coupon condition);

    public Coupon getCoupon(String code);

}
