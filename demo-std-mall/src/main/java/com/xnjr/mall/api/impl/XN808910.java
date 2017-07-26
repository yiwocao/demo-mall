package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.ISYSConfigAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808910Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 修改系统参数
 * @author: xieyj 
 * @since: 2016年11月23日 下午5:54:40 
 * @history:
 */
public class XN808910 extends AProcessor {
    private ISYSConfigAO sysConfigAO = SpringContextHolder
        .getBean(ISYSConfigAO.class);

    private XN808910Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        sysConfigAO.editSYSConfig(StringValidater.toLong(req.getId()),
            req.getCvalue(), req.getUpdater(), req.getRemark());
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808910Req.class);
        StringValidater.validateBlank(req.getId(), req.getUpdater(),
            req.getCvalue());
    }

}
