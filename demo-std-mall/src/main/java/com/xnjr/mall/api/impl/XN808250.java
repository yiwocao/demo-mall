/**
 * @Title XN808220.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午9:06:39 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStoreTicketAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808250Req;
import com.xnjr.mall.dto.res.PKCodeRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 新增折扣券(front)
 * @author: haiqingzheng 
 * @since: 2016年12月18日 下午9:06:39 
 * @history:
 */
public class XN808250 extends AProcessor {
    private IStoreTicketAO storeTicketAO = SpringContextHolder
        .getBean(IStoreTicketAO.class);

    private XN808250Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return new PKCodeRes(storeTicketAO.addStoreTicket(req));
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808250Req.class);
        StringValidater.validateBlank(req.getName(), req.getType(),
            req.getDescription(), req.getPrice(), req.getCurrency(),
            req.getValidateStart(), req.getValidateEnd(), req.getIsPutaway(),
            req.getStoreCode(), req.getCompanyCode(), req.getSystemCode());
    }

}
