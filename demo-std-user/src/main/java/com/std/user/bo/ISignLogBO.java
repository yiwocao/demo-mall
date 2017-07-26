package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.SignLog;

public interface ISignLogBO extends IPaginableBO<SignLog> {
    /**
     * 判断今天是否签到
     * @param userId
     * @return 
     * @create: 2016年10月14日 下午7:43:40 xieyj
     * @history:
     */
    public Boolean isSignToday(String userId);

    /**
     * 签到
     * @param userId
     * @param location
     * @param systemCode
     * @return 
     * @create: 2016年12月15日 下午9:15:08 xieyj
     * @history:
     */
    public String saveSignLog(String userId, String location, String systemCode);

    /** 
     * 列表查询签到记录
     * @param condition
     * @return 
     * @create: 2016年9月18日 下午7:17:42 zuixian
     * @history: 
     */
    public List<SignLog> querySignLogList(SignLog condition);

    /**
     * 获取连续签到天数
     * @param userId
     * @return 
     * @create: 2017年2月21日 下午9:38:47 xieyj
     * @history:
     */
    public Long getSerialsSignDays(String userId);
}
