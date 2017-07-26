package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStorePurchaseAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808243Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 菜狗O2O人民币+积分消费(front)
 * @author: myb858 
 * @since: 2017年4月5日 下午3:02:14 
 * @history:
 */
public class XN808243 extends AProcessor {
    private IStorePurchaseAO storePurchaseAO = SpringContextHolder
        .getBean(IStorePurchaseAO.class);

    private XN808243Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return storePurchaseAO.storePurchaseRMBJF(req.getUserId(),
            req.getStoreCode(), StringValidater.toLong(req.getAmount()),
            req.getPayType());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808243Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getStoreCode(),
            req.getAmount(), req.getAmount());

    }

}
