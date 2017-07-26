package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.IUReadBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.dao.IUReadDAO;
import com.std.user.domain.URead;
import com.std.user.enums.EUReadStatus;
import com.std.user.exception.BizException;

@Component
public class UReadBOImpl extends PaginableBOImpl<URead> implements IUReadBO {

    @Autowired
    private IUReadDAO uReadDAO;

    @Override
    public boolean isUReadExist(Integer id) {
        URead condition = new URead();
        condition.setId(id);
        if (uReadDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public void saveURead(String smsCode, String userId) {
        if (StringUtils.isNotBlank(smsCode) && StringUtils.isNotBlank(userId)) {
            URead data = new URead();
            data.setSmsCode(smsCode);
            data.setUserId(userId);
            data.setStatus(EUReadStatus.TOREAD.getCode());
            uReadDAO.insert(data);
        }
    }

    @Override
    public int refreshURead(URead data) {
        int count = 0;
        if (null != data) {
            data.setStatus(EUReadStatus.READ_YES.getCode());
            data.setReadDatetime(new Date());
            count = uReadDAO.update(data);
        }
        return count;
    }

    @Override
    public List<URead> queryUReadList(URead condition) {
        return uReadDAO.selectList(condition);
    }

    @Override
    public URead getURead(Integer id) {
        URead data = null;
        if (null != id) {
            URead condition = new URead();
            condition.setId(id);
            data = uReadDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "该编号不存在");
            }
        }
        return data;
    }

    @Override
    public int refreshUReadStatus(URead data) {
        int count = 0;
        if (null != data.getId()) {
            count = uReadDAO.updateStatus(data);
        }
        return count;
    }
}
