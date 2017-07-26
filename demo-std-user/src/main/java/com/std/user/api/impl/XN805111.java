package com.std.user.api.impl;

import com.std.user.ao.ILevelRuleAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805111Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 删除用户组(作废)
 * @author: zuixian 
 * @since: 2016年10月11日 下午6:57:07 
 * @history:
 */
public class XN805111 extends AProcessor {

    private ILevelRuleAO levelRuleAO = SpringContextHolder
        .getBean(ILevelRuleAO.class);

    private XN805111Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        int count = levelRuleAO.dropLevelRule(req.getCode());
        return new BooleanRes(count > 0 ? true : false);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805111Req.class);
        StringValidater.validateBlank(req.getCode());
    }

}
