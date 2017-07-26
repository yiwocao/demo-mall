/**
 * @Title OrderBOImpl.java 
 * @Package com.xnjr.mall.bo.impl 
 * @Description 
 * @author xieyj  
 * @date 2016年5月25日 上午8:15:46 
 * @version V1.0   
 */
package com.xnjr.mall.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.xnjr.mall.bo.IOrderBO;
import com.xnjr.mall.bo.ISYSConfigBO;
import com.xnjr.mall.bo.IStoreBO;
import com.xnjr.mall.bo.base.PaginableBOImpl;
import com.xnjr.mall.common.DateUtil;
import com.xnjr.mall.common.SysConstants;
import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dao.IOrderDAO;
import com.xnjr.mall.dao.IProductOrderDAO;
import com.xnjr.mall.domain.Cart;
import com.xnjr.mall.domain.CommitOrderPOJO;
import com.xnjr.mall.domain.Order;
import com.xnjr.mall.domain.Product;
import com.xnjr.mall.domain.ProductOrder;
import com.xnjr.mall.domain.SYSConfig;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.enums.EGeneratePrefix;
import com.xnjr.mall.enums.EOrderStatus;
import com.xnjr.mall.enums.EOrderType;
import com.xnjr.mall.enums.ESystemCode;
import com.xnjr.mall.exception.BizException;

/** 
 * @author: xieyj 
 * @since: 2016年5月25日 上午8:15:46 
 * @history:
 */
@Component
public class OrderBOImpl extends PaginableBOImpl<Order> implements IOrderBO {

    protected static final Logger logger = LoggerFactory
        .getLogger(OrderBOImpl.class);

    @Autowired
    private IOrderDAO orderDAO;

    @Autowired
    private IProductOrderDAO productOrderDAO;

    @Autowired
    private ISYSConfigBO sysConfigBO;
    
    @Autowired
    private IStoreBO storeBO;

