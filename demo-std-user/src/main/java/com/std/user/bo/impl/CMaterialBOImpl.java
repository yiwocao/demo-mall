package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.ICMaterialBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.EGeneratePrefix;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.ICMaterialDAO;
import com.std.user.domain.CMaterial;
import com.std.user.exception.BizException;

@Component
public class CMaterialBOImpl extends PaginableBOImpl<CMaterial> implements
        ICMaterialBO {

    @Autowired
    private ICMaterialDAO cMaterialDAO;

    @Override
    public boolean isCMaterialExist(String code) {
        CMaterial condition = new CMaterial();
        condition.setCode(code);
        if (cMaterialDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveCMaterial(CMaterial data) {
        String code = null;
        if (data != null) {
            code = OrderNoGenerater.generate(EGeneratePrefix.SC.getCode());
            data.setCode(code);
            data.setCreateTime(new Date());
            cMaterialDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeCMaterial(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            CMaterial data = new CMaterial();
            data.setCode(code);
            count = cMaterialDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshCMaterial(CMaterial data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            data.setCreateTime(new Date());
            count = cMaterialDAO.update(data);
        }
        return count;
    }

    @Override
    public List<CMaterial> queryCMaterialList(CMaterial condition) {
        return cMaterialDAO.selectList(condition);
    }

    @Override
    public CMaterial getCMaterial(String code) {
        CMaterial data = null;
        if (StringUtils.isNotBlank(code)) {
            CMaterial condition = new CMaterial();
            condition.setCode(code);
            data = cMaterialDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "该编号不存在");
            }
        }
        return data;
    }
}
