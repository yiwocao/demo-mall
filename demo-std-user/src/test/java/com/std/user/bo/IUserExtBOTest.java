package com.std.user.bo;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.std.user.base.ABizTest;
import com.std.user.bo.IUserExtBO;
import com.std.user.domain.UserExt;

public class IUserExtBOTest extends ABizTest {
    @Autowired
    private IUserExtBO userExtBO;

    @Test
    public void doAddUserExt() {
        UserExt data = new UserExt();
        data.setUserId("U2012312312312");
        data.setGender("1");
        data.setBirthday("2013/12/22");
        data.setPhoto("http://dskfjkl.cn");
        data.setIntroduce("完成信息");
    }
}
