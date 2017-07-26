package com.std.user.api.impl;

import com.std.user.ao.ICMaterialAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN806101Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 删除素材
 * @author: zuixian 
 * @since: 2016年10月13日 下午1:42:34 
 * @history:
 */
public class XN806101 extends AProcessor {
    private ICMaterialAO cMaterialAO = SpringContextHolder
        .getBean(ICMaterialAO.class);

    private XN806101Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        int count = cMaterialAO.dropCMaterial(req.getCode());
        return new BooleanRes(count > 0 ? true : false);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806101Req.class);
        StringValidater.validateBlank(req.getCode());
    }
}
