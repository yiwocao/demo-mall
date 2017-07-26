package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStorePurchaseAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808242Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 菜狗O2O菜狗币消费(front)
 * @author: myb858 
 * @since: 2017年3月26日 下午2:08:56 
 * @history:
 */
public class XN808242 extends AProcessor {
    private IStorePurchaseAO storePurchaseAO = SpringContextHolder
        .getBean(IStorePurchaseAO.class);

    private XN808242Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return storePurchaseAO.storePurchaseCGB(req.getUserId(),
            req.getStoreCode(), StringValidater.toLong(req.getAmount()),
            req.getPayType());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808242Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getStoreCode(),
            req.getAmount(), req.getAmount());
    }

}
