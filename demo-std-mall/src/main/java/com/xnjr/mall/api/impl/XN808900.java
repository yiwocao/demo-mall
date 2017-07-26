/**
 * @Title XNlh5010.java 
 * @Package com.xnjr.moom.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年4月17日 下午5:00:02 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.ISYSDictAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808900Req;
import com.xnjr.mall.dto.res.PKIdRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 新增第二层数据字典
 * @author: myb858 
 * @since: 2017年3月26日 上午9:08:19 
 * @history:
 */
public class XN808900 extends AProcessor {
    private ISYSDictAO sysDictAO = SpringContextHolder
        .getBean(ISYSDictAO.class);

    private XN808900Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        return new PKIdRes(sysDictAO.addSecondDict(req));
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808900Req.class);
        StringValidater.validateBlank(req.getParentKey(), req.getDkey(),
            req.getDvalue(), req.getUpdater(), req.getSystemCode(),
            req.getCompanyCode());
    }
}
