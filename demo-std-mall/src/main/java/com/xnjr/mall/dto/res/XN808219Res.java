/**
 * @Title XN808215Req.java 
 * @Package com.xnjr.mall.dto.req 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年12月22日 下午6:29:08 
 * @version V1.0   
 */
package com.xnjr.mall.dto.res;

import com.xnjr.mall.domain.Store;

/** 
 * @author: haiqingzheng 
 * @since: 2016年12月22日 下午6:29:08 
 * @history:
 */
public class XN808219Res {
    private Store store;

    // 总收入
    private Long totalIncome;

    public Store getStore() {
        return store;
    }

    public void setStore(Store store) {
        this.store = store;
    }

    public Long getTotalIncome() {
        return totalIncome;
    }

    public void setTotalIncome(Long totalIncome) {
        this.totalIncome = totalIncome;
    }
}
