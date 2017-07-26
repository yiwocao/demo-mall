package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IProductSpecsAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808036Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 *详情查询产品型号
 * @author: myb858 
 * @since: 2017年3月25日 下午3:50:09 
 * @history:
 */
public class XN808036 extends AProcessor {

    private IProductSpecsAO productSpecsAO = SpringContextHolder
        .getBean(IProductSpecsAO.class);

    private XN808036Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return productSpecsAO.getProductSpecs(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808036Req.class);
        StringValidater.validateBlank(req.getCode());
    }

}
