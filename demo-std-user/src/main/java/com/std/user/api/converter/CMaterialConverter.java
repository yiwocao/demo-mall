package com.std.user.api.converter;

import com.std.user.domain.CMaterial;
import com.std.user.dto.req.XN806100Req;
import com.std.user.dto.req.XN806102Req;

public class CMaterialConverter {

    // 新增素材
    public static CMaterial converter(XN806100Req req) {
        CMaterial result = new CMaterial();
        result.setKind(req.getKind());
        result.setType(req.getType());
        result.setTitle(req.getTitle());
        result.setPic1(req.getPic1());
        result.setPic2(req.getPic2());
        result.setUrl(req.getUrl());
        result.setDescription(req.getDescription());
        result.setEndNote(req.getEndNote());
        result.setRemark(req.getRemark());
        result.setMenuCode(req.getMenuCode());
        result.setCompanyCode(req.getCompanyCode());
        result.setSystemCode(req.getSystemCode());
        return result;
    }

    // 修改素材
    public static CMaterial converter(XN806102Req req) {
        CMaterial result = new CMaterial();
        result.setCode(req.getCode());
        result.setKind(req.getKind());
        result.setType(req.getType());
        result.setTitle(req.getTitle());
        result.setPic1(req.getPic1());
        result.setPic2(req.getPic2());
        result.setUrl(req.getUrl());
        result.setDescription(req.getDescription());
        result.setEndNote(req.getEndNote());
        result.setRemark(req.getRemark());
        result.setMenuCode(req.getMenuCode());
        return result;
    }
}
