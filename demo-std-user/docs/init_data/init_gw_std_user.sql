/*
-- Query: SELECT * FROM cd_std_user.tstd_user where login_name = 'admin'
LIMIT 0, 50000

-- Date: 2016-10-20 10:27
*/
INSERT INTO `tstd_user` (`user_id`, `login_name`, `nickname`, `login_pwd`, `login_pwd_strength`, `kind`, `level`, `user_referee`, `mobile`, `id_kind`, `id_no`, `real_name`, `trade_pwd`, `trade_pwd_strength`, `role_code`, `status`, `pdf`, `amount`, `lj_amount`, `company_code`, `updater`, `update_datetime`, `remark`) VALUES ('U201600000000000000', 'admin', NULL, '21218cca77804d2ba1922c33e0151105', '1', '01', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SR201600000000000000', '0', NULL, NULL, NULL, NULL, 'admin', NULL, '管理端系统方');

/*
-- Query: SELECT code,name,type,url,order_no,updater, now() as update_datetime,remark,parent_code,kind FROM tsys_menu
LIMIT 0, 50000

-- Date: 2016-10-26 10:09
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600000000000000','根目录','1','#','1','admin',now(),'','','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000000','系统根目录','1','#','1','admin',now(),'','SM201600000000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000001','系统管理','1','#','1','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000002','运维管理','1','#','2','admin',now(),NULL,'SM201600001000000001','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000003','菜单管理','1','/security/menu.htm','1','admin',now(),NULL,'SM201600001000000002','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000004','修改','2','/edit','1','admin',now(),NULL,'SM201600001000000003','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101716241339082','运营管理','1','#','1','admin',now(),'','SM201600001000000001','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101716253866426','角色管理','1','/security/role.htm','1','admin',now(),'','SM2016101716241339082','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101716261754674','用户管理','1','/security/user.htm','2','admin',now(),'','SM2016101716241339082','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101716271123590','公司管理','1','/general/company.htm','1','admin',now(),'','SM2016102516555766535','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101716290657836','系统参数管理','1','/general/param.htm','2','admin',now(),'','SM201600001000000002','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101716295904680','数据字典管理','1','/general/dict.htm','3','admin',now(),'','SM201600001000000002','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101716450533995','分配菜单','2','/change','4','admin',now(),'','SM2016101716253866426','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101717551955993','新增','2','/add','1','admin',now(),'','SM2016101716253866426','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101717560118734','修改','2','/edit','2','admin',now(),'','SM2016101716253866426','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101717563661357','删除','2','/delete','3','admin',now(),'','SM2016101716253866426','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719082391126','新增','2','/add','1','admin',now(),'','SM2016101716261754674','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719094151894','重置密码','2','/reset','3','admin',now(),'','SM2016101716261754674','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719100760088','注销','2','/rock','4','admin',now(),'','SM2016101716261754674','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719110981215','设置角色','2','/assign','5','admin',now(),'','SM2016101716261754674','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719120926719','新增','2','/add','1','admin',now(),'','SM2016101716271123590','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719123215692','注销/取消','2','/rock','2','admin',now(),'','SM2016101716271123590','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719125359852','修改','2','/edit','3','admin',now(),'','SM2016101716271123590','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719132278227','详情','2','/detail','4','admin',now(),'','SM2016101716271123590','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719140087629','修改','2','/edit','1','admin',now(),'','SM2016101716290657836','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719143965297','修改','2','/edit','1','admin',now(),'','SM2016101716295904680','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610171924157962','我的公司','1','/general/company_addedit.htm?b=1','1','admin',now(),'','SM2016102516561210439','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719275948426','素材管理','1','/std/material.htm','4','admin',now(),'','SM2016102516561210439','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719284086819','菜单管理','1','/std/menu.htm','2','admin',now(),'','SM2016102516555766535','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610171939350218','Banner管理','1','/std/banner.htm','3','admin',now(),'','SM2016102516555766535','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610171941425635','合作意向处理','1','/std/intent.htm','5','admin',now(),'','SM2016102516561210439','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610171942140575','新增','2','/add','1','admin',now(),'','SM2016101719275948426','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719423497614','修改','2','/edit','2','admin',now(),'','SM2016101719275948426','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719430686033','删除','2','/delete','3','admin',now(),'','SM2016101719275948426','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719433392146','详情','2','/detail','4','admin',now(),'','SM2016101719275948426','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719441184314','新增','2','/add','1','admin',now(),'','SM2016101719284086819','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719444119219','删除','2','/delete','3','admin',now(),'','SM2016101719284086819','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719451349522','修改','2','/edit','2','admin',now(),'','SM2016101719284086819','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719454161086','详情','2','/detail','4','admin',now(),'','SM2016101719284086819','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719463455794','新增','2','/add','1','admin',now(),'','SM201610171939350218','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719470668795','修改','2','/edit','2','admin',now(),'','SM201610171939350218','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719472470447','删除','2','/delete','3','admin',now(),'','SM201610171939350218','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719474966791','详情','2','/detail','4','admin',now(),'','SM201610171939350218','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719481022898','处理','2','/edit','1','admin',now(),'','SM201610171941425635','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719483867311','详情','2','/detail','2','admin',now(),'','SM201610171941425635','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102516552535647','名片管理','1','#','2','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102516555766535','总部管理','1','#','3','admin',now(),'','SM201600001000000001','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102516561210439','地方管理','1','#','2','admin',now(),'','SM2016102516552535647','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102517074067028','菜单修改','1','/std/menu.htm?b=1','2','admin',now(),'','SM2016102516561210439','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102517115889891','banner修改','1','/std/banner.htm?b=1','3','admin',now(),'','SM2016102516561210439','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102517151067120','修改','2','/edit','1','admin',now(),'','SM2016102517074067028','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102517153061026','详情','2','/detail','2','admin',now(),'','SM2016102517074067028','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610251715519504','修改','2','/edit','1','admin',now(),'','SM2016102517115889891','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102517162241451','详情','2','/detail','2','admin',now(),'','SM2016102517115889891','1');

/*
-- Query: SELECT * FROM cd_std_user.tsys_role
LIMIT 0, 50000

-- Date: 2016-10-21 10:58
*/
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000000','超级管理员','1','admin',now(),NULL,'1');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000001','普通企业用户','2','admin',now(),NULL,'1');

