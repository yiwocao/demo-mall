/**
 * @Title OrderAOImpl.java 
 * @Package com.xnjr.mall.ao.impl 
 * @Description 
 * @author xieyj  
 * @date 2016年5月25日 上午9:37:32 
 * @version V1.0   
 */
package com.xnjr.mall.ao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xnjr.mall.ao.IOrderAO;
import com.xnjr.mall.bo.IAccountBO;
import com.xnjr.mall.bo.ICartBO;
import com.xnjr.mall.bo.IDistributeBO;
import com.xnjr.mall.bo.IOrderBO;
import com.xnjr.mall.bo.IProductBO;
import com.xnjr.mall.bo.IProductOrderBO;
import com.xnjr.mall.bo.ISmsOutBO;
import com.xnjr.mall.bo.IStoreBO;
import com.xnjr.mall.bo.IUserBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.common.DateUtil;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.CalculationUtil;
import com.xnjr.mall.core.OrderNoGenerater;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dao.impl.OrderDAOImpl;
import com.xnjr.mall.domain.Account;
import com.xnjr.mall.domain.Cart;
import com.xnjr.mall.domain.Order;
import com.xnjr.mall.domain.Product;
import com.xnjr.mall.domain.ProductOrder;
import com.xnjr.mall.domain.Store;
import com.xnjr.mall.domain.User;
import com.xnjr.mall.dto.req.XN002512Req;
import com.xnjr.mall.dto.req.XN808050Req;
import com.xnjr.mall.dto.req.XN808051Req;
import com.xnjr.mall.dto.req.XN808054Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.dto.res.XN002512Res;
import com.xnjr.mall.enums.EBizType;
import com.xnjr.mall.enums.EChannelType;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.enums.EGeneratePrefix;
import com.xnjr.mall.enums.EOrderStatus;
import com.xnjr.mall.enums.EPayType;
import com.xnjr.mall.enums.ESysUser;
import com.xnjr.mall.enums.ESystemCode;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.http.BizConnecter;
import com.xnjr.mall.http.JsonUtils;

/** 
 * @author: xieyj 
 * @since: 2016年5月25日 上午9:37:32 
 * @history:
 */
@Service
public class OrderAOImpl implements IOrderAO {
    protected static final Logger logger = LoggerFactory
        .getLogger(OrderAOImpl.class);

    @Autowired
    private IOrderBO orderBO;

    @Autowired
    private IProductOrderBO productOrderBO;

    @Autowired
    private ICartBO cartBO;

    @Autowired
    private IUserBO userBO;

    @Autowired
    private IAccountBO accountBO;

    @Autowired
    private IProductBO productBO;

    @Autowired
    private ISmsOutBO smsOutBO;

    @Autowired
    private IStoreBO storeBO;

    @Autowired
    private IDistributeBO distributeBO;

    @Override
    @Transactional
    public List<String> commitCartOrderZH(XN808051Req req) {
        List<String> result = new ArrayList<String>();
        // 按公司编号进行拆单, 遍历获取公司编号列表
        List<String> cartCodeList = req.getCartCodeList();
        Map<String, List<Cart>> cartList = cartBO.getCartMap(cartCodeList);
        // 遍历产品编号
        for (String companyCode : cartList.keySet()) {
            req.getPojo().setCompanyCode(companyCode);
            String orderCode = orderBO.saveOrder(cartList.get(companyCode),
                req.getPojo(), null);
            result.add(orderCode);
        }
        // @TODO清空购物车
        // 删除购物车选中记录
        for (String cartCode : cartCodeList) {
            cartBO.removeCart(cartCode);
        }
        return result;
    }

    @Override
    @Transactional
    public String commitCartOrderCG(XN808051Req req) {
        List<String> cartCodeList = req.getCartCodeList();
        List<Cart> cartList = cartBO.queryCartList(cartCodeList);
        String orderCode = orderBO.saveOrder(cartList, req.getPojo(),
            req.getToUser());
        // 删除购物车选中记录
        for (String cartCode : cartCodeList) {
            cartBO.removeCart(cartCode);
        }
        return orderCode;
    }

