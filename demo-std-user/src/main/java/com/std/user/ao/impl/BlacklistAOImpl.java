package com.std.user.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.IBlacklistAO;
import com.std.user.bo.IBlacklistBO;
import com.std.user.bo.IUserBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.Blacklist;
import com.std.user.domain.User;
import com.std.user.enums.EBlacklistStatus;
import com.std.user.exception.BizException;

@Service
public class BlacklistAOImpl implements IBlacklistAO {

    @Autowired
    private IBlacklistBO blacklistBO;

    @Autowired
    private IUserBO userBO;

    @Override
    public void addBlacklist(String userId, String type, String remark) {
        User user = userBO.getUser(userId);
        if (user == null) {
            throw new BizException("xn000000", "用户编号不存在");
        }
        blacklistBO.saveBlacklist(user, type, remark);

    }

    @Override
    public int dropBlacklist(Long id, String updater, String remark) {
        int count = 0;
        Blacklist blacklist = blacklistBO.getBlacklist(id);
        if (EBlacklistStatus.VALID.getCode().equals(blacklist.getStatus())) {
            count = blacklistBO.removeBlacklist(id, updater, remark);
        } else {
            throw new BizException("xn000000", "记录不存在");
        }
        return count;
    }

    @Override
    public Paginable<Blacklist> queryBlacklistPage(int start, int limit,
            Blacklist condition) {
        return blacklistBO.getPaginable(start, limit, condition);
    }

    @Override
    public List<Blacklist> queryBlacklistList(Blacklist condition) {
        return blacklistBO.queryBlacklistList(condition);
    }

    @Override
    public Blacklist getBlacklist(Long id) {
        return blacklistBO.getBlacklist(id);
    }

}
