package com.std.user.dao;

import com.std.user.dao.base.IBaseDAO;
import com.std.user.domain.Invitation;

/**
 * 邀请码
 * @author: shan 
 * @since: 2016年12月17日 下午3:37:02 
 * @history:
 */
public interface IInvitationDAO extends IBaseDAO<Invitation> {
    String NAMESPACE = IInvitationDAO.class.getName().concat(".");

    public int update(Invitation data);

    public int updateStatus(Invitation data);
}