    @Override
    @Transactional
    public String commitOrder(XN808050Req req) {
        // 立即下单，构造成购物车单个产品下单
        Product product = productBO.getProduct(req.getProductCode());
        req.getPojo().setCompanyCode(product.getCompanyCode());
        req.getPojo().setSystemCode(product.getSystemCode());

        Cart cart = new Cart();
        cart.setProductCode(req.getProductCode());
        cart.setQuantity(StringValidater.toInteger(req.getQuantity()));
        cart.setUserId(req.getPojo().getApplyUser());
        cart.setProduct(product);
        List<Cart> cartList = new ArrayList<Cart>();
        cartList.add(cart);

        return orderBO.saveOrder(cartList, req.getPojo(), product.getStoreCode());
    }

    @Override
    @Transactional
    public Object toPayOrder(List<String> codeList, String payType) {
        // 暂时只实现单笔订单支付
        String code = codeList.get(0);
        Order order = orderBO.getOrder(code);
        if (!EOrderStatus.TO_PAY.getCode().equals(order.getStatus())) {
            throw new BizException("xn000000", "订单不处于待支付状态");
        }
        if (ESystemCode.Caigo.getCode().equals(order.getSystemCode())) {
            return toPayOrderCG(order, payType);
        } else if (ESystemCode.ZHPAY.getCode().equals(order.getSystemCode())) {
            return toPayOrderZH(order, payType);
        } else if (ESystemCode.CSW.getCode().equals(order.getSystemCode())) {
            return toPayOrderCSW(order, payType);
        } else if (ESystemCode.PIPE.getCode().equals(order.getSystemCode())) {
            return toPayOrderGD(order, payType);
        } else {
            throw new BizException("xn000000", "系统编号不能识别");
        }
    }

    @Transactional
    public Object toPayOrderCG(Order order, String payType) {
        Long cgbAmount = order.getAmount2(); // 菜狗币
        Long jfAmount = order.getAmount3(); // 积分
        String systemCode = order.getSystemCode();
        String fromUserId = order.getApplyUser();
        // 余额支付(菜狗币+积分)
        if (EPayType.INTEGRAL.getCode().equals(payType)) {
            // 更新订单支付金额
            orderBO.refreshPaySuccess(order, 0L, 0L, cgbAmount, jfAmount, null);
            // 扣除金额
            if (StringUtils.isNotBlank(order.getToUser())) {// 付给加盟店
                accountBO.doCgbJfPay(fromUserId, order.getToUser(), cgbAmount,
                    jfAmount, EBizType.AJ_GW);
            } else {// 付钱给平台
                String systemUserId = userBO.getSystemUser(systemCode);
                accountBO.doCgbJfPay(fromUserId, systemUserId, cgbAmount,
                    jfAmount, EBizType.AJ_GW);
            }
        } else {
            throw new BizException("xn0000", "支付类型不支持");
        }
        return new BooleanRes(true);
    }

    @Transactional
    public Object toPayOrderZH(Order order, String payType) {
        Long cnyAmount = order.getAmount1() + order.getYunfei();// 人民币+运费
        Long gwbAmount = order.getAmount2();// 购物币
        Long qbbAmount = order.getAmount3();// 钱包币
        String systemCode = order.getSystemCode();
        String fromUserId = order.getApplyUser();
        // 余额支付
        if (EPayType.ZH_YE.getCode().equals(payType)) {
            // 计算需要支付得分润和贡献值，以及余额校验
            order = calculateToPayFrbAndGxz(order);
            Long frbAmount = order.getPayAmount1();
            Long gxzAmount = order.getPayAmount11();
            // 更新订单支付金额
            orderBO.refreshPaySuccess(order, frbAmount, gxzAmount, gwbAmount,
                qbbAmount, null);
            // 付钱给平台
            String systemUserId = userBO.getSystemUser(systemCode);
            accountBO.doZHYEPay(fromUserId, systemUserId, frbAmount, gxzAmount,
                gwbAmount, qbbAmount, EBizType.AJ_GW);
            return new BooleanRes(true);
        }
        if (EPayType.ALIPAY.getCode().equals(payType)) {
            // 检查购物币和钱包币是否充足
            accountBO.checkZHGwbQbb(fromUserId, gwbAmount, qbbAmount);
            // 生成payGroup,并把这组订单（orderCodeList）归为一组进行支付。
            String payGroup = orderBO.addPayGroup(order.getCode());
            return accountBO.doAlipayRemote(fromUserId,
                ESysUser.SYS_USER_ZHPAY.getCode(), cnyAmount, EBizType.AJ_GW,
                EBizType.AJ_GW.getValue(), EBizType.AJ_GW.getValue(), payGroup);
        } else {
            throw new BizException("xn0000", "支付类型不支持");
        }
    }

