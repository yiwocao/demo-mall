package com.std.user.api.impl;

import com.std.user.ao.ICertificateAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.domain.Certificate;
import com.std.user.dto.req.XN806131Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 列表查询资质
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806131 extends AProcessor {
    private ICertificateAO certificateAO = SpringContextHolder
        .getBean(ICertificateAO.class);

    private XN806131Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Certificate condition = new Certificate();
        condition.setType(req.getType());
        condition.setName(req.getName());
        condition.setStatus(req.getStatus());
        condition.setUpdater(req.getUpdater());
        return certificateAO.queryCertificateList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806131Req.class);
    }
}
