package com.xnjr.mall.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.xnjr.mall.ao.ICaigopoolAO;
import com.xnjr.mall.api.AProcessor;
import com.xnjr.mall.common.JsonUtil;
import com.xnjr.mall.core.StringValidater;
import com.xnjr.mall.dto.req.XN808510Req;
import com.xnjr.mall.dto.res.BooleanRes;
import com.xnjr.mall.exception.BizException;
import com.xnjr.mall.exception.ParaException;
import com.xnjr.mall.spring.SpringContextHolder;

/**
 * 菜狗嗨币对接
 * @author: myb858 
 * @since: 2017年3月28日 上午10:01:14 
 * @history:
 */
public class XN808510 extends AProcessor {
    private ICaigopoolAO stockPoolAO = SpringContextHolder
        .getBean(ICaigopoolAO.class);

    private XN808510Req req = null;

    @Override
    public synchronized Object doBusiness() throws BizException {
        if (!"567890-87667890".equals(req.getToken())) {
            throw new BizException("XN808510", "token不正确");
        }
        if (!"C678987656789".equals(req.getCompanyCode())) {
            throw new BizException("XN808510", "参数公司编号不正确，请按要求填写完整");
        }
        if (!"S98765456789876".equals(req.getSystemCode())) {
            throw new BizException("XN808510", "参数系统编号不正确，请按要求填写完整");
        }
        stockPoolAO.exchangeHighAmount(req.getMobile(), req.getLoginPwd(),
            StringValidater.toLong(req.getHighAmount()));
        return new BooleanRes(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN808510Req.class);
        if (StringUtils.isBlank(req.getToken())) {
            throw new BizException("XN808510", "参数token必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getMobile())) {
            throw new BizException("XN808510", "参数mobile必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getLoginPwd())) {
            throw new BizException("XN808510", "参数loginPwd必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getHighAmount())) {
            throw new BizException("XN808510", "参数highAmount必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getCompanyCode())) {
            throw new BizException("XN808510", "参数companyCode必填，请按要求填写完整");
        }
        if (StringUtils.isBlank(req.getSystemCode())) {
            throw new BizException("XN808510", "参数systemCode必填，请按要求填写完整");
        }
    }
}