/*
-- Query: SELECT `role_code`,`menu_code`,`updater`,now() as `update_datetime`,`remark` FROM cd_std_user.tsys_menu_role where role_code in ('SR201600000000000000','SR201600000000000001')
LIMIT 0, 50000

-- Date: 2016-10-25 22:21
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600000000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000001','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000002','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000003','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000004','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101716290657836','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719140087629','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101716295904680','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719143965297','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101716241339082','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101716253866426','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101716450533995','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101717551955993','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101717560118734','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101717563661357','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101716261754674','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719082391126','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719094151894','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719100760088','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719110981215','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102516555766535','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101716271123590','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719120926719','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719123215692','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719125359852','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719132278227','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719284086819','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719441184314','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719444119219','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719451349522','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719454161086','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201610171939350218','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719463455794','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719470668795','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719472470447','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719474966791','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201600000000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102516552535647','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102516561210439','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201610171924157962','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101719275948426','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201610171942140575','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101719423497614','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101719430686033','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101719433392146','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201610171941425635','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101719481022898','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101719483867311','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102517074067028','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102517151067120','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102517153061026','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102517115889891','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201610251715519504','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102517162241451','admin',now(),NULL);

/*
-- Query: select `to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,now() as update_datetime,`remark` from tsys_dict
LIMIT 0, 50000

-- Date: 2016-10-25 21:51
*/
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'user_status','用户状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','user_status','0','正常','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','user_status','1','程序锁定','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','user_status','2','人工锁定','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'id_kind','证件类型','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','id_kind','1','身份证','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'role_level','角色等级','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','role_level','1','运维','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','role_level','2','运营','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','role_level','3','客户','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'res_type','资源类型','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','res_type','1','菜单','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','res_type','2','按钮','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'lock_direction','锁定方向','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','lock_direction','1','用锁','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','lock_direction','2','解锁','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'intent_status','意向状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','intent_status','1','已查看','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','intent_status','2','接洽中','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','intent_status','3','已接洽','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','intent_status','4','无兴趣','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','intent_status','5','已完成','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','intent_status','0','未处理','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'cmp_location','公司UI位置','admin',now(),NULL);
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','cmp_location','0','不启用','admin',now(),NULL);
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','cmp_location','1','正常','admin',now(),NULL);
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'active_status','激活状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','active_status','0','不启用','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','active_status','1','启用','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'menu_updown','菜单上下架','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','menu_updown','0','下架','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','menu_updown','1','上架','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'material_kind','素材种类','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','material_kind','1','站内','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','material_kind','2','站外','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'material_type','素材类型','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','material_type','1','图片','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','material_type','2','视频','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'endnote_type','尾注类型','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','endnote_type','1','文本','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','endnote_type','2','图片','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'nav_belong','导航属于','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','nav_belong','1','全局','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','nav_belong','2','地方默认','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'banner_location','banner位置','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','banner_location','B_Web_SY','WEB首页','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','banner_location','B_Mobile_SY','微信首页','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','banner_location','B_Mobile_ZDY','微信自定义','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','banner_location','B_Mobile_GSJJ','微信公司简介','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','banner_location','B_Mobile_WYHZ','微信我要合作','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'menu_location','菜单位置','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','menu_location','M_Web','WEB端菜单','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','menu_location','M_Mobile','微信端菜单','admin',now(),'');

/*
-- Query: SELECT * FROM cd_std_user.tstd_cnavigate
LIMIT 0, 50000

-- Date: 2016-10-25 22:54
*/
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('cin201600000000000001','我要合作','1',NULL,NULL,'1','M_Mobile',1,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('com201600000000000002','公司简介','1',NULL,NULL,'1','M_Web',1,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('ind201600000000000003','首页','1',NULL,NULL,'1','M_Web',1,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('inw201600000000000004','微信首页','1',NULL,NULL,'1','M_Mobile',1,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('wei201600000000000005','微信顶级菜单','1',NULL,NULL,'1','M_Mobile',1,'2','0',NULL,NULL,'0');

/**
导航
*/
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH201600000000000006','web首页','2',NULL,'http://121.40.165.180:8901/20160000000/web.png','1','B_Web_SY',1,'2','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH201600000000000007','微信首页-1','2',NULL,'http://121.40.165.180:8901/20160000000/banner1.png','1','B_Mobile_SY',1,'2','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH201600000000000008','微信首页-2','2',NULL,'http://121.40.165.180:8901/20160000000/banner2.png','1','B_Mobile_SY',2,'2','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH201600000000000009','微信首页-3','2',NULL,'http://121.40.165.180:8901/20160000000/banner3.png','1','B_Mobile_SY',3,'2','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH201600000000000010','微信自定义','2',NULL,'http://121.40.165.180:8901/20160000000/product.png','1','B_Mobile_ZDY',1,'2','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH201600000000000012','欢迎合作','2',NULL,'http://121.40.165.180:8901/20160000000/welcome.png','1','B_Mobile_WYHZ',1,'2','0',NULL,NULL,'0');