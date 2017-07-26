/**
 * @Title IUserBO.java 
 * @Package com.ibis.pz 
 * @Description 
 * @author miyb  
 * @date 2015-3-7 上午9:17:37 
 * @version V1.0   
 */
package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.User;
import com.std.user.enums.EUserStatus;

/** 
 * @author: miyb 
 * @since: 2015-3-7 上午9:17:37 
 * @history:
 */
public interface IUserBO extends IPaginableBO<User> {

    /**
     *  判断前端用户手机号是否存在
     * @param mobile
     * @param systemCode 
     * @create: 2016年12月14日 下午5:47:05 xieyj
     * @history:
     */
    public void isMobileExist(String mobile, String systemCode);

    /**
     * 判断用户编号是否存在
     * @param userId
     * @param systemCode 
     * @create: 2017年2月22日 下午1:02:42 haiqingzheng
     * @history:
     */
    public boolean isUserExist(String userId, String systemCode);

    /**
     * 根据手机号和类型判断手机号是否存在
     * @param mobile
     * @param kind
     * @param systemCode 
     * @create: 2016年12月14日 下午5:47:16 xieyj
     * @history:
     */
    public void isMobileExist(String mobile, String kind, String systemCode);

    /**
     * 根据手机号和类型判断手机号是否存在
     * @param mobile
     * @param kind
     * @param companyCode
     * @param systemCode 
     * @create: 2016年12月14日 下午5:47:26 xieyj
     * @history:
     */
    public void isMobileExist(String mobile, String kind, String companyCode,
            String systemCode);

    /**
     * 验证支付密码:拿tradePwd进行MD5后与数据库中userId得数据库支付密码比对
     * @param userId
     * @param tradePwd 
     * @create: 2015年11月1日 下午4:47:48 myb858
     * @history:
     */
    public void checkTradePwd(String userId, String tradePwd);

    /**
     * 验证登录密码:拿loginPwd进行MD5后与数据库中userId得数据库支付密码比对
     * @param userId
     * @param loginPwd 
     * @create: 2015年11月2日 下午1:18:57 myb858
     * @history:
     */
    public void checkLoginPwd(String userId, String loginPwd);

    /**
     * 验证登录密码:拿loginPwd进行MD5后与数据库中userId得数据库支付密码比对
     * @param userId
     * @param loginPwd
     * @param alertStr 
     * @create: 2016年12月15日 下午8:11:26 xieyj
     * @history:
     */
    public void checkLoginPwd(String userId, String loginPwd, String alertStr);

    /**
     * 校验是否已经有人实名认证
     * @param kind
     * @param idKind
     * @param idNo
     * @param realName 
     * @create: 2017年4月6日 下午3:55:30 xieyj
     * @history:
     */
    public void checkIdentify(String kind, String idKind, String idNo,
            String realName);

    /**
     * 判断登录名是否存在
     * @param loginName
     * @param kind
     * @param systemCode 
     * @create: 2016年12月14日 下午5:47:53 xieyj
     * @history:
     */
    public void isLoginNameExist(String loginName, String kind,
            String systemCode);

    /**
     *  判断推荐人是否存在(手机号)
     * @param userReferee 推荐人
     * @return 
     * @create: 2015-5-16 下午4:08:06 miyb
     * @history:
     */
    public void checkUserReferee(String userReferee, String systemCode);

    public String doRegister(String loginName, String nickname, String mobile,
            String loginPwd, String loginPwdStrength, String userReferee,
            String kind, String level, String companyCode, String openId,
            String jpushId, String systemCode);
    
    public String doRegister(String loginName, String nickname, String mobile,
            String loginPwd, String loginPwdStrength, String userReferee,
            String kind, String level, String companyCode, String openId,String unionId,
            String jpushId, String systemCode);

    public int refreshIdentity(String userId, String realName, String idKind,
            String idNo);

    public int refreshRealName(String userId, String realName);

    public int refreshLoginPwd(String userId, String loginPwd,
            String loginPwdStrength);

    public int refreshTradePwd(String userId, String tradePwd,
            String tradePwdStrength);

    public int refreshMobile(String userId, String mobile);

    public int refreshBindMobile(String userId, String loginName,
            String mobile, String loginPwd, String loginPwdStrength);

    public User getUser(String userId);

    public User getUser(String userId, String systemCode);

    public List<User> getUsersByUserReferee(String userReferee);

    public User getUserByMobile(String mobile, String systemCode);

    public User getUserByMobileAndKind(String mobile, String kind,
            String systemCode);

    public User getUserByMobileAndKind(String mobile, String kind,
            String companyCode, String systemCode);

    public User getUserByLoginName(String loginName, String systemCode);

    public List<User> queryUserList(User condition);

    public String doAddUser(String loginName, String mobile, String loginPsd,
            String userReferee, String realName, String idKind, String idNo,
            String tradePsd, String kind, String level, String remark,
            String updater, String pdf, String roleCode, Double divRate,
            String systemCode);

    public String doAddUser(String mobile, String loginPsd, String userReferee,
            String kind, String remark, String updater, String companyCode,
            String systemCode);

    public void doAddUser(User data);

    public void refreshStatus(String userId, EUserStatus normal,
            String updater, String remark);

    public void refreshRole(String userId, String roleCode, String updater,
            String remark);

    public void refreshPdf(String userId, String pdf, String updater,
            String remark);

    public void refreshLoginName(String userId, String loginName);

    public void refreshNickname(String userId, String nickname);

    public void refreshCompany(String userId, String companyCode);

    public void refreshUser(User data);

    public void refreshUserSupple(User data);

    public void refreshLevel(User data);

    public String saveUser(User user);

    public void refreshWxInfo(String userId, String openId, String name);

    /**
     * 判断unionId第一次存在，将openId更新成unionId,并返回用户userId
     * @param unionId
     * @param openId
     * @param systemCode
     * @return 
     * @create: 2017年4月17日 下午5:27:05 xieyj
     * @history:
     */
    public User doGetUserId(String unionId, String openId, String type,String systemCode);
    
    /**
     * 判断unionId第一次存在，将openId更新成unionId,并返回用户userId
     * @param unionId
     * @param openId
     * @param systemCode
     * @return 
     * @create: 2017年4月17日 下午5:27:05 xieyj
     * @history:
     */
    public User doGetUserId(String unionId, String openId, String systemCode);

    /** 
     * @param mobile
     * @param kind
     * @param systemCode
     * @return 
     * @create: 2017年4月17日 下午5:11:57 xieyj
     * @history: 
     */
    public List<User> queryUserList(String mobile, String kind,
            String systemCode);

    /**
     * @param condition
     * @return 
     * @create: 2017年5月16日 下午5:52:25 asus
     * @history:
     */
    public Long totalUser(User condition);
    
    public List<String> queryUserIdList(User condition);
    
    void refreshWxInfo2(String userId, String openId, String unionId ,String type,String name);
}
