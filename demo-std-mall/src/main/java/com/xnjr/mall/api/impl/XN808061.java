package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IOrderAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808061Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.http.JsonUtils;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 支付(商品)订单
 * @author William
 * @since  2017年7月9日 下午3:20:13
 * @history
 */
public class XN808061 extends AProcessor {
	
	private IOrderAO orderAO = SpringContextHolder.getBean(IOrderAO.class);

    private XN808061Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return orderAO.orderPay(req.getOrderCode(), req.getPayType());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtils.json2Bean(inputparams, XN808061Req.class);
        StringValidater.validateBlank(req.getOrderCode(), req.getPayType());
    }

}
