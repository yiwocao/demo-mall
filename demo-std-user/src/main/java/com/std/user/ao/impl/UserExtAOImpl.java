package com.std.user.ao.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.std.user.ao.IUserExtAO;
import com.std.user.bo.IAccountBO;
import com.std.user.bo.ILevelRuleBO;
import com.std.user.bo.IRuleBO;
import com.std.user.bo.IUserBO;
import com.std.user.bo.IUserExtBO;
import com.std.user.domain.LevelRule;
import com.std.user.domain.User;
import com.std.user.domain.UserExt;
import com.std.user.enums.EBizType;
import com.std.user.enums.ECurrency;
import com.std.user.enums.ERuleKind;
import com.std.user.enums.ERuleType;
import com.std.user.enums.ESysUser;
import com.std.user.enums.ESystemCode;

@Service
public class UserExtAOImpl implements IUserExtAO {

    @Autowired
    private IUserExtBO userExtBO;

    @Autowired
    protected IUserBO userBO;

    @Autowired
    protected IRuleBO ruleBO;

    @Autowired
    private IAccountBO accountBO;

    @Autowired
    private ILevelRuleBO levelRuleBO;

    @Override
    @Transactional
    public void editUserExtAddJf(UserExt data) {
        User user = userBO.getUser(data.getUserId());
        UserExt userExt = userExtBO.getUserExt(data.getUserId());
        if (StringUtils.isBlank(userExt.getGender())
                && StringUtils.isBlank(userExt.getBirthday())
                && StringUtils.isBlank(userExt.getEmail())) {
            doAddAmount(user, ERuleType.ZLWS_FIRST);
        }
        userExtBO.refreshUserExt(data);
    }

    @Override
    public int editUserExt(UserExt data) {
        User user = userBO.getUser(data.getUserId());
        UserExt userExt = userExtBO.getUserExt(data.getUserId());
        if (StringUtils.isBlank(userExt.getGender())
                && StringUtils.isBlank(userExt.getBirthday())
                && StringUtils.isBlank(userExt.getEmail())) {
            doAddAmount(user, ERuleType.ZLWS_FIRST);
        }
        return userExtBO.refreshUserExt(data);
    }

    @Override
    public int editUserExtPhoto(String userId, String photo) {
        User user = userBO.getUser(userId);
        UserExt userExt = userExtBO.getUserExt(userId);
        if (StringUtils.isBlank(userExt.getPhoto())) {
            doAddAmount(user, ERuleType.SCTX_FRIST);
        }
        return userExtBO.refreshUserPhoto(userId, photo);
    }

    @Override
    public int editUserExtPhotoAddJf(String userId, String photo) {
        User user = userBO.getUser(userId);
        UserExt userExt = userExtBO.getUserExt(userId);
        if (StringUtils.isBlank(userExt.getPhoto())) {
            doAddAmount(user, ERuleType.SCTX_FRIST);
        }
        return userExtBO.refreshUserPhoto(userId, photo);
    }

    private void doAddAmount(User user, ERuleType ruleType) {
        // 完善信息送积分
        if (ESystemCode.CSW.getCode().equals(user.getSystemCode())) {
            Long amount = ruleBO.getRuleByCondition(ERuleKind.JF, ruleType,
                user.getLevel());
            EBizType bizType = null;
            if (ERuleType.SCTX_FRIST.getCode().equals(ruleType.getCode())) {
                bizType = EBizType.AJ_SCTX_FIRST;
            } else if (ERuleType.ZLWS_FIRST.getCode()
                .equals(ruleType.getCode())) {
                bizType = EBizType.AJ_ZLWS_FIRST;
            }
            accountBO.doTransferAmountRemote(ESysUser.SYS_USER_CSW.getCode(),
                user.getUserId(), ECurrency.JF, amount, bizType,
                bizType.getValue(), bizType.getValue());
            Long totalAmount = accountBO.getAccountByUserId(user.getUserId(),
                ECurrency.JF);
            List<LevelRule> levelRuleList = levelRuleBO.queryLevelRuleList(user
                .getSystemCode());
            for (LevelRule res : levelRuleList) {
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
    }

    /** 
     * @see com.std.user.ao.IUserExtAO#editUserExtLngLat(java.lang.String, java.lang.String, java.lang.String)
     */
    @Override
    public int editUserExtLngLat(String userId, String longitude,
            String latitude) {
        userBO.getUser(userId);
        return userExtBO.refreshUserExtLngLat(userId, longitude, latitude);
    }

    /** 
     * @see com.std.user.ao.IUserExtAO#queryUserExtList(com.std.user.domain.UserExt)
     */
    @Override
    public List<UserExt> queryUserExtList(UserExt condition) {
        return userExtBO.queryUserExtList(condition);
    }
}
