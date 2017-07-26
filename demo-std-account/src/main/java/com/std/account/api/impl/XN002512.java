package com.std.account.api.impl;

import com.std.account.ao.IAccountAO;
import com.std.account.api.AProcessor;
import com.std.account.common.JsonUtil;
import com.std.account.core.StringValidater;
import com.std.account.dto.req.XN002511Req;
import com.std.account.dto.req.XN002512Req;
import com.std.account.dto.res.BooleanRes;
import com.std.account.exception.BizException;
import com.std.account.exception.ParaException;
import com.std.account.spring.SpringContextHolder;

/**
 * 余额支付 支付成功回调
 * @author: asus 
 * @since: 2017年5月3日 下午9:07:29 
 * @history:
 */
public class XN002512 extends AProcessor {
    private IAccountAO accountAO = SpringContextHolder
        .getBean(IAccountAO.class);

    private XN002512Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return accountAO.transAmountYu(req.getFromAccountNo(), req.getToAccountNo(), 
        		req.getChannelType(), req.getTransAmount(), req.getBizType(), req.getBizNote(),req.getPayGroup());
        
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN002512Req.class);
        StringValidater.validateBlank(req.getFromAccountNo(),req.getToAccountNo(),
            req.getChannelType(), req.getTransAmount(), req.getBizType(),
            req.getBizNote(),req.getPayGroup());
    }

}
