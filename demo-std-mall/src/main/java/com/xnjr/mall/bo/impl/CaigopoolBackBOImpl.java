package com.xnjr.mall.bo.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.ICaigopoolBackBO;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.dao.ICaigopoolBackDAO;
import com.xnjr.mall.domain.Caigopool;
import com.xnjr.mall.domain.CaigopoolBack;
import com.xnjr.mall.domain.User;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.exception.BizException;

@Component
public class CaigopoolBackBOImpl extends PaginableBOImpl<CaigopoolBack>
        implements ICaigopoolBackBO {
    @Autowired
    private ICaigopoolBackDAO caigopoolBackDAO;

    @Override
    public Long saveCaigopoolBack(Caigopool pool, User user, Long caigoAmount,
            String mobile, Long highAmount) {
        CaigopoolBack data = new CaigopoolBack();
        data.setPoolCode(pool.getCode());
        data.setPoolName(pool.getName());
        data.setFromUser(mobile);
        data.setFromAmount(highAmount);
        data.setFromCurrency(ECurrency.CG_EXT_HB.getCode());
        data.setToUser(user.getUserId());
        data.setToAmount(caigoAmount);
        data.setToCurrency(ECurrency.CG_CGB.getCode());
        data.setCreateDatetime(new Date());
        data.setCompanyCode(pool.getCompanyCode());
        data.setSystemCode(pool.getSystemCode());
        caigopoolBackDAO.insert(data);
        return data.getId();
    }

    @Override
    public CaigopoolBack getCaigopoolBack(Long id) {
        CaigopoolBack data = null;
        if (id != null) {
            CaigopoolBack condition = new CaigopoolBack();
            condition.setId(id);
            data = caigopoolBackDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "记录不存在");
            }
        }
        return data;
    }

}