    private Order calculateToPayFrbAndGxz(Order order) {
        String fromUserId = order.getApplyUser();
        Long cnyAmount = order.getAmount1() + order.getYunfei();// 人民币+运费（可用分润币和贡献值抵用）
        Long gwbAmount = order.getAmount2();// 购物币
        Long qbbAmount = order.getAmount3();// 钱包币
        Account frbAccount = accountBO.getRemoteAccount(fromUserId,
            ECurrency.ZH_FRB);
        Double frbRate = accountBO.getExchangeRateRemote(ECurrency.ZH_FRB);
        Account gxzAccount = accountBO.getRemoteAccount(fromUserId,
            ECurrency.ZH_GXZ);
        Double gxzRate = accountBO.getExchangeRateRemote(ECurrency.ZH_GXZ);
        // 计算分润币和贡献值分别价值多少人民币
        Long frbAmount = frbAccount.getAmount() / frbRate.longValue();
        Long gxzAmount = gxzAccount.getAmount() / gxzRate.longValue();
        // 检验分润币、贡献值、购物币和钱包币是否充足
        accountBO.checkZHYE(fromUserId, frbAmount, gxzAmount, cnyAmount,
            gwbAmount, qbbAmount);
        // 计算需要扣除分贡献值和分润币，优先扣贡献值
        // 贡献值<0 直接扣分润
        if (gxzAmount <= 0L) {
            order.setPayAmount1(Double.valueOf((cnyAmount * frbRate))
                .longValue());
            order.setPayAmount11(0L);
        } else if (gxzAmount < cnyAmount) {
            // 0<贡献值<cnyAmount 先扣除所有贡献值，再扣分润
            order.setPayAmount1(Double.valueOf(
                (cnyAmount - gxzAmount) * frbRate).longValue());
            order.setPayAmount11(gxzAccount.getAmount());
        } else {// 贡献值>=cnyAmount 直接扣贡献值
            order.setPayAmount1(0L);
            order.setPayAmount11(Double.valueOf(cnyAmount * gxzRate)
                .longValue());
        }
        return order;
    }

    @Transactional
    public Object toPayOrderCSW(Order order, String payType) {
        // amount1 代表人民币账户 amount2，amount3代表积分金额
        Long jfAmount = order.getAmount2(); // 积分
        String systemCode = order.getSystemCode();
        String fromUserId = order.getApplyUser();
        // 积分支付
        if (EPayType.INTEGRAL.getCode().equals(payType)) {
            // 更新订单支付金额
            orderBO.refreshPaySuccess(order, 0L, 0L, jfAmount, 0L, null);
            // 扣除金额
            String systemUserId = userBO.getSystemUser(systemCode);
            accountBO.doCSWJfPay(fromUserId, systemUserId, jfAmount,
                EBizType.CSW_PAY);
        } else {
            throw new BizException("xn0000", "支付类型不支持");
        }
        return new BooleanRes(true);
    }

    @Transactional
    public Object toPayOrderGD(Order order, String payType) {
        Long jfAmount = order.getAmount3(); // 积分
        String systemCode = order.getSystemCode();
        String fromUserId = order.getApplyUser();
        // 积分支付
        if (EPayType.INTEGRAL.getCode().equals(payType)) {
            // 更新订单支付金额
            orderBO.refreshPaySuccess(order, 0L, 0L, 0L, jfAmount, null);
            // 扣除金额
            String systemUserId = userBO.getSystemUser(systemCode);
            accountBO.doCSWJfPay(fromUserId, systemUserId, jfAmount,
                EBizType.GD_MALL);
        } else {
            throw new BizException("xn0000", "支付类型不支持");
        }
        return new BooleanRes(true);
    }

    /** 
     * @see com.xnjr.mall.ao.IOrderAO#userCancel(java.lang.String, java.lang.String)
     */
    @Override
    public void userCancel(String code, String userId, String remark) {
        Order data = orderBO.getOrder(code);
        if (!userId.equals(data.getApplyUser())) {
            throw new BizException("xn0000", "订单申请人和取消操作用户不符");
        }
        if (!EOrderStatus.TO_PAY.getCode().equals(data.getStatus())) {
            throw new BizException("xn0000", "订单状态不是待支付状态，不能进行取消操作");
        }
        orderBO.userCancel(code, userId, remark);
    }

