package com.std.user.api.impl;

import com.std.user.ao.ILevelRuleAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805114Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 详情查询用户组
 * @author: zuixian 
 * @since: 2016年10月11日 下午7:07:11 
 * @history:
 */
public class XN805114 extends AProcessor {
    private ILevelRuleAO levelRuleAO = SpringContextHolder
        .getBean(ILevelRuleAO.class);

    private XN805114Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return levelRuleAO.getLevelRule(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805114Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
