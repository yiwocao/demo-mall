package com.std.user.api.impl;

import com.std.user.ao.ICMaterialAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.CMaterial;
import com.std.user.dto.req.XN806111Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/** 
 * 列表查询素材
 * @author: zuixian 
 * @since: 2016年10月10日 下午3:58:13 
 * @history:
 */
public class XN806111 extends AProcessor {
    private ICMaterialAO cMaterialAO = SpringContextHolder
        .getBean(ICMaterialAO.class);

    private XN806111Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        CMaterial condition = new CMaterial();
        condition.setKind(req.getKind());
        condition.setTitle(req.getTitle());
        condition.setMenuCode(req.getMenuCode());
        condition.setCompanyCode(req.getCompanyCode());
        condition.setSystemCode(req.getSystemCode());
        return cMaterialAO.queryCMaterialList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN806111Req.class);
        StringValidater.validateBlank(req.getSystemCode());
    }
}
