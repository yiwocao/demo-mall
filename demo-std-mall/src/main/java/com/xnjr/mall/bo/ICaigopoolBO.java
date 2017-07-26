package com.xnjr.mall.bo;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.Caigopool;

public interface ICaigopoolBO extends IPaginableBO<Caigopool> {

    public Caigopool getCaigopool();

    public Caigopool getCaigopool(String code);

    public int addAmount(Caigopool pool, Long amount, String addUser,
            String remark);

    public int outAmount(Caigopool pool, Long highAmount);

    public int changeRate(String code, Double rate);

}
