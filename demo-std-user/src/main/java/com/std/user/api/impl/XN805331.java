package com.std.user.api.impl;

import com.std.user.ao.ICouponAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Coupon;
import com.std.user.dto.req.XN805331Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 卡券列表查询
 * @author: xieyj 
 * @since: 2016年11月24日 下午3:06:09 
 * @history:
 */
public class XN805331 extends AProcessor {
    private ICouponAO couponAO = SpringContextHolder.getBean(ICouponAO.class);

    private XN805331Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Coupon condition = new Coupon();
        condition.setStyle(req.getStyle());
        condition.setStatus(req.getStatus());
        condition.setScanner(req.getScanner());
        condition.setScannerMobile(req.getScannerMobile());
        condition.setCompanyCode(req.getCompanyCode());
        condition.setSystemCode(req.getSystemCode());
        return couponAO.queryCouponList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805331Req.class);
        StringValidater
            .validateBlank(req.getCompanyCode(), req.getSystemCode());
    }
}
