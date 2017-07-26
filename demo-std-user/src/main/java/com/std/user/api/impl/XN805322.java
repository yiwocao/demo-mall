package com.std.user.api.impl;

import com.std.user.ao.ICouponAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805322Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 作废卡券
 * @author: xieyj 
 * @since: 2016年11月24日 下午3:06:09 
 * @history:
 */
public class XN805322 extends AProcessor {
    private ICouponAO couponAO = SpringContextHolder.getBean(ICouponAO.class);

    private XN805322Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        couponAO.dropCoupon(req.getCode(), req.getUpdater());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805322Req.class);
        StringValidater.validateBlank(req.getCode(), req.getUpdater());
    }
}
