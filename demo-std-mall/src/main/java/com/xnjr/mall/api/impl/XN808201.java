/**
 * @Title XN808201.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月17日 上午10:55:49 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStoreAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808201Req;
import com.xnjr.mall.dto.res.PKCodeRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 店铺提交(front)
 * @author: myb858 
 * @since: 2017年4月3日 下午1:34:49 
 * @history:
 */
public class XN808201 extends AProcessor {
    private IStoreAO storeAO = SpringContextHolder.getBean(IStoreAO.class);

    private XN808201Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        String code = storeAO.addStoreFront(req);
        return new PKCodeRes(code);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808201Req.class);
        StringValidater.validateBlank(req.getName(), req.getType(),
            req.getUserReferee(), req.getRate1(), req.getRate2(),
            req.getSlogan(), req.getAdvPic(), req.getPic(),
            req.getDescription(), req.getProvince(), req.getCity(),
            req.getArea(), req.getAddress(), req.getLongitude(),
            req.getLatitude(), req.getBookMobile(), req.getSmsMobile(),
            req.getOwner(), req.getSystemCode(), req.getCompanyCode());
    }

}
