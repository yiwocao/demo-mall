package com.std.user.ao.impl;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.IInvitationAO;
import com.std.user.bo.IInvitationBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.Invitation;
import com.std.user.enums.EInvitationStatus;
import com.std.user.exception.BizException;

/**
 * 
 * @author: shan 
 * @since: 2016年12月17日 下午4:10:04 
 * @history:
 */
@Service
public class InvitationAOImpl implements IInvitationAO {
    @Autowired
    IInvitationBO invitationBO;

    public String game(int count) {
        StringBuffer sb = new StringBuffer();
        String str = "0123456789qwertyuioplkjhgfdsazxcvbnm";
        Random r = new Random();
        for (int i = 0; i < count; i++) {
            int num = r.nextInt(str.length());
            sb.append(str.charAt(num));
            str = str.replace((str.charAt(num) + ""), "");
        }
        return sb.toString();
    }

    @Override
    public String addInvitation(Integer number) {
        String code = null;
        if (number != null) {
            Invitation data = new Invitation();
            for (int i = 0; i < number; i++) {
                String str = game(6);
                data.setInvCode(str);
                data.setStatus(EInvitationStatus.NOTUSE.getCode());
                code = invitationBO.saveInvitation(data);

            }
        }
        return code;
    }

    @Override
    public void dropInvitation(Invitation data) {
        if (data != null) {
            invitationBO.deleteInvitation(data.getCode());
        }
    }

    @Override
    public void editInvitation(Invitation data) {
        if (StringUtils.isBlank(data.getInvCode())) {
            throw new BizException("ZC000001", "邀请码编号不能为空");
        }
        data.setStatus(EInvitationStatus.USE.getCode());
        data.setUseDatetime(new Date());
        invitationBO.refreshInvitation(data);
    }

    @Override
    public List<Invitation> queryInvitationList(Invitation data) {

        return invitationBO.queryInvitationList(data);
    }

    @Override
    public Invitation getInvitation(String code) {
        if (StringUtils.isBlank(code)) {
            throw new BizException("ZC000001", "邀请码编号不能为空");
        }
        return invitationBO.getInvitation(code);
    }

    @Override
    public void editInvitation(String code) {
        if (StringUtils.isBlank(code)) {
            throw new BizException("ZC000001", "邀请码编号不能为空");
        }
        invitationBO.refreshInvitationStatus(code);
    }

    @Override
    public Paginable<Invitation> queryInvitationPage(int start, int limit,
            Invitation condition) {
        return invitationBO.getPaginable(start, limit, condition);
    }
}
