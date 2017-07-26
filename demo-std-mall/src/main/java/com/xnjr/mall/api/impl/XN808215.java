/**
 * @Title XN808207.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午3:13:25 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.IStoreAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.dto.req.XN808215Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * OSS分页查询店铺信息(OSS专用)
 * @author: haiqingzheng 
 * @since: 2016年12月18日 下午3:13:25 
 * @history:
 */
public class XN808215 extends AProcessor {
    private IStoreAO storeAO = SpringContextHolder.getBean(IStoreAO.class);

    private XN808215Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Store condition = new Store();
        condition.setName(req.getName());
        condition.setLevel(req.getLevel());
        condition.setType(req.getType());

        condition.setLegalPersonName(req.getLegalPersonName());
        condition.setUserReferee(req.getUserReferee());

        condition.setProvinceForQuery(req.getProvince());
        condition.setCityForQuery(req.getCity());
        condition.setAreaForQuery(req.getArea());

        condition.setStatus(req.getStatus());
        condition.setOwner(req.getOwner());
        condition.setUiLocation(req.getUiLocation());
        condition.setIsDefault(req.getIsDefault());

        condition.setSystemCode(req.getSystemCode());
        condition.setCompanyCode(req.getCompanyCode());
        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = IStoreAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return storeAO.queryStorePageOss(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808215Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit(),
            req.getSystemCode());
    }

}
