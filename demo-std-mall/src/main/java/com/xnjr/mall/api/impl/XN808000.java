package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.ICategoryAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808000Req;
import com.xnjr.mall.dto.res.PKCodeRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 新增类别，类别分为大类和小类，新增大类时，父节点填0
 * @author: xieyj 
 * @since: 2016年11月16日 下午5:18:26 
 * @history:
 */
public class XN808000 extends AProcessor {

    private ICategoryAO categoryAO = SpringContextHolder
        .getBean(ICategoryAO.class);

    private XN808000Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        String code = categoryAO.addCategory(req);
        return new PKCodeRes(code);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808000Req.class);
        StringValidater.validateBlank(req.getType(), req.getParentCode(),
            req.getName(), req.getSystemCode());
    }
}
