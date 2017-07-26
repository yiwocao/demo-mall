/**
 * @Title XN808228.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午11:28:37 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.IUserTicketAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.UserTicket;
import com.xnjr.mall.dto.req.XN808265Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 我的折扣券分页查询
 * @author: haiqingzheng 
 * @since: 2016年12月18日 下午11:28:37 
 * @history:
 */
public class XN808265 extends AProcessor {
    private IUserTicketAO userTicketAO = SpringContextHolder
        .getBean(IUserTicketAO.class);

    private XN808265Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        UserTicket condition = new UserTicket();
        condition.setUserId(req.getUserId());
        condition.setStoreCode(req.getStoreCode());
        condition.setStatus(req.getStatus());
        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = IUserTicketAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return userTicketAO.queryUserTicketPage(start, limit, condition);
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808265Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getStart(),
            req.getLimit());
    }
}
