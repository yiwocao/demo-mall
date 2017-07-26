package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.ICIntentionBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.EGeneratePrefix;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.ICIntentionDAO;
import com.std.user.domain.CIntention;
import com.std.user.enums.EBoolean;
import com.std.user.exception.BizException;

@Component
public class CIntentionBOImpl extends PaginableBOImpl<CIntention> implements
        ICIntentionBO {

    @Autowired
    private ICIntentionDAO cIntentionDAO;

    @Override
    public boolean isCIntentionExist(String code) {
        CIntention condition = new CIntention();
        condition.setCode(code);
        if (cIntentionDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveCIntention(CIntention data) {
        String code = null;
        if (data != null) {
            code = OrderNoGenerater.generate(EGeneratePrefix.YX.getCode());
            data.setCode(code);
            data.setStatus(EBoolean.NO.getCode());
            data.setUpdateDatetime(new Date());
            cIntentionDAO.insert(data);
        }
        return code;
    }

    @Override
    public int removeCIntention(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            CIntention data = new CIntention();
            data.setCode(code);
            count = cIntentionDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshCIntention(CIntention data) {
        int count = 0;
        if (StringUtils.isNotBlank(data.getCode())) {
            data.setUpdateDatetime(new Date());
            count = cIntentionDAO.update(data);
        }
        return count;
    }

    @Override
    public List<CIntention> queryCIntentionList(CIntention condition) {
        return cIntentionDAO.selectList(condition);
    }

    @Override
    public CIntention getCIntention(String code) {
        CIntention data = null;
        if (StringUtils.isNotBlank(code)) {
            CIntention condition = new CIntention();
            condition.setCode(code);
            data = cIntentionDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "该编号不存在");
            }
        }
        return data;
    }
}
