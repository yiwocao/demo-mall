/**
 * @Title XN808406.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月19日 下午8:47:16 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import com.xnjr.mall.ao.IStockAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808417Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 我的分红权查询:显示不是“等待生效”的所有分红权，包含WILL_effect("2", "可以生效待生效"), ING_effect("3", "生效中"), DONE(
            "4", "结算完成")
 * @author: myb858 
 * @since: 2017年3月27日 下午6:49:42 
 * @history:
 */
public class XN808417 extends AProcessor {
    private IStockAO stockAO = SpringContextHolder.getBean(IStockAO.class);

    private XN808417Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        return stockAO.queryMyStockList(req.getUserId());
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808417Req.class);
        StringValidater.validateBlank(req.getUserId());
    }

}
