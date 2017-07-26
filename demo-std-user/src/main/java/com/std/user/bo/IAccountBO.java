/**
 * @Title IAccountBO.java 
 * @Package com.ibis.account.bo 
 * @Description 
 * @author miyb  
 * @date 2015-3-15 下午3:15:49 
 * @version V1.0   
 */
package com.std.user.bo;

import java.util.List;

import com.std.user.enums.EBizType;
import com.std.user.enums.ECurrency;

/**
 * @author: xieyj 
 * @since: 2016年12月24日 下午1:24:08 
 * @history:
 */
public interface IAccountBO {

    /**
     * 分配多个账户
     * @param userId
     * @param realName
     * @param currencyList
     * @param systemCode
     * @return 
     * @create: 2016年12月24日 下午1:27:55 xieyj
     * @history:
     */
    public void distributeAccountList(String userId, String realName,
            String type, List<String> currencyList, String systemCode);

    /**
     * 更新户名
     * @param userId
     * @param realName
     * @param systemCode 
     * @create: 2017年1月4日 上午11:46:13 xieyj
     * @history:
     */
    public void refreshRealName(String userId, String realName,
            String systemCode);

    /**
     * 根据用户编号进行账户资金划转
     * @param fromUserId
     * @param toUserId
     * @param currency
     * @param amount
     * @param bizType
     * @param fromBizNote
     * @param toBizNote 
     * @create: 2017年3月26日 下午8:42:38 xieyj
     * @history:
     */
    public void doTransferAmountRemote(String fromUserId, String toUserId,
            ECurrency currency, Long amount, EBizType bizType,
            String fromBizNote, String toBizNote);

    /**
     * 获取用户账户
     * @param userId
     * @param type
     * @return 
     * @create: 2017年4月1日 下午4:46:46 asus
     * @history:
     */
    public Long getAccountByUserId(String userId, ECurrency type);
}
