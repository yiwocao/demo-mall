package com.std.user.ao;

import java.util.List;

import com.std.user.domain.UserExt;

public interface IUserExtAO {

    /**
     * 更改用户信息
     * @param data
     * @return 
     * @create: 2016年10月21日 下午6:53:13 xieyj
     * @history:
     */
    public void editUserExtAddJf(UserExt data);

    /**
     * 更改用户信息
     * @param data
     * @return 
     * @create: 2016年10月21日 下午6:53:13 xieyj
     * @history:
     */
    public int editUserExt(UserExt data);

    /**
     * 更改用户头像
     * @param userId
     * @param photo
     * @return 
     * @create: 2016年10月21日 下午6:53:07 xieyj
     * @history:
     */
    public int editUserExtPhotoAddJf(String userId, String photo);

    /**
     * 更改用户头像
     * @param userId
     * @param photo
     * @return 
     * @create: 2016年10月21日 下午6:53:07 xieyj
     * @history:
     */
    public int editUserExtPhoto(String userId, String photo);

    /**
     * 更改用户位置信息
     * @param userId
     * @param longitude
     * @param latitude
     * @return 
     * @create: 2016年12月22日 下午9:29:43 xieyj
     * @history:
     */
    public int editUserExtLngLat(String userId, String longitude,
            String latitude);

    /**
     * 查询用户信息
     * @param condition
     * @return 
     * @create: 2016年12月29日 下午5:20:45 xieyj
     * @history:
     */
    public List<UserExt> queryUserExtList(UserExt condition);
}
