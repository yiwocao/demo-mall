package com.std.user.api.impl;

import com.std.user.ao.ICertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Certificate;
import com.std.user.dto.req.XN806120Req;
import com.std.user.dto.res.PKCodeRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 新增资质
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806120 extends AProcessor {
    private ICertificateAO certificateAO = SpringContextHolder
        .getBean(ICertificateAO.class);

    private XN806120Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Certificate data = new Certificate();
        data.setType(req.getType());
        data.setName(req.getName());
        data.setDescription(req.getDescription());
        data.setUpdater(req.getUpdater());
        data.setRemark(req.getRemark());
        String code = certificateAO.addCertificate(data);
        return new PKCodeRes(code);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806120Req.class);
        StringValidater.validateBlank(req.getType(), req.getName(),
            req.getUpdater(), req.getRemark());
    }
}
