package com.std.user.api.impl;

import com.std.user.ao.IRuleAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN807728Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 根据用户编号,查询举报次数
 * @author: xieyj 
 * @since: 2016年10月11日 上午9:45:51 
 * @history:
 */
public class XN807728 extends AProcessor {
    private IRuleAO ruleAO = SpringContextHolder.getBean(IRuleAO.class);

    private XN807728Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return ruleAO.getRuleByUserId(req.getUserId());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN807728Req.class);
        StringValidater.validateBlank(req.getUserId());
    }
}
