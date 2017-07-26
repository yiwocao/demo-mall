package com.std.user.ao;

import java.util.List;

import com.std.user.bo.base.Paginable;
import com.std.user.domain.CMaterial;

public interface ICMaterialAO {
    static final String DEFAULT_ORDER_COLUMN = "code";

    public String addCMaterial(CMaterial data);

    public int dropCMaterial(String code);

    public int editCMaterial(CMaterial data);

    public Paginable<CMaterial> queryCMaterialPage(int start, int limit,
            CMaterial condition);

    public List<CMaterial> queryCMaterialList(CMaterial condition);

    public CMaterial getCMaterial(String code);

}
