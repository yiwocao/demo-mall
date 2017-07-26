package com.xnjr.mall.api.impl;


import com.xnjr.mall.ao.IBannerAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808074Req;
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
public class XN808074 extends AProcessor{
    private IBannerAO bannerAO = SpringContextHolder.getBean(IBannerAO.class);

    private XN808074Req req = null;


    @Override
    public Object doBusiness() throws BizException {
        return bannerAO.getBanner(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808074Req.class);
        StringValidater.validateBlank(req.getCode());
    }

}
