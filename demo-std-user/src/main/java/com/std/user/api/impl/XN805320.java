package com.std.user.api.impl;

import com.std.user.ao.ICouponAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Coupon;
import com.std.user.dto.req.XN805320Req;
import com.std.user.dto.res.PKCodeRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 生成卡券二维码
 * @author: xieyj 
 * @since: 2016年11月24日 下午2:56:21 
 * @history:
 */
public class XN805320 extends AProcessor {
    private ICouponAO couponAO = SpringContextHolder.getBean(ICouponAO.class);

    private XN805320Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Coupon data = new Coupon();
        data.setAmount(StringValidater.toLong(req.getAmount()));
        data.setCnyPrice(StringValidater.toLong(req.getCnyPrice()));
        data.setUseTimes(StringValidater.toInteger(req.getUseTimes()));
        data.setStyle(req.getStyle());
        data.setCreator(req.getCreator());
        data.setCompanyCode(req.getCompanyCode());
        data.setSystemCode(req.getSystemCode());
        return new PKCodeRes(couponAO.addCoupon(data));
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805320Req.class);
        StringValidater.validateAmount(req.getAmount(), req.getCnyPrice());
        StringValidater.validateNumber(req.getUseTimes());
        StringValidater.validateBlank(req.getCreator(), req.getCompanyCode(),
            req.getSystemCode());
    }
}
