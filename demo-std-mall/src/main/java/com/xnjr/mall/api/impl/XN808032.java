package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IProductSpecsAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808032Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 修改产品型号
 * @author: myb858 
 * @since: 2017年3月25日 下午3:49:17 
 * @history:
 */
public class XN808032 extends AProcessor {

    private IProductSpecsAO productSpecsAO = SpringContextHolder
        .getBean(IProductSpecsAO.class);

    private XN808032Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        productSpecsAO.editProductSpecs(req.getCode(), req.getDkey(),
            req.getDvalue(), StringValidater.toInteger(req.getOrderNo()));
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808032Req.class);
        StringValidater.validateBlank(req.getCode(), req.getDkey(),
            req.getDvalue(), req.getOrderNo());
    }

}
