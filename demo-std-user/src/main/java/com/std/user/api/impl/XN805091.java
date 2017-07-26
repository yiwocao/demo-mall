package com.std.user.api.impl;

import com.std.user.ao.IUserRelationAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.UserRelation;
import com.std.user.dto.req.XN805091Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 列表查询关注人
 * @author: xieyj 
 * @since: 2016年8月31日 上午9:26:10 
 * @history:
 */
public class XN805091 extends AProcessor {
    private IUserRelationAO userRelationAO = SpringContextHolder
        .getBean(IUserRelationAO.class);

    private XN805091Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        UserRelation condition = new UserRelation();
        condition.setMobileForLikeQuery(req.getMobile());
        condition.setNickname(req.getNickname());
        condition.setUserId(req.getUserId());
        condition.setToUser(req.getToUser());
        condition.setSystemCode(req.getSystemCode());
        return userRelationAO.queryUserList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805091Req.class);
        StringValidater.validateBlank(req.getSystemCode());
    }
}
