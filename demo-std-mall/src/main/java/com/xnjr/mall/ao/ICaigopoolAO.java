package com.xnjr.mall.ao;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.Caigopool;

public interface ICaigopoolAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public void addAmount(String code, Long amount, String addUser,
            String remark);

    public void changeRate(String code, Double rate);

    public Paginable<Caigopool> queryCaigopoolPage(int start, int limit,
            Caigopool condition);

    public Caigopool getCaigopool(String code);

    public String exchangeHighAmount(String mobile, String loginPwd,
            Long highAmount);

}