    /**
     * @see com.xnjr.mall.ao.IOrderAO#userCancel(java.lang.String, java.lang.String, java.lang.String)
     */
    @Override
    public void platCancel(List<String> codeList, String updater, String remark) {
        for (String code : codeList) {
            platCancelSingle(code, updater, remark);
        }
    }

    @Transactional
    private void platCancelSingle(String code, String updater, String remark) {
        Order order = orderBO.getOrder(code);
        if (!EOrderStatus.PAY_YES.getCode().equals(order.getStatus())
                && !EOrderStatus.SEND.getCode().equals(order.getStatus())) {
            throw new BizException("xn0000", "该订单支付成功或已发货状态，无法操作");
        }
        String status = null;
        if (EOrderStatus.PAY_YES.getCode().equals(order.getStatus())) {
            status = EOrderStatus.SHYC.getCode();
        } else if (EOrderStatus.SEND.getCode().equals(order.getStatus())) {
            status = EOrderStatus.KDYC.getCode();
        }

        // 退款
        if (ESystemCode.Caigo.getCode().equals(order.getSystemCode())) {
            doBackAmountCG(order);
        } else if (ESystemCode.ZHPAY.getCode().equals(order.getSystemCode())) {
            doBackAmountZH(order);
        } else if (ESystemCode.CSW.getCode().equals(order.getSystemCode())) {
            // 订单作废，金额不退还
        } else {
            throw new BizException("xn000000", "系统编号不能识别");
        }

        // 更新订单信息
        orderBO.platCancel(code, updater, remark, status);

        String userId = order.getApplyUser();
        // 发送短信
        if (!ESystemCode.CSW.getCode().equals(order.getSystemCode())) {
            smsOutBO.sentContent(userId, userId,
                "尊敬的用户，您的订单[" + order.getCode() + "]已取消,退款原因:[" + remark
                        + "],请及时查看退款。");
        } else {
            smsOutBO.sentContent(userId, userId,
                "尊敬的用户，您的订单[" + order.getCode() + "]已取消,原因:[" + remark + "]。");
        }
    }

    private void doBackAmountCG(Order order) {
        Long cgbAmount = order.getPayAmount2(); // 菜狗币
        Long jfAmount = order.getPayAmount3(); // 积分
        if (cgbAmount > 0) {
            accountBO.doTransferAmountRemote(order.getToUser(),
                order.getApplyUser(), ECurrency.CG_CGB, cgbAmount,
                EBizType.AJ_GWTK, EBizType.AJ_GWTK.getValue(),
                EBizType.AJ_GWTK.getValue());
        }
        if (jfAmount > 0) {
            accountBO.doTransferAmountRemote(order.getToUser(),
                order.getApplyUser(), ECurrency.JF, jfAmount, EBizType.AJ_GWTK,
                EBizType.AJ_GWTK.getValue(), EBizType.AJ_GWTK.getValue());
        }
    }

    private void doBackAmountZH(Order order) {
        Long frbAmount = order.getPayAmount1(); // 支付分润
        Long gxzAmount = order.getPayAmount11(); // 支付贡献奖励
        Long gwbAmount = order.getPayAmount2();// 购物币
        Long qbbAmount = order.getPayAmount3(); // 钱宝币
        if (frbAmount > 0) {
            accountBO.doTransferAmountRemote(ESysUser.SYS_USER_ZHPAY.getCode(),
                order.getApplyUser(), ECurrency.ZH_FRB, frbAmount,
                EBizType.AJ_GWTK, EBizType.AJ_GWTK.getValue(),
                EBizType.AJ_GWTK.getValue());
        }
        if (gxzAmount > 0) {
            accountBO.doTransferAmountRemote(ESysUser.SYS_USER_ZHPAY.getCode(),
                order.getApplyUser(), ECurrency.ZH_GXZ, gxzAmount,
                EBizType.AJ_GWTK, EBizType.AJ_GWTK.getValue(),
                EBizType.AJ_GWTK.getValue());
        }
        if (gwbAmount > 0) {
            accountBO.doTransferAmountRemote(ESysUser.SYS_USER_ZHPAY.getCode(),
                order.getApplyUser(), ECurrency.ZH_GWB, gwbAmount,
                EBizType.AJ_GWTK, EBizType.AJ_GWTK.getValue(),
                EBizType.AJ_GWTK.getValue());
        }
        if (qbbAmount > 0) {
            accountBO.doTransferAmountRemote(ESysUser.SYS_USER_ZHPAY.getCode(),
                order.getApplyUser(), ECurrency.ZH_QBB, qbbAmount,
                EBizType.AJ_GWTK, EBizType.AJ_GWTK.getValue(),
                EBizType.AJ_GWTK.getValue());
        }
    }

