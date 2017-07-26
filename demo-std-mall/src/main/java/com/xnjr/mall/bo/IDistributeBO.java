package com.xnjr.mall.bo;

import com.xnjr.mall.domain.Store;
import com.xnjr.mall.domain.User;

/**
 * 分销BO，专门用于分销
 * @author: myb858 
 * @since: 2017年4月4日 下午3:33:00 
 * @history:
 */
public interface IDistributeBO {

    void distribute1Amount(Long storeFrAmount, Store store, User user);

    void distribute10Amount(Long storeFrAmount, Store store, User user);

    void distribute25Amount(Long storeFrAmount, Long userFrAmount, Store store,
            User user);

}
