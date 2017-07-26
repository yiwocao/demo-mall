package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.ISignLogBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.common.DateUtil;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.ISignLogDAO;
import com.std.user.domain.SignLog;

/** 
 * 签到BO
 * @author: zuixian 
 * @since: 2016年9月18日 下午7:21:13 
 * @history:
 */
@Component
public class SignLogBOImpl extends PaginableBOImpl<SignLog> implements
        ISignLogBO {

    @Autowired
    private ISignLogDAO signLogDAO;

    @Override
    public Boolean isSignToday(String userId) {
        SignLog condition = new SignLog();
        condition.setUserId(userId);
        condition.setSignDatetimeStart(DateUtil.getTodayStart());
        condition.setSignDatetimeEnd(DateUtil.getTodayEnd());
        List<SignLog> list = signLogDAO.selectList(condition);
        if (!CollectionUtils.sizeIsEmpty(list)) {
            return true;
        }
        return false;
    }

    @Override
    public String saveSignLog(String userId, String location, String systemCode) {
        String code = null;
        if (StringUtils.isNotBlank(userId)) {
            SignLog data = new SignLog();
            code = OrderNoGenerater.generate("QD");
            data.setCode(code);
            data.setUserId(userId);
            data.setLocation(location);
            data.setSignDatetime(new Date());
            data.setSystemCode(systemCode);
            signLogDAO.insert(data);
        }
        return code;
    }

    @Override
    public List<SignLog> querySignLogList(SignLog condition) {
        return signLogDAO.selectList(condition);
    }

    /** 
     * @see com.std.user.bo.ISignLogBO#getSerialsSignDays(java.lang.String)
     */
    @Override
    public Long getSerialsSignDays(String userId) {
        Date today = DateUtil.getTodayStart();
        Date yesterday = DateUtil.getRelativeDateOfDays(today, -1);
        Long serialsDays = 0L;
        while (true) {
            if (querySignLogList(userId, yesterday)) {
                serialsDays++;
            } else {
                break;
            }
            yesterday = DateUtil.getRelativeDateOfDays(yesterday, -1);
        }
        if (querySignLogList(userId, today)) {
            serialsDays++;
        }
        return serialsDays;
    }

    /** 
     * @param userId
     * @param today
     * @return 
     * @create: 2017年2月23日 下午4:37:08 xieyj
     * @history: 
     */
    private boolean querySignLogList(String userId, Date today) {
        SignLog condition = new SignLog();
        condition.setUserId(userId);
        condition.setSignDatetimeStart(today);
        condition.setSignDatetimeEnd(DateUtil.getRelativeDateOfDays(today, 1));
        List<SignLog> list = signLogDAO.selectList(condition);
        if (!CollectionUtils.sizeIsEmpty(list)) {
            return true;
        }
        return false;
    }
}
