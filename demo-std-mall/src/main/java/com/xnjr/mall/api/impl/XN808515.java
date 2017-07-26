/**
 * @Title XN808408.java 
 * @Package com.xnjr.mall.api.impl 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月19日 下午9:08:56 
 * @version V1.0   
 */
package com.xnjr.mall.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.ICaigopoolAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.Caigopool;
import com.xnjr.mall.dto.req.XN808515Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/** 
 * 分页查询池
 * @author: myb858 
 * @since: 2017年3月27日 下午6:33:14 
 * @history:
 */
public class XN808515 extends AProcessor {
    private ICaigopoolAO stockHoldAO = SpringContextHolder
        .getBean(ICaigopoolAO.class);

    private XN808515Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        Caigopool condition = new Caigopool();
        condition.setName(req.getName());
        condition.setType(req.getType());
        condition.setAddUser(req.getAddUser());
        condition.setSystemCode(req.getSystemCode());
        condition.setCompanyCode(req.getCompanyCode());

        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = ICaigopoolAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return stockHoldAO.queryCaigopoolPage(start, limit, condition);
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808515Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit(),
            req.getSystemCode(), req.getCompanyCode());
    }

}
