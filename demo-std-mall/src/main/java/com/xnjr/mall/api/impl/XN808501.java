package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.ICaigopoolAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808501Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 调整菜狗对接池的兑换比例
 * @author: myb858 
 * @since: 2017年3月29日 下午7:06:01 
 * @history:
 */
public class XN808501 extends AProcessor {
    private ICaigopoolAO caigopoolAO = SpringContextHolder
        .getBean(ICaigopoolAO.class);

    private XN808501Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        caigopoolAO.changeRate(req.getCode(),
            StringValidater.toDouble(req.getRate()));
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808501Req.class);
        StringValidater.validateBlank(req.getCode(), req.getRate());

    }

}
