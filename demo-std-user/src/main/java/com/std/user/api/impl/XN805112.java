package com.std.user.api.impl;

import com.std.user.ao.ILevelRuleAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.LevelRule;
import com.std.user.dto.req.XN805112Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 修改用户组
 * @author: zuixian 
 * @since: 2016年10月11日 下午6:57:07 
 * @history:
 */
public class XN805112 extends AProcessor {

    private ILevelRuleAO levelRuleAO = SpringContextHolder
        .getBean(ILevelRuleAO.class);

    private XN805112Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        LevelRule data = new LevelRule();
        data.setCode(req.getCode());
        data.setName(req.getName());
        data.setAmountMin(StringValidater.toLong(req.getAmountMin()));
        data.setAmountMax(StringValidater.toLong(req.getAmountMax()));
        data.setEffect(req.getEffect());

        data.setUpdater(req.getUpdater());
        data.setRemark(req.getRemark());
        int count = levelRuleAO.editLevelRule(data);
        return new BooleanRes(count > 0 ? true : false);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805112Req.class);
        StringValidater.validateBlank(req.getCode(), req.getName(),
            req.getEffect(), req.getUpdater());
        StringValidater.validateNumber(req.getAmountMin(), req.getAmountMax());
    }
}
