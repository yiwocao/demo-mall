package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.ICartAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.Cart;
import com.xnjr.mall.dto.req.XN808042Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 修改购物车型号
 * @author: xieyj 
 * @since: 2016年5月23日 上午9:04:12 
 * @history:
 */
public class XN808042 extends AProcessor {

    private ICartAO cartAO = SpringContextHolder.getBean(ICartAO.class);

    private XN808042Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        Cart data = new Cart();
        data.setCode(req.getCode());
        data.setQuantity(Integer.valueOf(req.getQuantity()));
        cartAO.editCart(req.getCode(), Integer.valueOf(req.getQuantity()));
        return new BooleanRes(true);
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808042Req.class);
        StringValidater.validateBlank(req.getCode());
        StringValidater.validateNumber(req.getQuantity());
    }
}
