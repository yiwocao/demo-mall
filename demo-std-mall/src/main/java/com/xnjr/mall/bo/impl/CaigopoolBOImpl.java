package com.xnjr.mall.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.ICaigopoolBO;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.dao.ICaigopoolDAO;
import com.xnjr.mall.domain.Caigopool;
import com.xnjr.mall.exception.BizException;

@Component
public class CaigopoolBOImpl extends PaginableBOImpl<Caigopool> implements
        ICaigopoolBO {

    @Autowired
    private ICaigopoolDAO stockPoolDAO;

    @Override
    public Caigopool getCaigopool() {
        Caigopool result = null;
        Caigopool condition = new Caigopool();
        List<Caigopool> dataList = stockPoolDAO.selectList(condition);
        if (CollectionUtils.isNotEmpty(dataList)) {
            result = dataList.get(0);
        } else {
            throw new BizException("xn0000", "池不存在");
        }
        return result;
    }

    @Override
    public Caigopool getCaigopool(String code) {
        Caigopool data = null;
        if (StringUtils.isNotBlank(code)) {
            Caigopool condition = new Caigopool();
            condition.setCode(code);
            data = stockPoolDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", code + "对应的池不存在");
            }
        }
        return data;
    }

    @Override
    public int addAmount(Caigopool pool, Long amount, String addUser,
            String remark) {
        pool.setAmount(amount + pool.getAmount());
        pool.setAddUser(addUser);
        pool.setAddDatetime(new Date());
        pool.setRemark(remark);
        return stockPoolDAO.addAmount(pool);

    }

    @Override
    public int outAmount(Caigopool pool, Long highAmount) {
        pool.setAmount(pool.getAmount() - highAmount);
        pool.setUsedAmount(pool.getUsedAmount() + highAmount);
        return stockPoolDAO.outAmount(pool);

    }

    @Override
    public int changeRate(String code, Double rate) {
        Caigopool pool = new Caigopool();
        pool.setCode(code);
        pool.setRate(rate);
        return stockPoolDAO.changeRate(pool);
    }
}
