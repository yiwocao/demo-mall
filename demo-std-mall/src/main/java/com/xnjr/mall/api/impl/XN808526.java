package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.ICaigopoolBackAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808526Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 详情查询池出金记录
 * @author: myb858 
 * @since: 2017年3月28日 下午9:46:15 
 * @history:
 */
public class XN808526 extends AProcessor {
    private ICaigopoolBackAO caigopoolBackAO = SpringContextHolder
        .getBean(ICaigopoolBackAO.class);

    private XN808526Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        return caigopoolBackAO.getCaigopoolBack(StringValidater.toLong(req
            .getId()));
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808526Req.class);
        StringValidater.validateBlank(req.getId());
    }

}
