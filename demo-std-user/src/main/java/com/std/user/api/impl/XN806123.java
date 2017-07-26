package com.std.user.api.impl;

import com.std.user.ao.ICertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806123Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 修改资质状态
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806123 extends AProcessor {
    private ICertificateAO certificateAO = SpringContextHolder
        .getBean(ICertificateAO.class);

    private XN806123Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        int count = certificateAO.editCertificateStatus(req.getCode(),
            req.getUpdater(), req.getRemark());
        return new BooleanRes(count > 0 ? true : false);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806123Req.class);
        StringValidater.validateBlank(req.getCode(), req.getUpdater());
    }
}
