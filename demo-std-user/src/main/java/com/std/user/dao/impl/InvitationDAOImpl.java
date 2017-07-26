package com.std.user.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.user.dao.IInvitationDAO;
import com.std.user.dao.base.support.AMybatisTemplate;
import com.std.user.domain.Invitation;

/**
 * 
 * @author: shan 
 * @since: 2016年12月17日 下午3:40:04 
 * @history:
 */
@Repository("invitationDAOImpl")
public class InvitationDAOImpl extends AMybatisTemplate implements
        IInvitationDAO {

    @Override
    public int insert(Invitation data) {
        return super.insert(NAMESPACE.concat("insert_invitation"), data);
    }

    @Override
    public int delete(Invitation data) {
        return super.delete(NAMESPACE.concat("delete_invitation"), data);
    }

    @Override
    public Invitation select(Invitation condition) {
        return super.select(NAMESPACE.concat("select_invitation"), condition,
            Invitation.class);
    }

    @Override
    public long selectTotalCount(Invitation condition) {
        return super.selectTotalCount(
            NAMESPACE.concat("select_invitation_count"), condition);
    }

    @Override
    public List<Invitation> selectList(Invitation condition) {
        return super.selectList(NAMESPACE.concat("select_invitation"),
            condition, Invitation.class);
    }

    @Override
    public List<Invitation> selectList(Invitation condition, int start,
            int count) {
        return super.selectList(NAMESPACE.concat("select_invitation"), start,
            count, condition, Invitation.class);
    }

    @Override
    public int update(Invitation data) {
        return super.update(NAMESPACE.concat("update_invitation"), data);
    }

    @Override
    public int updateStatus(Invitation data) {
        return super.update(NAMESPACE.concat("update_invitationStatus"), data);
    }
}
