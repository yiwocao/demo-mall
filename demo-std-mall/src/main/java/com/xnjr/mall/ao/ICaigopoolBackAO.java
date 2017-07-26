package com.xnjr.mall.ao;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.CaigopoolBack;

public interface ICaigopoolBackAO {
    static final String DEFAULT_ORDER_COLUMN = "id";

    public Paginable<CaigopoolBack> queryCaigopoolBackPage(int start,
            int limit, CaigopoolBack condition);

    public CaigopoolBack getCaigopoolBack(Long id);

}
