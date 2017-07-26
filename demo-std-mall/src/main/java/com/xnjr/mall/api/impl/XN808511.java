package com.xnjr.mall.api.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.ICaigopoolBackAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.common.DateUtil;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.domain.CaigopoolBack;
import com.xnjr.mall.dto.req.XN808511Req;
import com.xnjr.mall.enums.EPoolCode;
import com.xnjr.mall.enums.ESystemCode;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 菜狗嗨币对接查询，供三方对账用
 * @author: myb858 
 * @since: 2017年4月7日 上午10:00:50 
 * @history:
 */
public class XN808511 extends AProcessor {
    private ICaigopoolBackAO caigopoolBackAO = SpringContextHolder
        .getBean(ICaigopoolBackAO.class);

    private XN808511Req req = null;

    /** 
     * @see com.xnjr.mall.api.IProcessor#doBusiness()
     */
    @Override
    public Object doBusiness() throws BizException {
        if (!"567890-87667890".equals(req.getToken())) {
            throw new BizException("XN808510", "token不正确");
        }
        if (!"C678987656789".equals(req.getCompanyCode())) {
            throw new BizException("XN808510", "参数公司编号不正确，请按要求填写完整");
        }
        if (!"S98765456789876".equals(req.getSystemCode())) {
            throw new BizException("XN808510", "参数系统编号不正确，请按要求填写完整");
        }
        CaigopoolBack condition = new CaigopoolBack();
        condition.setPoolCode(EPoolCode.highPool.getCode());
        condition.setFromUser(req.getMobile());
        condition.setCreateDatetimeStart(DateUtil.getFrontDate(
            req.getDateStart(), false));
        condition.setCreateDatetimeEnd(DateUtil.getFrontDate(req.getDateEnd(),
            true));
        condition.setSystemCode(ESystemCode.Caigo.getCode());
        condition.setCompanyCode(ESystemCode.Caigo.getCode());

        String orderColumn = req.getOrderColumn();
        if (StringUtils.isBlank(orderColumn)) {
            orderColumn = ICaigopoolBackAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(orderColumn, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        Paginable<CaigopoolBack> page = caigopoolBackAO.queryCaigopoolBackPage(
            start, limit, condition);
        if (null != page && CollectionUtils.isNotEmpty(page.getList())) {
            List<CaigopoolBack> cbList = page.getList();
            List<CaigopoolBack> resultList = new ArrayList<CaigopoolBack>();
            for (CaigopoolBack caigopoolBack : cbList) {
                CaigopoolBack result = new CaigopoolBack();
                result.setId(caigopoolBack.getId());
                result.setMobile(caigopoolBack.getFromUser());
                result.setHighAmount(caigopoolBack.getFromAmount());
                result.setCgbAmount(caigopoolBack.getToAmount());
                result.setCreateDatetime(caigopoolBack.getCreateDatetime());
                resultList.add(result);
            }
            page.setList(resultList);
        }
        return page;
    }

    /** 
     * @see com.xnjr.mall.api.IProcessor#doCheck(java.lang.String)
     */
    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808511Req.class);

        if (StringUtils.isBlank(req.getToken())) {
            throw new BizException("XN808511", "参数token必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getDateStart())) {
            throw new BizException("XN808511", "参数dateStart必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getDateEnd())) {
            throw new BizException("XN808511", "参数dateEnd必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getStart())) {
            throw new BizException("XN808511", "参数start必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getLimit())) {
            throw new BizException("XN808511", "参数limit必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getCompanyCode())) {
            throw new BizException("XN808511", "参数companyCode必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getSystemCode())) {
            throw new BizException("XN808511", "参数systemCode必填，请按要求填写完整");
        }
    }

}
