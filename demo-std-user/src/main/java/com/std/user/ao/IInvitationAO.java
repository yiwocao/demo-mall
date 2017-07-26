package com.std.user.ao;

import java.util.List;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.Invitation;

/**
 * 
 * @author: shan 
 * @since: 2016年12月17日 下午4:01:28 
 * @history:
 */
public interface IInvitationAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    /**
     * 新增邀请码
     * @param data
     * @return 
     * @create: 2016年12月17日 下午4:05:08 shan
     * @history:
     */
    public String addInvitation(Integer number);

    /**
     * 删除邀请码
     * @param data 
     * @create: 2016年12月17日 下午4:05:11 shan
     * @history:
     */
    public void dropInvitation(Invitation data);

    /**
     * 修改邀请码
     * @param data 
     * @create: 2016年12月17日 下午4:05:14 shan
     * @history:
     */
    public void editInvitation(Invitation data);

    /**
     * 查询邀请码
     * @param data
     * @return 
     * @create: 2016年12月17日 下午4:05:17 shan
     * @history:
     */
    public List<Invitation> queryInvitationList(Invitation data);

    /**
     * 查询所有邀请码
     * @param code
     * @return 
     * @create: 2016年12月17日 下午4:05:20 shan
     * @history:
     */
    public Invitation getInvitation(String code);

    /**
     * 邀请码作废
     * @param invCode 
     * @create: 2016年12月19日 上午10:39:34 shan
     * @history:
     */
    public void editInvitation(String invCode);

    /**
     * 分页查询邀请码
     * @param start
     * @param limit
     * @param condition
     * @return 
     * @create: 2016年12月19日 上午11:20:26 shan
     * @history:
     */
    public Paginable<Invitation> queryInvitationPage(int start, int limit,
            Invitation condition);

}
