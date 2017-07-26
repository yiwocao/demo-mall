package com.xnjr.mall.api.impl;


import com.xnjr.mall.ao.IBannerAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.Banner;
import com.xnjr.mall.dto.req.XN808070Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 添加商城banner图
 * @author William
 * @since  2017年7月14日 下午1:38:48
 * @history
 */
public class XN808070 extends AProcessor{
	private IBannerAO bannerAO = SpringContextHolder.getBean(IBannerAO.class);
	
	private XN808070Req req = null;

	
	
    @Override
    public Object doBusiness() throws BizException {
    	Banner banner = new Banner();
    	banner.setName(req.getName());
    	banner.setOrderNo(req.getOrderNo());
    	banner.setLocation(req.getLocation());
    	banner.setPic(req.getPic());
    	banner.setUrl(req.getUrl());
    	banner.setRemark(req.getRemark());
    	
    	bannerAO.saveBanner(banner);
    	return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
    	 req = JsonUtil.json2Bean(inputparams, XN808070Req.class);
         StringValidater.validateBlank(req.getName(),
             req.getPic(), req.getLocation());
    }

}
