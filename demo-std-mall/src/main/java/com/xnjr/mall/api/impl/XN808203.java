/**
 * @Title XN808203.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月18日 下午1:28:03 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStoreAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808203Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 店铺资料重提:一旦修改，进入待审核状态.(front)
 * @author: myb858 
 * @since: 2017年3月26日 下午3:02:31 
 * @history:
 */
public class XN808203 extends AProcessor {
    private IStoreAO storeAO = SpringContextHolder.getBean(IStoreAO.class);

    private XN808203Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        storeAO.editStoreFront(req);
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808203Req.class);
        StringValidater.validateBlank(req.getCode(), req.getName(),
            req.getType(), req.getRate1(), req.getRate2(), req.getSlogan(),
            req.getAdvPic(), req.getPic(), req.getDescription(),
            req.getProvince(), req.getCity(), req.getArea(), req.getAddress(),
            req.getLongitude(), req.getLatitude(), req.getBookMobile(),
            req.getSmsMobile(), req.getUpdater());
    }
}
