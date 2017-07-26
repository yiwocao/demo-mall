package com.std.user.api.impl;

import com.std.user.ao.ISignLogAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.dto.req.XN805103Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 获取连续签到次数
 * @author: xieyj 
 * @since: 2017年2月22日 上午10:47:29 
 * @history:
 */
public class XN805103 extends AProcessor {

    private ISignLogAO signLogAO = SpringContextHolder
        .getBean(ISignLogAO.class);

    private XN805103Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return signLogAO.getSerialsSignDays(req.getUserId());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805103Req.class);
    }
}
