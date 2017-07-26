package com.xnjr.mall.api.impl;

import org.apache.commons.collections.CollectionUtils;

import com.xnjr.mall.ao.IOrderAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808056Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 商户批量取消订单
 * @author: xieyj 
 * @since: 2016年5月23日 上午9:04:12 
 * @history:
 */
public class XN808056 extends AProcessor {

    private IOrderAO orderAO = SpringContextHolder.getBean(IOrderAO.class);

    private XN808056Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        orderAO
            .platCancel(req.getCodeList(), req.getUpdater(), req.getRemark());
        return new BooleanRes(true);

    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808056Req.class);
        if (CollectionUtils.isEmpty(req.getCodeList())) {
            throw new BizException("xn000000", "订单编号列表不能为空");
        }
        StringValidater.validateBlank(req.getUpdater());
    }
}
