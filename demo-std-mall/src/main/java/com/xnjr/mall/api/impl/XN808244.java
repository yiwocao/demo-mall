package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStorePurchaseAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808244Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 全能水电工积分消费(front)
 * @author: haiqingzheng 
 * @since: 2017年4月10日 下午6:39:49 
 * @history:
 */
public class XN808244 extends AProcessor {
    private IStorePurchaseAO storePurchaseAO = SpringContextHolder
        .getBean(IStorePurchaseAO.class);

    private XN808244Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return storePurchaseAO.storePurchaseGD(req.getUserId(),
            req.getStoreCode(), StringValidater.toLong(req.getAmount()),
            req.getPayType());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808244Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getStoreCode(),
            req.getAmount(), req.getAmount());

    }

}
