/**
 * @Title IProductBO.java 
 * @Package com.xnjr.mall.bo 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年5月16日 下午9:04:57 
 * @version V1.0   
 */
package com.xnjr.mall.bo;

import java.util.List;

import com.xnjr.mall.bo.base.IPaginableBO;
import com.xnjr.mall.domain.Product;

/** 
 * @author: haiqingzheng 
 * @since: 2016年5月16日 下午9:04:57 
 * @history:
 */
public interface IProductBO extends IPaginableBO<Product> {

    public void saveProduct(Product product);

    public int removeProduct(String code);

    public int refreshProduct(Product product);

    public List<Product> queryProductList(Product condition);

    public Product getProduct(String code);

    public int approveProduct(String code, String approveResult,
            String approver, String approveNote);

    public int putOff(String code, String updater, String remark);

    public int putOn(Product product);

    public int updateBoughtCount(String productCode, Integer boughtCount);
}