    /** 
     * @see com.xnjr.mall.bo.IOrderBO#userCancel(java.lang.String, java.lang.String)
     */
    @Override
    public int userCancel(String code, String userId, String remark) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Order data = new Order();
            data.setCode(code);
            data.setUpdater(userId);
            data.setUpdateDatetime(new Date());
            data.setRemark(remark);
            data.setStatus(EOrderStatus.YHYC.getCode());
            count = orderDAO.updateUserCancel(data);
        }
        return count;
    }

    @Override
    public int platCancel(String code, String updater, String remark,
            String status) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Order data = new Order();
            data.setCode(code);
            data.setUpdater(updater);
            data.setUpdateDatetime(new Date());
            data.setRemark(remark);
            data.setStatus(status);
            count = orderDAO.updatePlatCancel(data);
        }
        return count;
    }

    /** 
     * @see com.xnjr.mall.bo.IOrderBO#queryOrderList(com.xnjr.mall.domain.Order)
     */
    @Override
    public List<Order> queryOrderList(Order condition) {
        return orderDAO.selectList(condition);
    }

    /** 
     * @see com.xnjr.mall.bo.IOrderBO#getOrder(java.lang.String)
     */
    @Override
    public Order getOrder(String code) {
        Order data = null;
        if (StringUtils.isNotBlank(code)) {
            Order condition = new Order();
            condition.setCode(code);
            data = orderDAO.select(condition);
            if (data == null) {
                throw new BizException("xn0000", "订单编号不存在");
            }
            ProductOrder imCondition = new ProductOrder();
            imCondition.setOrderCode(code);
            List<ProductOrder> productOrderList = productOrderDAO
                .selectList(imCondition);
            data.setProductOrderList(productOrderList);
        }
        return data;
    }

    /** 
     * @see com.xnjr.mall.bo.IOrderBO#refreshOrderPayAmount(java.lang.String, java.lang.Long)
     */
    @Override
    public int refreshPaySuccess(Order order, Long payAmount1,
            Long payAmount11, Long payAmount2, Long payAmount3, String payCode) {
        int count = 0;
        if (order != null && StringUtils.isNotBlank(order.getCode())) {
            Date now = new Date();
            order.setStatus(EOrderStatus.PAY_YES.getCode());
            order.setPayDatetime(now);
            order.setPayAmount1(payAmount1);
            order.setPayAmount11(payAmount11);
            order.setPayAmount2(payAmount2);
            order.setPayAmount3(payAmount3);
            order.setPayCode(payCode);
            order.setUpdater(order.getApplyUser());
            order.setUpdateDatetime(now);
            order.setRemark("订单已成功支付");
            count = orderDAO.updatePaySuccess(order);
        }
        return count;
    }

    @Override
    public int deliverLogistics(String code, String logisticsCompany,
            String logisticsCode, String deliverer, String deliveryDatetime,
            String pdf, String updater, String remark) {
        Order order = new Order();
        order.setCode(code);
        order.setStatus(EOrderStatus.SEND.getCode());
        order.setDeliverer(deliverer);
        order.setDeliveryDatetime(DateUtil.strToDate(deliveryDatetime,
            DateUtil.DATA_TIME_PATTERN_1));
        order.setLogisticsCompany(logisticsCompany);
        order.setLogisticsCode(logisticsCode);
        order.setPdf(pdf);
        order.setUpdater(updater);
        order.setUpdateDatetime(new Date());
        order.setRemark(remark);
        return orderDAO.updateDeliverLogistics(order);
    }

    @Override
    public int deliverXianchang(String code, String updater, String remark) {
        Order order = new Order();
        order.setCode(code);
        order.setStatus(EOrderStatus.RECEIVE.getCode());
        order.setUpdater(updater);
        order.setUpdateDatetime(new Date());
        order.setRemark(remark);
        return orderDAO.updateDeliverXianchang(order);
    }

    @Override
    public int confirm(Order order, String updater, String remark) {
        int count = 0;
        if (order != null && StringUtils.isNotBlank(order.getCode())) {
            order.setStatus(EOrderStatus.RECEIVE.getCode());
            order.setUpdater(updater);
            order.setPayDatetime(new Date());
            order.setRemark(remark);
            count = orderDAO.updateConfirm(order);
        }
        return count;
    }

    @Override
    @Transactional
    public String saveOrder(List<Cart> cartList, CommitOrderPOJO pojo,
            String storeCode) {
        // 生成订单基本信息
        Order order = getOrderBasicInfo(storeCode, pojo);        
        Store store = storeBO.getStore(storeCode);
        order.setToUser(store.getOwner());
        // 计算订单金额
        Long amount1 = 0L;
        Long amount2 = 0L;
        Long amount3 = 0L;
        for (Cart cart : cartList) {
            Product product = cart.getProduct();
            if (null != product.getPrice1()) {
                amount1 = amount1 + (cart.getQuantity() * product.getPrice1());
            }
            if (null != product.getPrice2()) {
                amount2 = amount2 + (cart.getQuantity() * product.getPrice2());
            }
            if (null != product.getPrice3()) {
                amount3 = amount3 + (cart.getQuantity() * product.getPrice3());
            }
            // 落地订单产品关联信息
            saveProductOrder(order.getCode(), product, cart.getQuantity());
        }
        // 计算订单运费（菜狗暂时不考虑运费）
        Long yunfei = 0L;
        if (ESystemCode.ZHPAY.getCode().equals(pojo.getSystemCode())) {
            yunfei = totalYunfei(pojo.getSystemCode(), pojo.getSystemCode(),
                amount1);
        }
        // 计算订单金额
        order = getOrder(order, amount1, amount2, amount3, yunfei);
        // 落地订单
        orderDAO.insert(order);
        return order.getCode();
    }

    private Order getOrder(Order order, Long amount1, Long amount2,
            Long amount3, Long yunfei) {
        order.setAmount1(amount1);
        order.setAmount2(amount2);
        order.setAmount3(amount3);
        order.setYunfei(yunfei);
        order.setPayAmount1(0L);
        order.setPayAmount11(0L);
        order.setPayAmount2(0L);
        order.setPayAmount3(0L);
        return order;
    }

    private Order getOrderBasicInfo(String storeCode, CommitOrderPOJO pojo) {
        // 生成订单基本信息
        Order order = new Order();
        String code = OrderNoGenerater.generateME(EGeneratePrefix.ORDER
            .getCode());
        order.setCode(code);
        order.setType(EOrderType.SH_SALE.getCode());
        order.setStoreCode(storeCode);
        
        order.setReceiver(pojo.getReceiver());
        order.setReMobile(pojo.getReMobile());

        order.setReAddress(pojo.getReAddress());
        order.setReceiptType(pojo.getReceiptType());
        order.setReceiptTitle(pojo.getReceiptTitle());
        order.setApplyUser(pojo.getApplyUser());
        order.setApplyNote(pojo.getApplyNote());

        order.setApplyDatetime(new Date());
        order.setStatus(EOrderStatus.TO_PAY.getCode());
        order.setPromptTimes(0);
        order.setUpdater(pojo.getApplyUser());
        order.setUpdateDatetime(new Date());
        order.setRemark("订单新提交，待支付");
        order.setCompanyCode(pojo.getCompanyCode());
        order.setSystemCode(pojo.getSystemCode());
        return order;
    }

    private void saveProductOrder(String orderCode, Product product,
            Integer quantity) {
        ProductOrder productOrder = new ProductOrder();
        productOrder.setCode(OrderNoGenerater
            .generateM(EGeneratePrefix.PRODUCT_ORDER.getCode()));
        productOrder.setOrderCode(orderCode);
        productOrder.setProductCode(product.getCode());
        productOrder.setQuantity(quantity);
        productOrder.setPrice1(product.getPrice1());
        productOrder.setPrice2(product.getPrice2());
        productOrder.setPrice3(product.getPrice3());
        productOrder.setCompanyCode(product.getCompanyCode());
        productOrder.setSystemCode(product.getSystemCode());
        productOrderDAO.insert(productOrder);
    }

    private Long totalYunfei(String systemCode, String companyCode, Long amount) {
        Long yunfei = 0L;
        Long byje = 0L;
        // 取包邮金额
        SYSConfig byjeConfig = sysConfigBO.getSYSConfig(SysConstants.SP_BYJE,
            companyCode, systemCode);
        try {
            byje = StringValidater.toLong(byjeConfig.getCvalue()) * 1000;
        } catch (Exception e) {
            logger.error("包邮金额参数取值发生转换错误");
        }
        // 若订单金额小于包邮金额，则设置运费
        if (amount < byje) {
            SYSConfig yunfeiConfig = sysConfigBO.getSYSConfig(
                SysConstants.SP_YUNFEI, companyCode, systemCode);
            try {
                yunfei = (StringValidater.toLong(yunfeiConfig.getCvalue()) * 1000);
            } catch (Exception e) {
                logger.error("运费参数取值发生转换错误");
            }
        }
        return yunfei;
    }

    @Override
    public String addPayGroup(String code) {
        String payGroup = null;
        if (StringUtils.isNotBlank(code)) {
            Order data = new Order();
            data.setCode(code);
            payGroup = OrderNoGenerater.generateM(EGeneratePrefix.PAY_GROUP
                .getCode());
            data.setPayGroup(payGroup);
            orderDAO.updatePayGroup(data);
        }
        return payGroup;
    }

    @Override
    public List<Order> queryOrderListByPayGroup(String payGroup) {
        Order condition = new Order();
        condition.setPayGroup(payGroup);
        return orderDAO.selectList(condition);
    }
    
    
    @Override
    public void paySuccess(Order order, String payCode, Long amount) {
        order.setStatus(EOrderStatus.PAY_YES.getCode());
        order.setPayCode(payCode);
        order.setPayAmount1(amount);
        order.setPayDatetime(new Date());
        
        orderDAO.updateOrderPay(order);
    }
    
    @Override
    public void payGroup(Order order, String payGroup) {
        order.setPayGroup(payGroup);
        orderDAO.payGroup(order);
    }

}