    /** 
     * @see com.xnjr.mall.ao.IOrderAO#queryOrderPage(int, int, com.xnjr.mall.domain.Order)
     */
    @Override
    public Paginable<Order> queryOrderPage(int start, int limit, Order condition) {
        Paginable<Order> page = orderBO.getPaginable(start, limit, condition);
        if (page != null && CollectionUtils.isNotEmpty(page.getList())) {
            for (Order order : page.getList()) {
                order.setUser(userBO.getRemoteUser(order.getApplyUser()));
                ProductOrder imCondition = new ProductOrder();
                imCondition.setOrderCode(order.getCode());
                List<ProductOrder> productOrderList = productOrderBO
                    .queryProductOrderList(imCondition);
                order.setProductOrderList(productOrderList);
                if (ESystemCode.ZHPAY.getCode().equals(order.getSystemCode())) {
                    order.setStore(storeBO.getStoreByUser(order
                        .getCompanyCode()));
                }
            }
        }
        return page;
    }

    @Override
    public Paginable<Order> queryMyOrderPage(int start, int limit,
            Order condition) {
        Paginable<Order> page = orderBO.getPaginable(start, limit, condition);
        if (page != null && CollectionUtils.isNotEmpty(page.getList())) {
            for (Order order : page.getList()) {
                ProductOrder imCondition = new ProductOrder();
                imCondition.setOrderCode(order.getCode());
                List<ProductOrder> productOrderList = productOrderBO
                    .queryProductOrderList(imCondition);
                order.setProductOrderList(productOrderList);
            }
        }
        return page;
    }

    /** 
     * @see com.xnjr.mall.ao.IOrderAO#queryOrderList(com.xnjr.mall.domain.Order)
     */
    @Override
    public List<Order> queryOrderList(Order condition) {
        List<Order> list = orderBO.queryOrderList(condition);
        if (CollectionUtils.isNotEmpty(list)) {
            for (Order order : list) {
                ProductOrder imCondition = new ProductOrder();
                imCondition.setOrderCode(order.getCode());
                List<ProductOrder> productOrderList = productOrderBO
                    .queryProductOrderList(imCondition);
                order.setProductOrderList(productOrderList);
            }
        }
        return list;
    }

    /** 
     * @see com.xnjr.mall.ao.IOrderAO#getOrder(java.lang.String)
     */
    @Override
    public Order getOrder(String code) {
        Order order = orderBO.getOrder(code);
        order.setUser(userBO.getRemoteUser(order.getApplyUser()));
        ProductOrder imCondition = new ProductOrder();
        imCondition.setOrderCode(order.getCode());
        List<ProductOrder> productOrderList = productOrderBO
            .queryProductOrderList(imCondition);
        order.setProductOrderList(productOrderList);
        if (ESystemCode.ZHPAY.getCode().equals(order.getSystemCode())) {
            order.setStore(storeBO.getStoreByUser(order.getCompanyCode()));
        }
        return order;
    }

    @Override
    @Transactional
    public void deliverLogistics(XN808054Req req) {
        Order order = orderBO.getOrder(req.getCode());
        if (!EOrderStatus.PAY_YES.getCode().equalsIgnoreCase(order.getStatus())) {
            throw new BizException("xn000000", "订单不是已支付状态，无法操作");
        }
        orderBO.deliverLogistics(req.getCode(), req.getLogisticsCompany(),
            req.getLogisticsCode(), req.getDeliverer(),
            req.getDeliveryDatetime(), req.getPdf(), req.getUpdater(),
            req.getRemark());

        // 发送短信
        String userId = order.getApplyUser();
        String notice = "";
        if (CollectionUtils.isNotEmpty(order.getProductOrderList())) {
            if (order.getProductOrderList().size() > 1) {
                notice = "尊敬的用户，您的订单["
                        + order.getCode()
                        + "]中的商品["
                        + order.getProductOrderList().get(0).getProduct()
                            .getName() + "等]已发货，请注意查收。";
            } else {
                notice = "尊敬的用户，您的订单["
                        + order.getCode()
                        + "]中的商品["
                        + order.getProductOrderList().get(0).getProduct()
                            .getName() + "]已发货，请注意查收。";
            }
            smsOutBO.sentContent(userId, userId, notice);
        }
    }

