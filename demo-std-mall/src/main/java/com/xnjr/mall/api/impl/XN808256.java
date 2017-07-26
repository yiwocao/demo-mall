/**
 * @Title XN808226.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午11:04:13 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStoreTicketAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808256Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 详情查询折扣券
 * @author: haiqingzheng 
 * @since: 2016年12月18日 下午11:04:13 
 * @history:
 */
public class XN808256 extends AProcessor {
    private IStoreTicketAO storeTicketAO = SpringContextHolder
        .getBean(IStoreTicketAO.class);

    private XN808256Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        return storeTicketAO.getStoreTicket(req.getCode());
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808256Req.class);
        StringValidater.validateBlank(req.getCode());
    }

}
