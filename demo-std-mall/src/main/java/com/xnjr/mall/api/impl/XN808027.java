/**
 * @Title XN601001.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年5月17日 上午9:06:30 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IProductAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.Product;
import com.xnjr.mall.dto.req.XN808027Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 列表查询产品
 * @author: haiqingzheng 
 * @since: 2016年5月17日 上午9:06:30 
 * @history:
 */
public class XN808027 extends AProcessor {

    private IProductAO productAO = SpringContextHolder
        .getBean(IProductAO.class);

    private XN808027Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        Product condition = new Product();
        condition.setName(req.getName());
        condition.setCategory(req.getCategory());
        condition.setType(req.getType());
        condition.setStatus(req.getStatus());
        condition.setLocation(req.getLocation());

        condition.setCompanyCode(req.getCompanyCode());
        condition.setSystemCode(req.getSystemCode());
        return productAO.queryProductList(condition);
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808027Req.class);
        StringValidater
            .validateBlank(req.getSystemCode(), req.getCompanyCode());
    }

}
