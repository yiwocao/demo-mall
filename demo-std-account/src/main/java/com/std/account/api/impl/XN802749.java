package com.std.account.api.impl;

import com.std.account.ao.IWithdrawAO;
import com.std.account.api.AProcessor;
import com.std.account.common.JsonUtil;
import com.std.account.core.StringValidater;
import com.std.account.dto.req.XN802749Req;
import com.std.account.dto.res.PKCodeRes;
import com.std.account.exception.BizException;
import com.std.account.exception.ParaException;
import com.std.account.spring.SpringContextHolder;

/**
 * 取现申请
 * @author William
 * @since  2017年7月12日 下午2:08:18
 * @history
 */
public class XN802749 extends AProcessor {

    private IWithdrawAO withdrawAO = SpringContextHolder
        .getBean(IWithdrawAO.class);

    private XN802749Req req = null;

    @Override
    public synchronized Object doBusiness() throws BizException {
        Long amount = StringValidater.toLong(req.getAmount());
        String code = withdrawAO.applyOrder(req.getUserId(),amount,req.getApplyNote(),req.getSystemCode());
        return new PKCodeRes(code);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN802749Req.class);
        StringValidater.validateBlank(req.getUserId(),req.getSystemCode());
        StringValidater.validateAmount(req.getAmount());;
    }
}
