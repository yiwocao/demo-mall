package com.std.user.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.std.user.ao.IB2cSmsAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.B2cSms;
import com.std.user.dto.req.XN805130Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 分页查询消息
 * @author: zuixian 
 * @since: 2016年10月11日 下午7:07:11 
 * @history:
 */
public class XN805130 extends AProcessor {
    private IB2cSmsAO b2cSmsAO = SpringContextHolder.getBean(IB2cSmsAO.class);

    private XN805130Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        B2cSms condition = new B2cSms();
        condition.setType(req.getType());
        condition.setTitle(req.getTitle());
        condition.setToCompany(req.getToCompany());
        condition.setToLevel(req.getToLevel());
        condition.setToUser(req.getToUser());
        condition.setStatus(req.getStatus());
        condition.setCompanyCode(req.getCompanyCode());
        condition.setUpdater(req.getUpdater());
        String column = req.getOrderColumn();
        if (StringUtils.isBlank(column)) {
            column = IB2cSmsAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(column, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return b2cSmsAO.queryB2cSmsPage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805130Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit());
    }
}
