package com.xnjr.mall.api.impl;


import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.IBannerAO;
import com.xnjr.mall.ao.IOrderAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.Banner;
import com.xnjr.mall.dto.req.XN808073Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 分页查询商城
 * banner图
 * @author William
 * @since  2017年7月14日 下午1:38:48
 * @history
 */
public class XN808073 extends AProcessor{
    private IBannerAO bannerAO = SpringContextHolder.getBean(IBannerAO.class);

    private XN808073Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Banner condition = new Banner();
        condition.setName(req.getName());
        condition.setBelong(req.getBelong());
        condition.setLocation(req.getLocation());
        condition.setCompanyCode(req.getCompanyCode());
        String orderColumn = req.getOrderColumn();
        if (StringUtils.isEmpty(orderColumn)) {
            orderColumn = IOrderAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return bannerAO.queryMallBannerPage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808073Req.class);
        StringValidater.validateNumber(req.getStart(), req.getLimit());
    }

}
