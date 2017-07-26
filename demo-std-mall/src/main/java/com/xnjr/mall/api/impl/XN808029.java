/**
 * @Title XN808029.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author leo(haiqing)  
 * @date 2017年4月6日 下午3:21:16 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStoreActionAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.StoreAction;
import com.xnjr.mall.dto.req.XN808029Req;
import com.xnjr.mall.enums.EStoreActionType;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 *  分页查询产品评价
 * @author: haiqingzheng 
 * @since: 2017年4月6日 下午3:21:16 
 * @history:
 */
public class XN808029 extends AProcessor {
    private IStoreActionAO storeActionAO = SpringContextHolder
        .getBean(IStoreActionAO.class);

    private XN808029Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        StoreAction condition = new StoreAction();
        condition.setStoreCode(req.getProductCode());
        condition.setType(EStoreActionType.PJ.getCode());
        condition.setOrder("action_datetime", "asc");
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return storeActionAO.queryStoreActionPage(start, limit, condition);
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808029Req.class);
        StringValidater.validateBlank(req.getProductCode(), req.getStart(),
            req.getLimit());
    }

}
