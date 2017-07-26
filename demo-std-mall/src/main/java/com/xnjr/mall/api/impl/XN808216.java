/**
 * @Title XN808209.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午3:51:26 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStoreAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808216Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * OSS详情查询店铺信息(OSS专用)
 * @author: haiqingzheng 
 * @since: 2016年12月18日 下午3:51:26 
 * @history:
 */
public class XN808216 extends AProcessor {
    private IStoreAO storeAO = SpringContextHolder.getBean(IStoreAO.class);

    private XN808216Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return storeAO.getStoreOss(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808216Req.class);
        StringValidater.validateBlank(req.getCode());
    }

}
