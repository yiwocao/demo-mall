/**
 * @Title XN808214Req.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午11:56:49 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStoreActionAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808240Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 对商家点赞/收藏，同时也是取消操作(front)
 * @author: myb858 
 * @since: 2017年3月26日 下午1:56:50 
 * @history:
 */
public class XN808240 extends AProcessor {
    private IStoreActionAO storeActionAO = SpringContextHolder
        .getBean(IStoreActionAO.class);

    private XN808240Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        storeActionAO.doAction(req.getStoreCode(), req.getUserId(),
            req.getType());
        return new BooleanRes(true);
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808240Req.class);
        StringValidater.validateBlank(req.getStoreCode(), req.getUserId(),
            req.getType());
    }

}
