package com.std.user.ao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.user.ao.IUReadAO;
import com.std.user.bo.IB2cSmsBO;
import com.std.user.bo.IUReadBO;
import com.std.user.bo.base.Paginable;
import com.std.user.domain.B2cSms;
import com.std.user.domain.URead;
import com.std.user.enums.EUReadStatus;
import com.std.user.exception.BizException;

@Service
public class UReadAOImpl implements IUReadAO {

    @Autowired
    private IUReadBO uReadBO;

    @Autowired
    private IB2cSmsBO b2cSmsBO;

    @Override
    public int editURead(URead data) {
        return uReadBO.refreshURead(data);
    }

    @Override
    public Paginable<URead> queryUReadPage(int start, int limit, URead condition) {
        Paginable<URead> uReadPage = uReadBO.getPaginable(start, limit,
            condition);
        List<URead> uReadList = uReadPage.getList();
        B2cSms b2cSms = new B2cSms();
        for (URead uRead : uReadList) {
            b2cSms = b2cSmsBO.getB2cSms(uRead.getSmsCode());
            uRead.setB2cSms(b2cSms);
        }
        return uReadPage;
    }

    @Override
    public List<URead> queryUReadList(URead condition) {
        List<URead> uReadList = uReadBO.queryUReadList(condition);
        B2cSms b2cSms = new B2cSms();
        for (URead uRead : uReadList) {
            b2cSms = b2cSmsBO.getB2cSms(uRead.getSmsCode());
            uRead.setB2cSms(b2cSms);
        }
        return uReadList;
    }

    @Override
    public URead getURead(Integer id) {
        URead uRead = uReadBO.getURead(id);
        B2cSms b2cSms = b2cSmsBO.getB2cSms(uRead.getSmsCode());
        uRead.setB2cSms(b2cSms);
        return uRead;
    }

    @Override
    public int dropUReadOnFront(Integer id) {
        if (!uReadBO.isUReadExist(id)) {
            throw new BizException("xn0000", "该编号不存在");
        }
        URead data = new URead();
        data.setId(id);
        URead uRead = uReadBO.getURead(id);
        if (EUReadStatus.TOREAD.getCode().equals(uRead.getStatus())) {
            data.setStatus(EUReadStatus.DELETE_NO.getCode());
        } else {
            data.setStatus(EUReadStatus.DELETE_YES.getCode());
        }
        return uReadBO.refreshUReadStatus(data);
    }
}