    @Override
    public void deliverXianchang(String code, String updater, String remark) {
        Order order = orderBO.getOrder(code);
        if (!EOrderStatus.PAY_YES.getCode().equalsIgnoreCase(order.getStatus())) {
            throw new BizException("xn000000", "该订单不是已支付状态，无法操作");
        }
        orderBO.deliverXianchang(code, updater, remark);
    }

    @Override
    @Transactional
    public void confirm(String code, String updater, String remark) {
        Order order = orderBO.getOrder(code);
        if (!EOrderStatus.SEND.getCode().equalsIgnoreCase(order.getStatus())) {
            throw new BizException("xn000000", "订单不是已发货状态，无法操作");
        }

        if (ESystemCode.ZHPAY.getCode().equals(order.getSystemCode())) {
            doConfirmZH(order, updater, remark);
        } else {
            doConfirm(order, updater, remark);
        }

    }

    @Transactional
    public void doConfirm(Order order, String updater, String remark) {
        orderBO.confirm(order, updater, remark);
        // 更新产品的已购买人数
        List<ProductOrder> productOrders = order.getProductOrderList();
        for (ProductOrder productOrder : productOrders) {
            productBO.updateBoughtCount(productOrder.getProductCode(),
                productOrder.getQuantity());
        }
    }

    @Transactional
    public void doConfirmZH(Order order, String updater, String remark) {
        orderBO.confirm(order, updater, remark);
        // 更新产品的已购买人数
        List<ProductOrder> productOrders = order.getProductOrderList();
        for (ProductOrder productOrder : productOrders) {
            productBO.updateBoughtCount(productOrder.getProductCode(),
                productOrder.getQuantity());
        }
        // 将分润给商家分润账户（购物币和钱包币由平台回收）
        Double frbRate = accountBO.getExchangeRateRemote(ECurrency.ZH_FRB);
        Long frbAmount = Double.valueOf(order.getAmount1() * frbRate)
            .longValue();
        accountBO.doTransferAmountRemote(ESysUser.SYS_USER_ZHPAY.getCode(),
            order.getCompanyCode(), ECurrency.ZH_FRB, frbAmount,
            EBizType.AJ_QRSH, EBizType.AJ_QRSH.getValue(),
            EBizType.AJ_QRSH.getValue());
        // 分销
        Store store = storeBO.getStoreByUser(order.getCompanyCode());
        User user = userBO.getRemoteUser(order.getApplyUser());
        distributeBO.distribute25Amount(frbAmount, order.getPayAmount1(),
            store, user);
        // 短信通知商户
        smsOutBO.sentContent(order.getCompanyCode(), order.getCompanyCode(),
            "尊敬的商户，订单号[" + order.getCode() + "]的用户已确认收货,本次收入分润："
                    + CalculationUtil.divi(frbAmount) + ",请注意查收!");
    }

