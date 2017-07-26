package com.xnjr.mall.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.ICaigopoolBackAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.CaigopoolBack;
import com.xnjr.mall.dto.req.XN808525Req;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 分页查询池出金记录
 * @author: myb858 
 * @since: 2017年3月28日 下午9:45:59 
 * @history:
 */
public class XN808525 extends AProcessor {
    private ICaigopoolBackAO caigopoolBackAO = SpringContextHolder
        .getBean(ICaigopoolBackAO.class);

    private XN808525Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        CaigopoolBack condition = new CaigopoolBack();
        condition.setPoolCode(req.getPoolCode());
        condition.setFromUser(req.getFromUser());
        condition.setToUser(req.getToUser());
        condition.setSystemCode(req.getSystemCode());
        condition.setCompanyCode(req.getCompanyCode());

        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = ICaigopoolBackAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return caigopoolBackAO.queryCaigopoolBackPage(start, limit, condition);
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808525Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit(),
            req.getSystemCode(), req.getCompanyCode());
    }

}
