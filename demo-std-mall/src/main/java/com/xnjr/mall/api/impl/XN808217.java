package com.xnjr.mall.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.IStoreAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.dto.req.XN808217Req;
import com.xnjr.mall.enums.EStoreStatus;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 分页查询店铺信息(front专用)
 * @author: myb858 
 * @since: 2017年3月25日 下午6:11:34 
 * @history:
 */
public class XN808217 extends AProcessor {
    private IStoreAO storeAO = SpringContextHolder.getBean(IStoreAO.class);

    private XN808217Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Store condition = new Store();
        condition.setFromUser(req.getUserId());
        condition.setName(req.getName());
        condition.setLevel(req.getLevel());
        condition.setType(req.getType());

        condition.setStatus(EStoreStatus.ON_OPEN.getCode());
        condition.setProvinceForQuery(req.getProvince());
        condition.setCityForQuery(req.getCity());
        condition.setAreaForQuery(req.getArea());
        condition.setLatitude(req.getLatitude());
        condition.setLongitude(req.getLongitude());
        condition.setIsDefault(req.getIsDefault());
        condition.setUiLocation(req.getUiLocation());

        condition.setSystemCode(req.getSystemCode());
        condition.setCompanyCode(req.getCompanyCode());

        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = IStoreAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return storeAO.queryStorePageFront(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808217Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit(),
            req.getSystemCode());
    }

}
