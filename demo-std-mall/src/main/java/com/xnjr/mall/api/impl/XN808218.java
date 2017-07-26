package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStoreAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808218Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * Front详情查询店铺信息(Front专用)
 * @author: myb858 
 * @since: 2017年3月25日 下午6:21:10 
 * @history:
 */
public class XN808218 extends AProcessor {
    private IStoreAO storeAO = SpringContextHolder.getBean(IStoreAO.class);

    private XN808218Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return storeAO.getStoreFront(req.getCode(), req.getUserId());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808218Req.class);
        StringValidater.validateBlank(req.getCode());
    }

}
