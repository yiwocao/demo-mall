package com.xnjr.mall.api.impl;


import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.IBannerAO;
import com.xnjr.mall.ao.IOrderAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.domain.Banner;
import com.xnjr.mall.dto.req.XN808072Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 列表查询banner图
 * @author William
 * @since  2017年7月14日 下午1:38:48
 * @history
 */
public class XN808072 extends AProcessor{
	private IBannerAO bannerAO = SpringContextHolder.getBean(IBannerAO.class);
	
	private XN808072Req req = null;

    

    @Override
    public Object doBusiness() throws BizException {
    	Banner condition = new Banner();
    	condition.setLocation(req.getLocation());
    	String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = IOrderAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
    	
        return bannerAO
            .queryBannerList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808072Req.class);
        
    }

}
