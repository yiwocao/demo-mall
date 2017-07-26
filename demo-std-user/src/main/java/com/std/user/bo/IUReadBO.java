package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.URead;

public interface IUReadBO extends IPaginableBO<URead> {

    public boolean isUReadExist(Integer id);

    public void saveURead(String smsCode, String userId);

    public int refreshURead(URead data);

    public int refreshUReadStatus(URead data);

    public List<URead> queryUReadList(URead condition);

    public URead getURead(Integer id);

}
