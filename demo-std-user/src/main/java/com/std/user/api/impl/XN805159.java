package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.User;
import com.std.user.dto.req.XN805159Req;
import com.std.user.dto.res.BooleanRes;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;

/**
 * 更新用户手机号和真实信息
 * @author: xieyj 
 * @since: 2016年12月15日 下午9:00:02 
 * @history:
 */
public class XN805159 extends AProcessor {

    private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);

    private XN805159Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        User data = new User();
        data.setUserId(req.getUserId());
        data.setMobile(req.getMobile());
        data.setRealName(req.getRealName());
        data.setIdKind(req.getIdKind());
        data.setIdNo(req.getIdNo());
        userAO.doSuppleUser(data);
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805159Req.class);
        StringValidater.validateBlank(req.getUserId(), req.getMobile(),
            req.getRealName(), req.getIdKind(), req.getIdNo());
    }
}
