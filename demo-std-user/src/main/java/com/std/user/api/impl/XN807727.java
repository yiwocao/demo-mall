package com.std.user.api.impl;

import com.std.user.ao.IRuleAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN807727Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 详情查询规则
 * @author: xieyj 
 * @since: 2016年10月11日 上午9:45:51 
 * @history:
 */
public class XN807727 extends AProcessor {
    private IRuleAO ruleAO = SpringContextHolder.getBean(IRuleAO.class);

    private XN807727Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return ruleAO.getRule(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN807727Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
