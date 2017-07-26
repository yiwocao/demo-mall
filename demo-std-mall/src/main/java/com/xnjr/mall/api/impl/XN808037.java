package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IProductSpecsAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.ProductSpecs;
import com.xnjr.mall.dto.req.XN808037Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 列表查询产品型号
 * @author: myb858 
 * @since: 2017年3月25日 下午3:50:33 
 * @history:
 */
public class XN808037 extends AProcessor {

    private IProductSpecsAO productSpecsAO = SpringContextHolder
        .getBean(IProductSpecsAO.class);

    private XN808037Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        ProductSpecs condition = new ProductSpecs();
        condition.setProductCode(req.getProductCode());
        return productSpecsAO.queryProductSpecsList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808037Req.class);
        StringValidater.validateBlank(req.getProductCode());
    }

}
