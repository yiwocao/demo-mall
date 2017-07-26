/**
 * @Title XN808227.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午11:07:53 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IUserTicketAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808260Req;
import com.xnjr.mall.dto.res.PKCodeRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 购买折扣券
 * @author: haiqingzheng 
 * @since: 2016年12月18日 下午11:07:53 
 * @history:
 */
public class XN808260 extends AProcessor {
    private IUserTicketAO userTicketAO = SpringContextHolder
        .getBean(IUserTicketAO.class);

    private XN808260Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        return new PKCodeRes(userTicketAO.buyTicket(req.getCode(),
            req.getUserId()));
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808260Req.class);
        StringValidater.validateBlank(req.getCode(), req.getUserId());
    }

}
