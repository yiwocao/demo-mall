package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805075Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 修改昵称
 * @author: zuixian 
 * @since: 2016年9月19日 下午1:33:35 
 * @history:
 */
public class XN805075 extends AProcessor {

    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805075Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        userAO.editNickname(req.getUserId(), req.getNickname());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805075Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getNickname());
        StringValidater.validateEmoji(req.getNickname());
    }
}
