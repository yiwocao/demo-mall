package com.xnjr.mall.ao.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xnjr.mall.ao.ICaigopoolAO;
import com.xnjr.mall.bo.IAccountBO;
import com.xnjr.mall.bo.ICaigopoolBO;
import com.xnjr.mall.bo.ICaigopoolBackBO;
import com.xnjr.mall.bo.ISYSConfigBO;
import com.xnjr.mall.bo.IUserBO;
import com.xnjr.mall.bo.base.Paginable;
import com.xnjr.mall.common.AmountUtil;
import com.xnjr.mall.domain.Caigopool;
import com.xnjr.mall.domain.User;
import com.xnjr.mall.enums.EBizType;
import com.xnjr.mall.enums.ECurrency;
import com.xnjr.mall.enums.ESysUser;
import com.xnjr.mall.enums.EUserKind;
import com.xnjr.mall.exception.BizException;

@Service
public class CaigopoolAOImpl implements ICaigopoolAO {

    @Autowired
    private ICaigopoolBO caigopoolBO;

    @Autowired
    private ICaigopoolBackBO caigopoolBackBO;

    @Autowired
    private IAccountBO accountBO;

    @Autowired
    private ISYSConfigBO sysConfigBO;

    @Autowired
    private IUserBO userBO;

    @Override
    public Paginable<Caigopool> queryCaigopoolPage(int start, int limit,
            Caigopool condition) {
        return caigopoolBO.getPaginable(start, limit, condition);
    }

    @Override
    public Caigopool getCaigopool(String code) {
        return caigopoolBO.getCaigopool(code);
    }

    @Override
    public void addAmount(String code, Long amount, String addUser,
            String remark) {
        Caigopool pool = caigopoolBO.getCaigopool(code);
        caigopoolBO.addAmount(pool, amount, addUser, remark);
    }

    @Override
    public void changeRate(String code, Double rate) {
        caigopoolBO.changeRate(code, rate);
    }

    @Override
    @Transactional
    public String exchangeHighAmount(String mobile, String loginPwd,
            Long highAmount) {
        Caigopool pool = caigopoolBO.getCaigopool();
        if (null == pool) {
            throw new BizException("xn000000", "兑换池未添加，请联系菜狗平台");
        }
        if (pool.getAmount() < highAmount) {
            throw new BizException("xn000000", "可兑换嗨币不足，请联系菜狗平台");
        }
        // 根据手机号检查用户是否存在，不存在先注册
        String userId = userBO.isUserExist(mobile, EUserKind.F1,
            pool.getSystemCode());
        if (StringUtils.isBlank(userId)) {
            userId = userBO.doSaveCUser(mobile, loginPwd, "system", "嗨币代注册",
                pool.getSystemCode());
        }
        // 再在对应的菜狗币账户上根据汇率折算加上菜狗币；
        // 对“菜狗对接池”出金，
        caigopoolBO.outAmount(pool, highAmount);
        // 并记录出金记录
        User user = userBO.getRemoteUser(userId);
        Long caigoAmount = AmountUtil.mul(highAmount, pool.getRate());
        caigopoolBackBO.saveCaigopoolBack(pool, user, caigoAmount, mobile,
            highAmount);
        // 划转菜狗币给用户
        accountBO.doTransferAmountRemote(ESysUser.SYS_USER_CAIGO.getCode(),
            userId, ECurrency.CG_CGB, caigoAmount, EBizType.CG_HB2CGB, "用户"
                    + mobile + EBizType.CG_HB2CGB.getValue(),
            EBizType.CG_HB2CGB.getValue());
        return userId;
    }

}
