package com.std.user.api.impl;

import com.std.user.ao.IB2cSmsAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.domain.B2cSms;
import com.std.user.dto.req.XN805131Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 列表查询消息
 * @author: zuixian 
 * @since: 2016年10月11日 下午7:07:11 
 * @history:
 */
public class XN805131 extends AProcessor {
    private IB2cSmsAO b2cSmsAO = SpringContextHolder.getBean(IB2cSmsAO.class);

    private XN805131Req req = null;

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
        return b2cSmsAO.queryB2cSmsList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805131Req.class);
    }
}
