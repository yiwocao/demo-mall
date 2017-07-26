package com.std.user.api.impl;

import com.std.user.ao.ICompanyCertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.domain.CompanyCertificate;
import com.std.user.dto.req.XN806151Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 列表查询公司资质
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806151 extends AProcessor {
    private ICompanyCertificateAO companyCertificateAO = SpringContextHolder
        .getBean(ICompanyCertificateAO.class);

    private XN806151Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        CompanyCertificate condition = new CompanyCertificate();
        condition.setCertificateCode(req.getCertificateCode());
        condition.setCompanyCode(req.getCompanyCode());
        condition.setStatus(req.getStatus());
        condition.setApplyUser(req.getApplyUser());
        condition.setApproveUser(req.getApproveUser());
        condition.setProvinceForQuery(req.getProvince());
        condition.setCityForQuery(req.getCity());
        condition.setAreaForQuery(req.getArea());
        return companyCertificateAO.queryCompanyCertificateList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806151Req.class);
    }
}
