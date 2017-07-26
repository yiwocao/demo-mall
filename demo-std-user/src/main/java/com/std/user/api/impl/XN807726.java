package com.std.user.api.impl;

import com.std.user.ao.IRuleAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Rule;
import com.std.user.dto.req.XN807726Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 列表查询规则
 * @author: xieyj 
 * @since: 2016年10月11日 上午9:44:16 
 * @history:
 */
public class XN807726 extends AProcessor {

    private IRuleAO ruleAO = SpringContextHolder.getBean(IRuleAO.class);

    private XN807726Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Rule condition = new Rule();
        condition.setKind(req.getKind());
        condition.setType(req.getType());
        condition.setLevel(req.getLevel());
        condition.setSystemCode(req.getSystemCode());
        return ruleAO.queryRuleList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN807726Req.class);
        StringValidater.validateBlank(req.getSystemCode());
    }
}
