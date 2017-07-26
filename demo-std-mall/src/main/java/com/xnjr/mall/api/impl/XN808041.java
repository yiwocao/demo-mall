package com.xnjr.mall.api.impl;

import org.apache.commons.collections.CollectionUtils;

import com.xnjr.mall.ao.ICartAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.dto.req.XN808041Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 购物车批量删除
 * @author: xieyj 
 * @since: 2016年5月23日 上午9:04:12 
 * @history:
 */
public class XN808041 extends AProcessor {

    private ICartAO cartAO = SpringContextHolder.getBean(ICartAO.class);

    private XN808041Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        cartAO.dropCartList(req.getCartCodeList());
        return new BooleanRes(true);
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808041Req.class);
        if (CollectionUtils.sizeIsEmpty(req.getCartCodeList())) {
            throw new BizException("xn702000", "选中的购物车货物不能为空");
        }
    }
}
