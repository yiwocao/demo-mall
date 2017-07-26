package com.xnjr.mall.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.IStoreActionBO;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.dao.IStoreActionDAO;
import com.xnjr.mall.domain.StoreAction;
import com.xnjr.mall.enums.EGeneratePrefix;
import com.xnjr.mall.exception.BizException;

@Component
public class StoreActionBOImpl extends PaginableBOImpl<StoreAction> implements
        IStoreActionBO {

    @Autowired
    private IStoreActionDAO storeActionDAO;

    @Override
    public String saveStoreAction(String storeCode, String systemCode,
            String companyCode, String userId, String type) {
        String code = null;
        StoreAction data = new StoreAction();
        code = OrderNoGenerater.generateM(EGeneratePrefix.STORE_ACTION
            .getCode());
        data.setCode(code);
        data.setType(type);
        data.setActionUser(userId);
        data.setActionDatetime(new Date());
        data.setStoreCode(storeCode);

        data.setSystemCode(systemCode);
        data.setCompanyCode(companyCode);
        storeActionDAO.insert(data);
        return code;

    }

    @Override
    public int removeStoreAction(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            StoreAction data = new StoreAction();
            data.setCode(code);
            count = storeActionDAO.delete(data);
        }
        return count;
    }

    @Override
    public List<StoreAction> queryStoreActionList(StoreAction condition) {
        return storeActionDAO.selectList(condition);
    }

    @Override
    public StoreAction getStoreAction(String code) {
        StoreAction data = null;
        if (StringUtils.isNotBlank(code)) {
            StoreAction condition = new StoreAction();
            condition.setCode(code);
            data = storeActionDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "异常");
            }
        }
        return data;
    }

    @Override
    public StoreAction getStoreAction(String storeCode, String userId,
            String type) {
        StoreAction condition = new StoreAction();
        condition.setType(type);
        condition.setActionUser(userId);
        condition.setStoreCode(storeCode);
        List<StoreAction> list = queryStoreActionList(condition);
        if (CollectionUtils.isNotEmpty(list)) {
            return list.get(0);
        } else {
            return null;
        }
    }

}
