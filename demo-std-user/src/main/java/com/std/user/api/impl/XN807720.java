package com.std.user.api.impl;

import com.std.user.ao.IRuleAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Rule;
import com.std.user.dto.req.XN807720Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 修改规则
 * @author: xieyj 
 * @since: 2016年10月10日 下午11:46:09 
 * @history:
 */
public class XN807720 extends AProcessor {

    private IRuleAO ruleAO = SpringContextHolder.getBean(IRuleAO.class);

    private XN807720Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Rule data = new Rule();
        data.setCode(req.getCode());
        data.setKind(req.getKind());
        data.setType(req.getType());
        data.setLevel(req.getLevel());
        data.setValue(req.getValue());
        data.setUpdater(req.getUpdater());
        data.setRemark(req.getRemark());
        ruleAO.editRule(data);
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN807720Req.class);
        StringValidater.validateBlank(req.getCode(), req.getKind(),
            req.getValue(), req.getUpdater());
    }
}
