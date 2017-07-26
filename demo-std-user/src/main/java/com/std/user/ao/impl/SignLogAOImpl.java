package com.std.user.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.std.user.ao.ISignLogAO;
import com.std.user.bo.IAccountBO;
import com.std.user.bo.ILevelRuleBO;
import com.std.user.bo.IRuleBO;
import com.std.user.bo.ISignLogBO;
import com.std.user.bo.IUserBO;
import com.std.user.bo.base.Paginable;
import com.std.user.common.DateUtil;
import com.std.user.domain.LevelRule;
import com.std.user.domain.SignLog;
import com.std.user.domain.User;
import com.std.user.dto.res.XN805100Res;
import com.std.user.dto.res.XN805931Res;
import com.std.user.enums.EBizType;
import com.std.user.enums.ECurrency;
import com.std.user.enums.ERuleKind;
import com.std.user.enums.ERuleType;
import com.std.user.enums.ESysUser;
import com.std.user.enums.ESystemCode;
import com.std.user.exception.BizException;

@Service
public class SignLogAOImpl implements ISignLogAO {

    @Autowired
    private ISignLogBO signLogBO;

    @Autowired
    private IUserBO userBO;

    @Autowired
    private IRuleBO ruleBO;

    @Autowired
    private IAccountBO accountBO;

    @Autowired
    private ILevelRuleBO levelRuleBO;

    @Override
    @Transactional
    public XN805100Res addSignLog(String userId, String location) {
        User user = userBO.getUser(userId);
        // 判断是否已经签到
        Boolean result = signLogBO.isSignToday(userId);
        if (result) {
            throw new BizException("XN000000", "今日已签到，请明日再来哦");
        }
        // 添加签到记录
        String code = signLogBO.saveSignLog(userId, location,
            user.getSystemCode());
        Long amount = addAccountAmount(user);
        return new XN805100Res(code, amount);
    }

    /** 
     * 赠送账户金额
     * @param userId
     * @param user
     * @return 
     * @create: 2017年4月11日 上午10:58:05 xieyj
     * @history: 
     */
    private Long addAccountAmount(User user) {
        Long amount = 0L;
        if (ESystemCode.CSW.getCode().equals(user.getSystemCode())) {
            // 签到送钱
            amount = ruleBO.getRuleByCondition(ERuleKind.JF, ERuleType.MRQD,
                user.getLevel());
            accountBO.doTransferAmountRemote(ESysUser.SYS_USER_CSW.getCode(),
                user.getUserId(), ECurrency.JF, amount, EBizType.AJ_SIGN,
                "签到送赏金", "签到送赏金");
            Long totalAmount = accountBO.getAccountByUserId(user.getUserId(),
                ECurrency.JF);
            List<LevelRule> LevelRuleList = levelRuleBO.queryLevelRuleList(user
                .getSystemCode());
            for (LevelRule res : LevelRuleList) {
                if (totalAmount >= res.getAmountMin()
                        && totalAmount <= res.getAmountMax()) {
                    User udata = new User();
                    udata.setUserId(user.getUserId());
                    udata.setLevel(res.getCode());
                    userBO.refreshLevel(udata);
                    break;
                }
            }
        }
        return amount;
    }

    @Override
    public List<SignLog> querySignLogList(String userId,
            String signDatetimeStart, String signDatetimeEnd) {
        SignLog condition = new SignLog();
        condition.setUserId(userId);
        condition.setSignDatetimeStart(DateUtil.strToDate(signDatetimeStart,
            DateUtil.DATA_TIME_PATTERN_1));
        condition.setSignDatetimeEnd(DateUtil.strToDate(signDatetimeEnd,
            DateUtil.DATA_TIME_PATTERN_1));
        return signLogBO.querySignLogList(condition);
    }

    @Override
    public Paginable<SignLog> querySignLogPage(SignLog condition, int start,
            int limit) {
        return signLogBO.getPaginable(start, limit, condition);
    }

    /** 
     * @see com.std.user.ao.ISignLogAO#getSerialsSignDays(java.lang.String)
     */
    @Override
    public Long getSerialsSignDays(String userId) {
        return signLogBO.getSerialsSignDays(userId);
    }

    @Override
    @Transactional
    public XN805931Res signToday(String userId, String location, Long amount) {
        User user = userBO.getUser(userId);
        // 判断是否已经签到
        Boolean result = signLogBO.isSignToday(userId);
        if (result) {
            throw new BizException("XN000000", "今日已签到，请明日再来哦");
        }
        // 添加签到记录
        String code = signLogBO.saveSignLog(userId, location,
            user.getSystemCode());
        // 账户资金划拨
        accountBO.doTransferAmountRemote(user.getSystemCode(), userId,
            ECurrency.JF, amount, EBizType.AJ_SIGN, "每日签到", "每日签到");
        return new XN805931Res(code, amount);
    }
}
