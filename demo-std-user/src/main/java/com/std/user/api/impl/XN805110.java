package com.std.user.api.impl;

import com.std.user.ao.ILevelRuleAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.LevelRule;
import com.std.user.dto.req.XN805110Req;
import com.std.user.dto.res.PKCodeRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 新增用户组(作废)
 * @author: zuixian 
 * @since: 2016年10月11日 下午6:57:07 
 * @history:
 */
public class XN805110 extends AProcessor {

    private ILevelRuleAO levelRuleAO = SpringContextHolder
        .getBean(ILevelRuleAO.class);

    private XN805110Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        LevelRule data = new LevelRule();
        data.setName(req.getName());
        data.setAmountMin(StringValidater.toLong(req.getAmountMin()));
        data.setAmountMax(StringValidater.toLong(req.getAmountMax()));
        data.setEffect(req.getEffect());

        data.setUpdater(req.getUpdater());
        data.setRemark(req.getRemark());
        String code = levelRuleAO.addLevelRule(data);
        return new PKCodeRes(code);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805110Req.class);
        StringValidater.validateBlank(req.getName(), req.getAmountMin(),
            req.getAmountMax(), req.getEffect(), req.getUpdater());
    }
}
