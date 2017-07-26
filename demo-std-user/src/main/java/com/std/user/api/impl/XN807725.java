package com.std.user.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.std.user.ao.IRuleAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Rule;
import com.std.user.dto.req.XN807725Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 分页查询规则
 * @author: xieyj 
 * @since: 2016年10月11日 上午9:44:16 
 * @history:
 */
public class XN807725 extends AProcessor {

    private IRuleAO ruleAO = SpringContextHolder.getBean(IRuleAO.class);

    private XN807725Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Rule condition = new Rule();
        condition.setKind(req.getKind());
        condition.setType(req.getType());
        condition.setLevel(req.getLevel());
        condition.setSystemCode(req.getSystemCode());
        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = IRuleAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return ruleAO.queryRulePage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN807725Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit());
        StringValidater.validateBlank(req.getSystemCode());
    }
}
