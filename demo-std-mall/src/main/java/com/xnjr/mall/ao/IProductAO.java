/**
 * @Title IProductAO.java 
 * @Package com.xnjr.mall.ao 
 * @Description 
 * @author haiqingzheng  
 * @date 2016年5月16日 下午9:33:00 
 * @version V1.0   
 */
package com.xnjr.mall.ao;

import java.util.List;

import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.domain.Product;
import com.xnjr.mall.dto.req.XN808010Req;
import com.xnjr.mall.dto.req.XN808012Req;
import com.xnjr.mall.dto.req.XN808013Req;

/** 
 * @author: haiqingzheng 
 * @since: 2016年5月16日 下午9:33:00 
 * @history:
 */
public interface IProductAO {

    static final String DEFAULT_ORDER_COLUMN = "code";

    public void dropProduct(String code);

    public Paginable<Product> queryProductPage(int start, int limit,
            Product condition);

    public List<Product> queryProductList(Product condition);

    public Product getProduct(String code);

    /**
     * 审核多个产品
     * @param codeList
     * @param approveResult
     * @param approver
     * @param approveNote
     * @return 
     * @create: 2016年12月17日 下午1:28:31 xieyj
     * @history:
     */
    public void approveProduct(List<String> codeList, String approveResult,
            String approver, String approveNote);

    public String addProduct(XN808010Req req);

    public void editProduct(XN808012Req req);

    public void putOn(XN808013Req req);

    public void putOff(String code, String updater, String remark);

}
