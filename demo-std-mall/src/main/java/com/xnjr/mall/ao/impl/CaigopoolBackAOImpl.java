package com.xnjr.mall.ao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xnjr.mall.ao.ICaigopoolBackAO;
import com.xnjr.mall.bo.ICaigopoolBackBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.CaigopoolBack;

@Service
public class CaigopoolBackAOImpl implements ICaigopoolBackAO {
    @Autowired
    private ICaigopoolBackBO caigopoolBackBO;

    @Override
    public Paginable<CaigopoolBack> queryCaigopoolBackPage(int start,
            int limit, CaigopoolBack condition) {
        return caigopoolBackBO.getPaginable(start, limit, condition);
    }

    @Override
    public CaigopoolBack getCaigopoolBack(Long id) {
        return caigopoolBackBO.getCaigopoolBack(id);
    }

}
