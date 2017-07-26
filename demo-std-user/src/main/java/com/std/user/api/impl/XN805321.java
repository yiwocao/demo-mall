package com.std.user.api.impl;

import com.std.user.ao.ICouponAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805321Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 扫描卡券二维码
 * @author: xieyj 
 * @since: 2016年11月24日 下午3:02:29 
 * @history:
 */
public class XN805321 extends AProcessor {
    private ICouponAO couponAO = SpringContextHolder.getBean(ICouponAO.class);

    private XN805321Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        couponAO.scanCoupon(req.getUserId(), req.getCouponCode());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805321Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getCouponCode());
    }
}
