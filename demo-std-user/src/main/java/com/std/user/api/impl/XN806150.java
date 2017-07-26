package com.std.user.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.std.user.ao.ICompanyCertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.CompanyCertificate;
import com.std.user.dto.req.XN806150Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 分页查询公司资质
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806150 extends AProcessor {
    private ICompanyCertificateAO companyCertificateAO = SpringContextHolder
        .getBean(ICompanyCertificateAO.class);

    private XN806150Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        CompanyCertificate condition = new CompanyCertificate();
        condition.setCertificateCode(req.getCertificateCode());
        condition.setCertificateType(req.getCertificateType());
        condition.setCompanyCode(req.getCompanyCode());
        condition.setCompanyName(req.getCompanyName());
        condition.setStatus(req.getStatus());
        condition.setApplyUser(req.getApplyUser());
        condition.setApproveUser(req.getApproveUser());
        condition.setProvinceForQuery(req.getProvince());
        condition.setCityForQuery(req.getCity());
        condition.setAreaForQuery(req.getArea());
        String column = req.getOrderColumn();
        if (StringUtils.isBlank(column)) {
            column = ICompanyCertificateAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(column, req.getOrderDir());
        int start = StringValidater.toInteger(req.getStart());
        int limit = StringValidater.toInteger(req.getLimit());
        return companyCertificateAO.queryCompanyCertificatePage(start, limit,
            condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806150Req.class);
        StringValidater.validateBlank(req.getStart(), req.getLimit());
    }
}
