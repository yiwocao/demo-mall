package com.std.user.api.impl;

import com.std.user.ao.ICouponAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805332Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 卡券详情查询
 * @author: xieyj 
 * @since: 2016年11月24日 下午3:06:09 
 * @history:
 */
public class XN805332 extends AProcessor {
    private ICouponAO couponAO = SpringContextHolder.getBean(ICouponAO.class);

    private XN805332Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return couponAO.getCoupon(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805332Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
