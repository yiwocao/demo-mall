package com.xnjr.mall.bo;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.Caigopool;
import com.xnjr.mall.domain.CaigopoolBack;
import com.xnjr.mall.domain.User;

public interface ICaigopoolBackBO extends IPaginableBO<CaigopoolBack> {

    public Long saveCaigopoolBack(Caigopool pool, User user, Long caigoAmount,
            String mobile, Long highAmount);

    public CaigopoolBack getCaigopoolBack(Long id);

}
