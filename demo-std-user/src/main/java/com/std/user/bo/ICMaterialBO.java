package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.CMaterial;

public interface ICMaterialBO extends IPaginableBO<CMaterial> {

    public boolean isCMaterialExist(String code);

    public String saveCMaterial(CMaterial data);

    public int removeCMaterial(String code);

    public int refreshCMaterial(CMaterial data);

    public List<CMaterial> queryCMaterialList(CMaterial condition);

    public CMaterial getCMaterial(String code);

}
