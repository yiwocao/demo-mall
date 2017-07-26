package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IProductSpecsAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808031Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 删除产品型号
 * @author: myb858 
 * @since: 2017年3月25日 下午3:45:18 
 * @history:
 */
public class XN808031 extends AProcessor {

    private IProductSpecsAO productSpecsAO = SpringContextHolder
        .getBean(IProductSpecsAO.class);

    private XN808031Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        productSpecsAO.dropProductSpecs(req.getCode());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808031Req.class);
        StringValidater.validateBlank(req.getCode());
    }

}
