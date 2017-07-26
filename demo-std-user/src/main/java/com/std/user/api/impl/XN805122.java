package com.std.user.api.impl;

import com.std.user.ao.IB2cSmsAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.B2cSms;
import com.std.user.dto.req.XN805122Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 消息修改
 * @author: xieyj 
 * @since: 2016年10月13日 下午7:17:10 
 * @history:
 */
public class XN805122 extends AProcessor {

    private IB2cSmsAO b2cSmsAO = SpringContextHolder.getBean(IB2cSmsAO.class);

    private XN805122Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        B2cSms data = new B2cSms();
        data.setCode(req.getCode());
        data.setType(req.getType());
        data.setTitle(req.getTitle());
        data.setContent(req.getContent());
        data.setToCompany(req.getToCompany());
        data.setToLevel(req.getToLevel());
        data.setToUser(req.getToUser());
        data.setUpdater(req.getUpdater());
        data.setRemark(req.getRemark());
        b2cSmsAO.editB2cSms(data);
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805122Req.class);
        StringValidater.validateBlank(req.getCode(), req.getType(),
            req.getTitle(), req.getUpdater());
    }
}
