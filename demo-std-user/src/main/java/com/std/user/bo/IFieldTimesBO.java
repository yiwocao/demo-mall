package com.std.user.bo;

import java.util.List;

import com.std.user.bo.base.IPaginableBO;
import com.std.user.domain.FieldTimes;
import com.std.user.enums.EFieldType;

public interface IFieldTimesBO extends IPaginableBO<FieldTimes> {

    public void isFieldTimesExist(EFieldType fieldType, String userId);

    public void saveFieldTimes(EFieldType fieldType, String userId);

    public List<FieldTimes> queryFieldTimesList(FieldTimes condition);

}