    /**
     * @see com.xnjr.mall.ao.IOrderAO#paySuccess(java.lang.String)
     */
    @Override
    @Transactional
    public void paySuccess(String payGroup, String payCode, Long payAmount) {
        List<Order> orderList = orderBO.queryOrderListByPayGroup(payGroup);
        if (CollectionUtils.isEmpty(orderList)) {
            throw new BizException("XN000000", "找不到对应的订单记录");
        }
        Order order = orderList.get(0);
        if (EOrderStatus.TO_PAY.getCode().equals(order.getStatus())) {
            Long cnyAmount = order.getAmount1();// 人民币
            Long gwbAmount = order.getAmount2();// 购物币
            Long qbbAmount = order.getAmount3();// 钱包币
            // 扣除购物币和钱包币
            accountBO.doZHYEPay(order.getApplyUser(),
                ESysUser.SYS_USER_ZHPAY.getCode(), 0L, 0L, gwbAmount,
                qbbAmount, EBizType.AJ_GW);
            // 更新支付金额
            orderBO.refreshPaySuccess(order, cnyAmount, 0L, gwbAmount,
                qbbAmount, null);
            smsOutBO.sentContent(
                order.getApplyUser(),
                order.getApplyUser(),
                "您的订单" + order.getCode() + "已支付成功，支付金额为"
                        + CalculationUtil.divi(payAmount) + "元");
        } else {
            logger.info("订单号：" + order.getCode() + "已支付，重复回调");
        }

        // Order condition = new Order();
        // condition.setPayCode(payCode);
        // List<Order> result = orderBO.queryOrderList(condition);
        // if (CollectionUtils.isEmpty(result)) {
        // throw new BizException("XN000000", "找不到对应的消费记录");
        // }
        // String systemCode = null;
        // String applyUser = null;
        // Long gwAmount = 0L; // 购物币
        // Long qbAmount = 0L; // 钱包币
        // for (Order order : result) {
        // if (EOrderStatus.TO_PAY.getCode().equals(order.getStatus())) {
        // // 更新支付金额
        // orderBO.refreshOrderPayAmount(order.getCode(),
        // order.getAmount1(), order.getAmount2(), order.getAmount3());
        // } else {
        // logger.info("订单号：" + order.getCode() + "已支付，重复回调");
        // }
        // gwAmount += order.getAmount2(); // 购物币
        // qbAmount += order.getAmount3(); // 钱包币
        // if (StringUtils.isBlank(applyUser)) {
        // applyUser = order.getApplyUser();
        // systemCode = order.getSystemCode();
        // }
        // }
        // // 扣除金额(购物币和钱包币)
        // accountBO.doGWBQBBPay(systemCode, applyUser,
        // ESysUser.SYS_USER.getCode(), gwAmount, qbAmount, EBizType.AJ_GW);
    }
    
    //商品支付成功回调
    @Override
    @Transactional
    public void payMallSuccess(String payGroup, String payCode, Long payAmount) {
        List<Order> orderList = orderBO.queryOrderListByPayGroup(payGroup);
        if (CollectionUtils.isEmpty(orderList)) {
            throw new BizException("XN000000", "找不到对应的订单记录");
        }
        Order order = orderList.get(0);
        if (EOrderStatus.TO_PAY.getCode().equals(order.getStatus())) {
            orderBO.paySuccess(order, payCode, payAmount);
//            ProductOrder productOrder = new ProductOrder();
//            productOrder.setOrderCode(order.getCode());
//           List<ProductOrder> productOrderList  = productOrderBO.queryProductOrderList(productOrder);
//           for(ProductOrder item : productOrderList){
//        	   Product product = new Product();
//        	   product.setCode(item.getProductCode());
//        	   //减少库存
//           }
//            Activity activity = activityBO.getActivity(order.getProductCode());
////            activityBO.addSignNum(activity, activity.getSignNum() + 1);
//            activityBO.addSignNum(activity, activity.getSignNum() + order.getQuantity());
        } else {
            logger.info("订单号：" + order.getCode() + "，已成功支付,无需重复支付");
        }

    }

    /** 
     * @see com.xnjr.mall.ao.IOrderAO#doChangeOrderStatusDaily()
     */
    @Override
    public void doChangeOrderStatusDaily() {
        doChangeNoPayOrder();
    }

    private void doChangeNoPayOrder() {
        logger.info("***************开始扫描未支付订单***************");
        Order condition = new Order();
        condition.setStatus(EOrderStatus.TO_PAY.getCode());
        // 前3天还未支付的订单
        condition.setApplyDatetimeEnd(DateUtil.getRelativeDate(new Date(),
            -(60 * 60 * 24 * 3 + 1)));
        List<Order> orderList = orderBO.queryOrderList(condition);
        if (CollectionUtils.isNotEmpty(orderList)) {
            for (Order order : orderList) {
                orderBO.userCancel(order.getCode(), "system", "超时未支付，系统自动取消");

            }
        }
        logger.info("***************结束扫描未支付订单***************");
    }

