package com.std.user.api.impl;

import com.std.user.ao.ICMaterialAO;
import com.std.user.api.AProcessor;
import com.std.user.api.converter.CMaterialConverter;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.CMaterial;
import com.std.user.dto.req.XN806100Req;
import com.std.user.dto.res.PKCodeRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 新增素材
 * @author: zuixian 
 * @since: 2016年10月13日 下午1:42:34 
 * @history:
 */
public class XN806100 extends AProcessor {
    private ICMaterialAO cMaterialAO = SpringContextHolder
        .getBean(ICMaterialAO.class);

    private XN806100Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        CMaterial data = CMaterialConverter.converter(req);
        String code = cMaterialAO.addCMaterial(data);
        return new PKCodeRes(code);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806100Req.class);
        StringValidater.validateBlank(req.getKind(), req.getMenuCode(),
            req.getTitle(), req.getPic1(), req.getCompanyCode(),
            req.getSystemCode());
    }
}
