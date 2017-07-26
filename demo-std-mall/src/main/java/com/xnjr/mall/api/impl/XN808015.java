package com.xnjr.mall.api.impl;

import org.apache.commons.collections.CollectionUtils;

import com.xnjr.mall.ao.IProductAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808015Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 批量审核产品
 * @author: xieyj 
 * @since: 2016年12月17日 下午1:33:51 
 * @history:
 */
public class XN808015 extends AProcessor {

    private IProductAO productAO = SpringContextHolder
        .getBean(IProductAO.class);

    private XN808015Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        productAO.approveProduct(req.getCodeList(), req.getApproveResult(),
            req.getApprover(), req.getApproveNote());
        return new BooleanRes(true);
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808015Req.class);
        StringValidater
            .validateBlank(req.getApproveResult(), req.getApprover());
        if (CollectionUtils.isEmpty(req.getCodeList())) {
            throw new BizException("xn000000", "商品编号列表不能为空");
        }
    }
}
