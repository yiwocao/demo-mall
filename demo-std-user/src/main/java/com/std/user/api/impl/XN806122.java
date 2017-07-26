package com.std.user.api.impl;

import com.std.user.ao.ICertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.Certificate;
import com.std.user.dto.req.XN806122Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 修改资质
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806122 extends AProcessor {
    private ICertificateAO certificateAO = SpringContextHolder
        .getBean(ICertificateAO.class);

    private XN806122Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Certificate data = new Certificate();
        data.setCode(req.getCode());
        data.setType(req.getType());
        data.setName(req.getName());
        data.setDescription(req.getDescription());
        data.setUpdater(req.getUpdater());
        data.setRemark(req.getRemark());
        int count = certificateAO.editCertificate(data);
        return new BooleanRes(count > 0 ? true : false);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806122Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
