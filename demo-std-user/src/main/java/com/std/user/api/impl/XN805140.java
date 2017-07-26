package com.std.user.api.impl;

import com.std.user.ao.IUReadAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.URead;
import com.std.user.dto.req.XN805140Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 阅读广播
 * @author: zuixian 
 * @since: 2016年10月14日 上午10:19:50 
 * @history:
 */
public class XN805140 extends AProcessor {
    private IUReadAO uReadAO = SpringContextHolder.getBean(IUReadAO.class);

    private XN805140Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        URead data = new URead();
        data.setSmsCode(req.getSmsCode());
        data.setUserId(req.getUserId());
        int count = uReadAO.editURead(data);
        return new BooleanRes(count > 0 ? true : false);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805140Req.class);
        StringValidater.validateBlank(req.getSmsCode(), req.getUserId());
    }
}
