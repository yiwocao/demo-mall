/**
 * @Title XN808202.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午12:58:45 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import org.apache.commons.collections.CollectionUtils;

import com.xnjr.mall.ao.IStoreAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808202Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 店铺审核（OSS）
 * @author: myb858 
 * @since: 2017年4月3日 下午1:34:33 
 * @history:
 */
public class XN808202 extends AProcessor {
    private IStoreAO storeAO = SpringContextHolder.getBean(IStoreAO.class);

    private XN808202Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        for (String code : req.getStoreCodeList()) {
            storeAO.checkStore(code, req.getApproveResult(), req.getApprover(),
                req.getRemark());
        }
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808202Req.class);
        StringValidater
            .validateBlank(req.getApproveResult(), req.getApprover());
        if (CollectionUtils.isEmpty(req.getStoreCodeList())) {
            throw new BizException("xn000000", "店铺编号List不能为空");
        }
    }
}
