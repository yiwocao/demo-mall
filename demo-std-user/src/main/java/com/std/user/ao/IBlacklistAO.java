package com.std.user.ao;

import java.util.List;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.Blacklist;

public interface IBlacklistAO {
    static final String DEFAULT_ORDER_COLUMN = "id";

    /**
     * 将某个用户拉入黑名单，一种类型只能拉黑一次
     * @param userId
     * @param type
     * @param remark
     * @return 
     * @create: 2017年3月23日 下午4:30:24 myb858
     * @history:
     */
    public void addBlacklist(String userId, String type, String remark);

    /**
     * 将某个已加入黑名单的用户解除
     * @param id
     * @param remark
     * @return 
     * @create: 2017年2月22日 下午1:15:18 haiqingzheng
     * @history:
     */
    public int dropBlacklist(Long id, String updater, String remark);

    public Paginable<Blacklist> queryBlacklistPage(int start, int limit,
            Blacklist condition);

    public List<Blacklist> queryBlacklistList(Blacklist condition);

    public Blacklist getBlacklist(Long id);

}
