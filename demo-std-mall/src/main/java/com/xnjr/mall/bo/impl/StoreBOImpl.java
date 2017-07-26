package com.xnjr.mall.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.xnjr.mall.bo.IStoreBO;
import com.xnjr.mall.bo.IUserBO;
import com.xnjr.mall.bo.base.Page;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.dao.IStoreDAO;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.enums.EBoolean;
import com.xnjr.mall.enums.EStoreStatus;
import com.xnjr.mall.enums.ESystemCode;
import com.xnjr.mall.enums.EUserKind;
import com.xnjr.mall.exception.BizException;

/** 
 * 商家BO
 * @author: zuixian 
 * @since: 2016年9月20日 下午1:23:19 
 * @history:
 */
@Component
public class StoreBOImpl extends PaginableBOImpl<Store> implements IStoreBO {

    @Autowired
    private IStoreDAO storeDAO;

    @Autowired
    private IUserBO userBO;

    @Override
    public void saveStoreOss(Store store) {
        if (store != null) {
            storeDAO.insertStoreOss(store);
        }
    }

    @Override
    public int refreshStoreOss(Store data) {
        int count = 0;
        if (data != null) {
            count = storeDAO.updateStoreOss(data);
        }
        return count;
    }

    @Override
    public void saveStoreFront(Store data) {
        if (data != null) {
            storeDAO.insertStoreFront(data);
        }
    }

    @Override
    public int refreshStoreFront(Store data) {
        int count = 0;
        if (data != null) {
            count = storeDAO.updateStoreFront(data);
        }
        return count;
    }

    @Override
    public Store getStore(String code) {
        Store store = null;
        if (StringUtils.isNotBlank(code)) {
            Store condition = new Store();
            condition.setCode(code);
            store = storeDAO.select(condition);
            if (store == null) {
                throw new BizException("xn000000", "店铺不存在");
            }
        }
        return store;
    }

    @Override
    public List<Store> queryStoreList(Store data) {
        return storeDAO.selectList(data);
    }

    @Override
    public String isUserRefereeExist(String userReferee, String systemCode) {
        if (ESystemCode.ZHPAY.getCode().equals(systemCode)) {
            String userId = userBO.isUserExist(userReferee, EUserKind.F1,
                systemCode);
            if (StringUtils.isBlank(userId)) {
                throw new BizException("xn702002", "推荐人不存在");
            }
            return userId;
        } else {// 加盟商帮商家代注册，所以userReferee是加盟商的userId
            userBO.getRemoteUser(userReferee);
            return userReferee;
        }

    }

    @Override
    public void checkStore(Store dbStore, String checkResult, String checkUser,
            String remark) {
        if (EBoolean.NO.getCode().equals(checkResult)) {
            dbStore.setStatus(EStoreStatus.UNPASS.getCode());
        } else {
            dbStore.setStatus(EStoreStatus.PASS.getCode());
            // 第一次审核通过产生合同编号
            if (StringUtils.isBlank(dbStore.getContractNo())) {
                dbStore.setContractNo(OrderNoGenerater.generateM("ZHS-"));
            }
        }
        dbStore.setUpdater(checkUser);
        dbStore.setUpdateDatetime(new Date());
        dbStore.setRemark(remark);
        storeDAO.updateCheck(dbStore);

    }

    @Override
    public void checkStoreByUser(String bUser, String mobile) {
        Store condition = new Store();
        condition.setOwner(bUser);
        List<Store> list = this.queryStoreList(condition);
        if (CollectionUtils.isNotEmpty(list) && list.size() > 0) {
            throw new BizException("xn000000", "用户" + mobile + "已有店铺,无需再次申请");
        }
    }

    @Override
    public void putOn(Store dbStore) {
        if (dbStore != null && StringUtils.isNotBlank(dbStore.getCode())) {
            storeDAO.updatePutOn(dbStore);
        }
    }

    @Override
    public void putOff(Store dbStore) {
        if (dbStore != null && StringUtils.isNotBlank(dbStore.getCode())) {
            storeDAO.updatePutOff(dbStore);
        }
    }

    @Override
    public void openClose(Store dbStore) {
        if (dbStore != null && StringUtils.isNotBlank(dbStore.getCode())) {
            storeDAO.updateOpenClose(dbStore);
        }
    }

    @Override
    public void upLevel(Store dbStore) {
        if (dbStore != null && StringUtils.isNotBlank(dbStore.getCode())) {
            storeDAO.updateLevel(dbStore);
        }
    }

    /** 
     * @see com.xnjr.mall.bo.IStoreBO#refreshTotalRmbNum(com.xnjr.mall.domain.Store)
     */
    @Override
    public void refreshTotalRmbNum(Store data, Integer changeNum) {
        if (null != data && StringUtils.isNotBlank(data.getCode())) {
            data.setTotalRmbNum(data.getTotalRmbNum() + changeNum);
            storeDAO.updateTotalRmbNum(data);
        }
    }

    @Override
    public void refreshTotalJfNum(Store data, Integer changeNum) {
        if (null != data && StringUtils.isNotBlank(data.getCode())) {
            data.setTotalJfNum(data.getTotalJfNum() + changeNum);
            storeDAO.updateTotalJfNum(data);
        }
    }

    @Override
    public void refreshTotalDzNum(Store data, Integer changeNum) {
        if (null != data && StringUtils.isNotBlank(data.getCode())) {
            data.setTotalDzNum(data.getTotalDzNum() + changeNum);
            storeDAO.updateTotalDzNum(data);
        }
    }

    @Override
    public void refreshTotalScNum(Store data, Integer changeNum) {
        if (null != data && StringUtils.isNotBlank(data.getCode())) {
            data.setTotalScNum(data.getTotalScNum() + changeNum);
            storeDAO.updateTotalScNum(data);
        }
    }

    @Override
    public Paginable<Store> queryFrontPage(int start, int pageSize,
            Store condition) {
        long totalCount = storeDAO.selectFrontTotalCount(condition);
        Paginable<Store> page = new Page<Store>(start, pageSize, totalCount);
        List<Store> dataList = storeDAO.selectFrontList(condition,
            page.getStart(), page.getPageSize());
        page.setList(dataList);
        return page;
    }

    @Override
    public Paginable<Store> queryOssPage(int start, int pageSize,
            Store condition) {
        long totalCount = storeDAO.selectOssTotalCount(condition);
        Paginable<Store> page = new Page<Store>(start, pageSize, totalCount);
        List<Store> dataList = storeDAO.selectOssList(condition,
            page.getStart(), page.getPageSize());
        page.setList(dataList);
        return page;
    }

    /** 
     * @see com.xnjr.mall.bo.IStoreBO#getStoreByUser(java.lang.String)
     */
    @Override
    public Store getStoreByUser(String userId) {
        Store result = null;
        Store condition = new Store();
        condition.setOwner(userId);
        List<Store> dataList = storeDAO.selectList(condition);
        if (CollectionUtils.isNotEmpty(dataList)) {
            result = dataList.get(0);
        } else {
            throw new BizException("xn702002", "该用户没有店铺");
        }
        return result;
    }

	@Override
	public int refreshStoreDefaultStatus(Store data) {
		 int count = 0;
	        if (data != null) {
	            count = storeDAO.updateStoreDefault(data);
	        }
	        return count;
	}

}
