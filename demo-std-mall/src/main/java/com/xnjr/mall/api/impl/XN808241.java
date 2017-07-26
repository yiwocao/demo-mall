/**
 * @Title XN808210.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月19日 上午12:51:49 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStorePurchaseAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808241Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 正汇O2O消费(front)
 * @author: haiqingzheng 
 * @since: 2016年12月19日 上午12:51:49 
 * @history:
 */
public class XN808241 extends AProcessor {
    private IStorePurchaseAO storePurchaseAO = SpringContextHolder
        .getBean(IStorePurchaseAO.class);

    private XN808241Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        return storePurchaseAO.storePurchaseZH(req.getUserId(),
            req.getStoreCode(), StringValidater.toLong(req.getAmount()),
            req.getPayType(), req.getTicketCode());
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808241Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getStoreCode(),
            req.getAmount(), req.getAmount());
    }
}
