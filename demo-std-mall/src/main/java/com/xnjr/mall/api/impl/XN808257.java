/**
 * @Title XN808225.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午10:58:54 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStoreTicketAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.StoreTicket;
import com.xnjr.mall.dto.req.XN808257Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 列表查询折扣券
 * @author: haiqingzheng 
 * @since: 2016年12月18日 下午10:58:54 
 * @history:
 */
public class XN808257 extends AProcessor {
    private IStoreTicketAO storeTicketAO = SpringContextHolder
        .getBean(IStoreTicketAO.class);

    private XN808257Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        StoreTicket condition = new StoreTicket();
        condition.setName(req.getName());
        condition.setType(req.getType());
        condition.setStatus(req.getStatus());
        condition.setStoreCode(req.getStoreCode());
        condition.setCompanyCode(req.getCompanyCode());
        condition.setSystemCode(req.getSystemCode());
        return storeTicketAO.queryStoreTicketList(condition, req.getUserId());
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808257Req.class);
        StringValidater
            .validateBlank(req.getCompanyCode(), req.getSystemCode());
    }

}
