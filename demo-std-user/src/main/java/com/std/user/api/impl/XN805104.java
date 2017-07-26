package com.std.user.api.impl;

import com.std.user.ao.ISignLogAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805104Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 签到获取积分
 * @author: xieyj 
 * @since: 2017年3月3日 下午9:35:52 
 * @history:
 */
public class XN805104 extends AProcessor {

    private ISignLogAO signLogAO = SpringContextHolder
        .getBean(ISignLogAO.class);

    private XN805104Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return signLogAO.addSignLog(req.getUserId(), req.getLocation());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805104Req.class);
        StringValidater.validateBlank(req.getUserId());
    }
}
