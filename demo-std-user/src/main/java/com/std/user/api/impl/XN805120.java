package com.std.user.api.impl;

import com.std.user.ao.IB2cSmsAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.B2cSms;
import com.std.user.dto.req.XN805120Req;
import com.std.user.dto.res.PKCodeRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 消息新增
 * @author: xieyj 
 * @since: 2016年10月13日 下午7:17:10 
 * @history:
 */
public class XN805120 extends AProcessor {

    private IB2cSmsAO b2cSmsAO = SpringContextHolder.getBean(IB2cSmsAO.class);

    private XN805120Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        B2cSms data = new B2cSms();
        data.setType(req.getType());
        data.setTitle(req.getTitle());
        data.setContent(req.getContent());
        data.setToCompany(req.getToCompany());
        data.setToLevel(req.getToLevel());
        data.setToUser(req.getToUser());
        data.setCompanyCode(req.getCompanyCode());
        data.setUpdater(req.getUpdater());
        data.setRemark(req.getRemark());
        String code = b2cSmsAO.addB2cSms(data);
        return new PKCodeRes(code);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805120Req.class);
        StringValidater.validateBlank(req.getType(), req.getTitle(),
            req.getCompanyCode(), req.getUpdater());
    }

}
