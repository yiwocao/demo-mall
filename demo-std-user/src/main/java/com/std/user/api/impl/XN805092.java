package com.std.user.api.impl;

import com.std.user.ao.IUserRelationAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.dto.req.XN805092Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 查询关注人是否存在关联
 * @author: xieyj 
 * @since: 2016年8月31日 上午9:26:10 
 * @history:
 */
public class XN805092 extends AProcessor {
    private IUserRelationAO userRelationAO = SpringContextHolder
        .getBean(IUserRelationAO.class);

    private XN805092Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        return userRelationAO.isExistUserRelation(req.getUserId(),
            req.getToUser());
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805092Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getToUser());
    }
}
