package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.Blacklist;
import com.std.user.domain.User;

public interface IBlacklistBO extends IPaginableBO<Blacklist> {

    public Long saveBlacklist(User user, String type, String remark);

    public int removeBlacklist(Long id, String updater, String remark);

    public List<Blacklist> queryBlacklistList(Blacklist condition);

    public Blacklist getBlacklist(Long id);

}
