package com.std.user.api.impl;

import com.std.user.ao.ILevelRuleAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.domain.LevelRule;
import com.std.user.dto.req.XN805115Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 列表查询用户组
 * @author: zuixian 
 * @since: 2016年10月11日 下午7:07:11 
 * @history:
 */
public class XN805115 extends AProcessor {
    private ILevelRuleAO levelRuleAO = SpringContextHolder
        .getBean(ILevelRuleAO.class);

    private XN805115Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        LevelRule condition = new LevelRule();
        condition.setName(req.getName());
        condition.setEffect(req.getEffect());
        condition.setSystemCode(req.getSystemCode());
        return levelRuleAO.queryLevelRuleList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805115Req.class);
    }
}