    @Override
    @Transactional
    public Object orderPay(String orderCode, String payType) {
        Object result = null;
        Order order = orderBO.getOrder(orderCode);
        if (!EOrderStatus.TO_PAY.getCode().equals(order.getStatus())) {
            throw new BizException("xn0000", "该活动订单不处于待支付状态，不能进行支付操作");
        }
//        // 获取活动信息
//        Activity activity = activityBO.getActivity(order.getProductCode());
//        this.checkActivity(activity, order.getQuantity());

        // 获取用户信息
        String userId = order.getApplyUser();
        User user = userBO.getRemoteUser(userId);
        // 生成payGroup,并把订单进行支付。
        String payGroup = OrderNoGenerater.generateM(EGeneratePrefix.ORDER
            .getCode());
        orderBO.payGroup(order, payGroup);
        if (order.getAmount1() == 0L) {
            paySuccess(payGroup, null,order.getAmount1());
            return new BooleanRes(true);
        }
        if (EPayType.WEIXIN_H5.getCode().equals(payType)) {
            result = toPayWEIXIH5(order, user, payGroup);
        } else if (EPayType.WEIXIN_APP.getCode().equals(payType)) {
//            result = toPayWEIXIAPP(order, user, payGroup, activity);
        } else if (EPayType.YUER.getCode().equals(payType)) {
          result = toPayYUER(order, user, payGroup);
        }else {
            throw new BizException("xn000000", "暂不支持该种支付方式");
        }
        return result;
        	
    }
    
    //余额支付
    public Object toPayYUER(Order order,User user, String payGroup){
    	Account fromAccount = accountBO.getRemoteAccount(user.getUserId(), ECurrency.CNY);
    	Account toAccount = accountBO.getRemoteAccount(order.getToUser(), ECurrency.CNY);
   	    if(fromAccount.getAmount() < order.getAmount1()){
   	    	throw new BizException("xn000000", "用户余额不足");
   	    }
   	    String fromAccountNo = fromAccount.getAccountNumber();
   	    String toAccountNo = toAccount.getAccountNumber();
   	    String transAmount = String.valueOf(order.getAmount1());
   	    String channelType =EChannelType.YUER.getCode();
   	    XN002512Req req = new XN002512Req();
   	    req.setChannelType(channelType);
   	    req.setFromAccountNo(fromAccountNo);
   	    req.setToAccountNo(toAccountNo);
   	    req.setTransAmount(transAmount);
   	    req.setBizType(EBizType.YU_PAY.getCode());  	    
   	    req.setBizNote("用户"+user.getNickname()+"余额购买");
   	    req.setPayGroup(payGroup);
   	    
   	    String jsonStr = BizConnecter.getBizData("002512",
             JsonUtils.object2Json(req));
   	    XN002512Res res = JsonUtil.json2Bean(jsonStr, XN002512Res.class);
   	    if(StringUtils.isNotBlank(res.getJourCode())){
   	    	orderBO.paySuccess(order, res.getJourCode(), StringValidater.toLong(transAmount));  	    	
   	    }
   	    
   	    return true ;
   	    
    }
    
    public Object toPayWEIXIH5(Order order, User user, String payGroup
           ) {
//        XN806010Res company = companyBO.getCompany(activity.getCompanyCode());
        if (StringUtils.isBlank(user.getOpenId())) {
            throw new BizException("xn000000", "请先绑定微信");
        }
        return accountBO.doWeiXinH5PayRemote(user.getUserId(),
            user.getOpenId(), order.getToUser(), order.getAmount1(),
            EBizType.AJ_GW,
            "用户 " + user.getNickname() + "购买" , "用户 " + user.getNickname() + "购买"
                    ,
            payGroup);
    }

	@Override
	@Transactional
	public Object orderYuPay(String orderCode, String payType) {
		  Object result = null;
	        Order order = orderBO.getOrder(orderCode);
	        if (!EOrderStatus.TO_PAY.getCode().equals(order.getStatus())) {
	            throw new BizException("xn0000", "该订单不处于待支付状态，不能进行支付操作");
	        }
//	        // 获取活动信息
//	        Activity activity = activityBO.getActivity(order.getProductCode());
//	        this.checkActivity(activity, order.getQuantity());

	        // 获取用户信息
	        String userId = order.getApplyUser();
	        User user = userBO.getRemoteUser(userId);
	        // 生成payGroup,并把订单进行支付。
	        String payGroup = OrderNoGenerater.generateM(EGeneratePrefix.ORDER
	            .getCode());
	        orderBO.payGroup(order, payGroup);
	        if (order.getAmount1() == 0L) {
	            paySuccess(payGroup, null,order.getAmount1());
	            return new BooleanRes(true);
	        }
	        if(EPayType.YUER.getCode().equals(payType)) {
	          result = toPayYUER(order, user, payGroup);
	        }else {
	            throw new BizException("xn000000", "暂不支持该种支付方式");
	        }
	        return result;
	}

}
