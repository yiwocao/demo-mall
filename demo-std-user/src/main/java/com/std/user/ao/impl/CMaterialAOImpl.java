package com.std.user.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.ICMaterialAO;
import com.std.user.bo.ICMaterialBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.CMaterial;
import com.std.user.exception.BizException;

@Service
public class CMaterialAOImpl implements ICMaterialAO {

    @Autowired
    private ICMaterialBO cMaterialBO;

    @Override
    public String addCMaterial(CMaterial data) {
        return cMaterialBO.saveCMaterial(data);
    }

    @Override
    public int editCMaterial(CMaterial data) {
        if (!cMaterialBO.isCMaterialExist(data.getCode())) {
            throw new BizException("xn0000", "该编号不存在");
        }
        return cMaterialBO.refreshCMaterial(data);
    }

    @Override
    public int dropCMaterial(String code) {
        if (!cMaterialBO.isCMaterialExist(code)) {
            throw new BizException("xn0000", "该编号不存在");
        }
        return cMaterialBO.removeCMaterial(code);
    }

    @Override
    public Paginable<CMaterial> queryCMaterialPage(int start, int limit,
            CMaterial condition) {
        return cMaterialBO.getPaginable(start, limit, condition);
    }

    @Override
    public List<CMaterial> queryCMaterialList(CMaterial condition) {
        return cMaterialBO.queryCMaterialList(condition);
    }

    @Override
    public CMaterial getCMaterial(String code) {
        return cMaterialBO.getCMaterial(code);
    }
}
