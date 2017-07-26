package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.ICouponBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.EGeneratePrefix;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.ICouponDAO;
import com.std.user.domain.Coupon;
import com.std.user.enums.ECouponStatus;
import com.std.user.exception.BizException;

/**
 * @author: xieyj 
 * @since: 2016年11月24日 下午2:22:37 
 * @history:
 */
@Component
public class CouponBOImpl extends PaginableBOImpl<Coupon> implements ICouponBO {

    @Autowired
    private ICouponDAO couponDAO;

    @Override
    public boolean isCouponExist(String code) {
        Coupon condition = new Coupon();
        condition.setCode(code);
        if (couponDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveCoupon(Coupon data) {
        String code = null;
        if (data != null) {
            code = OrderNoGenerater.generate(EGeneratePrefix.KQ.getCode());
            data.setCode(code);
            data.setStatus(ECouponStatus.TO_USE.getCode());
            data.setCreateDatetime(new Date());
            couponDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeCoupon(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Coupon data = new Coupon();
            data.setCode(code);
            count = couponDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshCouponStatus(String code, ECouponStatus couponStatus,
            String scanner) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Coupon data = new Coupon();
            data.setCode(code);
            data.setStatus(couponStatus.getCode());
            data.setScanner(scanner);
            data.setScanDatetime(new Date());
            count = couponDAO.updateStatus(data);
        }
        return count;
    }

    @Override
    public List<Coupon> queryCouponList(Coupon condition) {
        return couponDAO.selectList(condition);
    }

    @Override
    public Coupon getCoupon(String code) {
        Coupon data = null;
        if (StringUtils.isNotBlank(code)) {
            Coupon condition = new Coupon();
            condition.setCode(code);
            data = couponDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "卡券编号不存在");
            }
        }
        return data;
    }
}
