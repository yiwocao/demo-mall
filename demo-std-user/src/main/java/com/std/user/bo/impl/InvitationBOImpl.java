package com.std.user.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.user.bo.IInvitationBO;
import com.std.user.bo.base.PaginableBOImpl;
import com.std.user.core.EGeneratePrefix;
import com.std.user.core.OrderNoGenerater;
import com.std.user.dao.IInvitationDAO;
import com.std.user.domain.Invitation;
import com.std.user.enums.EInvitationStatus;

/**
 * 
 * @author: shan 
 * @since: 2016年12月17日 下午4:20:41 
 * @history:
 */
@Component
public class InvitationBOImpl extends PaginableBOImpl<Invitation> implements
        IInvitationBO {

    @Autowired
    IInvitationDAO invitationDAO;

    @Override
    public boolean isActivityExist(String code) {
        Invitation condition = new Invitation();
        condition.setCode(code);
        if (invitationDAO.selectTotalCount(condition) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public String saveInvitation(Invitation data) {
        String code = null;
        if (data != null) {
            code = OrderNoGenerater.generate(EGeneratePrefix.YQ.getCode());
            data.setCode(code);
            data.setCreateDatetime(new Date());
            invitationDAO.insert(data);
        }
        return code;
    }

    @Override
    public int deleteInvitation(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Invitation data = new Invitation();
            data.setCode(code);
            count = invitationDAO.delete(data);
        }
        return count;
    }

    @Override
    public int refreshInvitation(Invitation data) {
        int count = 0;
        if (data != null) {
            count = invitationDAO.update(data);
        }
        return count;
    }

    @Override
    public List<Invitation> queryInvitationList(Invitation data) {
        return invitationDAO.selectList(data);
    }

    @Override
    public Invitation getInvitation(String code) {
        Invitation invitation = null;
        if (StringUtils.isNotBlank(code)) {
            Invitation data = new Invitation();
            data.setCode(code);
            invitation = invitationDAO.select(data);
        }
        return invitation;
    }

    @Override
    public int refreshInvitationStatus(String code) {
        int count = 0;
        if (StringUtils.isNotBlank(code)) {
            Invitation data = new Invitation();
            data.setCode(code);
            Invitation condition = getInvitation(code);
            if (EInvitationStatus.NOTUSE.getCode()
                .equals(condition.getStatus())) {
                data.setStatus(EInvitationStatus.INVALID.getCode());
                count = invitationDAO.updateStatus(data);
            }
        }
        return count;
    }

}
