package com.std.user.api.impl;

import com.std.user.ao.IUserAO;
import com.std.user.api.AProcessor;
import com.std.user.common.JsonUtil;
import com.std.user.core.StringValidater;
import com.std.user.domain.User;
import com.std.user.dto.req.XN805055Req;
import com.std.user.dto.req.XN805063Req;
import com.std.user.exception.BizException;
import com.std.user.exception.ParaException;
import com.std.user.spring.SpringContextHolder;


/**
 * 查询条件查询用户ID 列表(用于sms消息推送)
 * @author William
 * @since  2017年6月12日 下午1:07:42
 * @history
 */
public class XN805064 extends AProcessor {
	private IUserAO userAO = SpringContextHolder.getBean(IUserAO.class);
    private XN805055Req req = null;

    @Override
    public Object doBusiness() throws BizException {
    	 User condition = new User();
         condition.setLoginNameForLikeQuery(req.getLoginName());
         condition.setNickname(req.getNickname());
         condition.setKind(req.getKind());
         condition.setLevel(req.getLevel());
         condition.setUserReferee(req.getUserReferee());

         condition.setMobileForLikeQuery(req.getMobile());
         condition.setIdKind(req.getIdKind());
         condition.setIdNo(req.getIdNo());
         condition.setRealName(req.getRealName());
         condition.setRoleCode(req.getRoleCode());

         condition.setStatus(req.getStatus());
         condition.setUpdater(req.getUpdater());
         condition.setCompanyCode(req.getCompanyCode());
         condition.setOpenId(req.getOpenId());
         condition.setSystemCode(req.getSystemCode());
    	 return userAO.queryUserIdList(condition);
        
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN805055Req.class);
        StringValidater.validateBlank(req.getSystemCode());
    }
}
