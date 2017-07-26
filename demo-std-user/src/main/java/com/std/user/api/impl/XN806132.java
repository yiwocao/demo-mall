package com.std.user.api.impl;

import com.std.user.ao.ICertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806132Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 详情查询资质
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806132 extends AProcessor {
    private ICertificateAO certificateAO = SpringContextHolder
        .getBean(ICertificateAO.class);

    private XN806132Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return certificateAO.getCertificate(req.getCode());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806132Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
