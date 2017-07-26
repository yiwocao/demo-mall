package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.Invitation;

/**
 * 
 * @author: shan 
 * @since: 2016年12月17日 下午4:15:19 
 * @history:
 */
public interface IInvitationBO extends IPaginableBO<Invitation> {
    public boolean isActivityExist(String code);

    /**
     * 
     * @param data
     * @return 
     * @create: 2016年12月17日 下午4:19:42 shan
     * @history:
     */
    public String saveInvitation(Invitation data);

    /**
     * 
     * @param code
     * @return 
     * @create: 2016年12月17日 下午4:19:47 shan
     * @history:
     */
    public int deleteInvitation(String code);

    /**
     * 
     * @param code
     * @return 
     * @create: 2016年12月17日 下午4:19:50 shan
     * @history:
     */
    public int refreshInvitation(Invitation data);

    /**
     * 
     * @param data
     * @return 
     * @create: 2016年12月17日 下午4:19:54 shan
     * @history:
     */
    public List<Invitation> queryInvitationList(Invitation data);

    /**
     * 
     * @param code
     * @return 
     * @create: 2016年12月17日 下午4:33:54 shan
     * @history:
     */
    public Invitation getInvitation(String code);

    /**
     * 邀请码作废
     * @param invCode
     * @return 
     * @create: 2016年12月19日 上午10:41:56 shan
     * @history:
     */
    public int refreshInvitationStatus(String invCode);
}
