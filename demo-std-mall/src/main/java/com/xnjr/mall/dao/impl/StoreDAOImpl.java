package com.xnjr.mall.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.xnjr.mall.dao.IStoreDAO;
import com.xnjr.mall.dao.base.support.AMybatisTemplate;
import com.xnjr.mall.domain.Store;

/** 
 * @author: zuixian 
 * @since: 2016年9月20日 下午1:03:09 
 * @history:
 */
@Repository("storeDAOImpl")
public class StoreDAOImpl extends AMybatisTemplate implements IStoreDAO {

    @Override
    public int insertStoreOss(Store data) {
        return super.insert(NAMESPACE.concat("insert_store_oss"), data);
    }

    @Override
    public int updateStoreOss(Store data) {
        return super.update(NAMESPACE.concat("update_store_oss"), data);
    }

    @Override
    public int insertStoreFront(Store data) {
        return super.insert(NAMESPACE.concat("insert_store_front"), data);
    }

    @Override
    public int updateStoreFront(Store data) {
        return super.update(NAMESPACE.concat("update_store_front"), data);
    }

    @Override
    public int insert(Store data) {
        return 0;
    }

    @Override
    public int delete(Store data) {
        return 0;
    }

    @Override
    public int updateCheck(Store data) {
        return super.update(NAMESPACE.concat("update_check"), data);
    }

    @Override
    public int updatePutOn(Store data) {
        return super.update(NAMESPACE.concat("update_putOn"), data);
    }

    @Override
    public int updatePutOff(Store data) {
        return super.update(NAMESPACE.concat("update_putOff"), data);
    }

    @Override
    public int updateOpenClose(Store data) {
        return super.update(NAMESPACE.concat("update_openClose"), data);
    }

    @Override
    public int updateLevel(Store data) {
        return super.update(NAMESPACE.concat("update_level"), data);
    }

    @Override
    public int updateTotalRmbNum(Store data) {
        return super.update(NAMESPACE.concat("update_totalRmbNum"), data);
    }

    @Override
    public int updateTotalJfNum(Store data) {
        return super.update(NAMESPACE.concat("update_totalJfNum"), data);
    }

    @Override
    public int updateTotalDzNum(Store data) {
        return super.update(NAMESPACE.concat("update_totalDzNum"), data);
    }

    @Override
    public int updateTotalScNum(Store data) {
        return super.update(NAMESPACE.concat("update_totalScNum"), data);
    }

    @Override
    public Store select(Store condition) {
        return super.select("select_store", condition, Store.class);
    }

    @Override
    public Long selectFrontTotalCount(Store condition) {
        return super.selectTotalCount("select_front_store_count", condition);
    }

    @Override
    public List<Store> selectFrontList(Store condition, int start, int count) {
        return super.selectList("select_front_store", start, count, condition,
            Store.class);
    }

    @Override
    public Long selectOssTotalCount(Store condition) {
        return super.selectTotalCount("select_oss_store_count", condition);
    }

    @Override
    public List<Store> selectOssList(Store condition, int start, int count) {
        return super.selectList("select_oss_store", start, count, condition,
            Store.class);
    }

    @Override
    public Long selectTotalCount(Store condition) {
        return super.selectTotalCount("select_store_count", condition);
    }

    @Override
    public List<Store> selectList(Store condition) {
        return super.selectList("select_store", condition, Store.class);
    }

    @Override
    public List<Store> selectList(Store condition, int start, int count) {
        return super.selectList("select_store", start, count, condition,
            Store.class);
    }

	@Override
	public int updateStoreDefault(Store data) {
		return super.update(NAMESPACE.concat("update_store_default"), data);
	}

}
