/*
-- Query: SELECT code,name,type,url,order_no,updater, now() as update_datetime,remark,parent_code,kind FROM jj_std_user.tsys_menu
LIMIT 0, 50000

-- Date: 2016-11-09 16:36
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
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101716271123590','新闻公告','1','/general/news.htm','3','admin',now(),'','SM2016101716241339082','1');
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
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719123215692','删除','2','/delete','2','admin',now(),'','SM2016101716271123590','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719125359852','修改','2','/edit','3','admin',now(),'','SM2016101716271123590','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719132278227','详情','2','/detail','4','admin',now(),'','SM2016101716271123590','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719140087629','修改','2','/edit','2','admin',now(),'','SM2016101716290657836','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101719143965297','修改','2','/edit','1','admin',now(),'','SM2016101716295904680','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102514114456282','banner管理','1','/general/home.htm','4','admin',now(),'','SM2016101716241339082','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102516360317391','新增','2','/add','1','admin',now(),'','SM2016102514114456282','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102516373114112','删除','2','/delete','2','admin',now(),'','SM2016102514114456282','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102516382571019','修改','2','/edit','3','admin',now(),'','SM2016102514114456282','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102516391362679','详情','2','/detail','4','admin',now(),'','SM2016102514114456282','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102516560783416','资质管理','1','/general/qualification.htm','4','admin',now(),'','SM201600001000000002','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610251704459424','修改','2','/edit','1','admin',now(),'','SM2016102516560783416','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102517052412596','详情','2','/detail','2','admin',now(),'','SM2016102516560783416','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610261422453803','客户管理','1','#','3','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102614234201922','服务管理','1','#','4','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610261430597939','资质管理','1','#','1','admin',now(),'','SM201610261422453803','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102614313283767','客户查询','1','#','2','admin',now(),'','SM201610261422453803','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102615155587978','资质审核','1','/customer/examination.htm','1','admin',now(),'','SM201610261430597939','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102615182263387','需求方查询','1','/customer/demandQuery.htm','1','admin',now(),'','SM2016102614313283767','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102615195742362','服务方查询','1','/customer/serviceQuery.htm','2','admin',now(),'','SM2016102614313283767','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102616131531275','热门管理','1','#','1','admin',now(),'','SM2016102614234201922','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102616135028298','服务管理','1','#','2','admin',now(),'','SM2016102614234201922','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102616174180527','职位热门','1','/service/positionHot.htm','1','admin',now(),'','SM2016102616131531275','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102616185159827','简历管理','1','/service/resume.htm','1','admin',now(),'','SM2016102616135028298','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102616194726211','职位管理','1','/service/position.htm','2','admin',now(),'','SM2016102616135028298','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102616204426856','需求管理','1','/service/demand.htm','3','admin',now(),'','SM2016102616135028298','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102616213134226','服务管理','1','/service/service.htm','4','admin',now(),'','SM2016102616135028298','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102710015715817','上移','2','/up','1','admin',now(),'','SM2016102616174180527','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102710061950411','详情','2','/detail','1','admin',now(),'','SM2016102616185159827','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102710352740358','违规','2','/illegal','2','666',now(),'','SM2016102616185159827','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102713511124179','下移','2','/down','2','admin',now(),'','SM2016102616174180527','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102713520769566','移出','2','/hot','3','admin',now(),'','SM2016102616174180527','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102716141038672','详情','2','/detail','1','admin',now(),'','SM2016102616194726211','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102716145303737','违规','2','/illegal','2','admin',now(),'','SM2016102616194726211','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102716152643658','热门','2','/hot','3','admin',now(),'','SM2016102616194726211','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102716164070593','详情','2','/detail','1','admin',now(),'','SM2016102616204426856','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102716171687471','违规','2','/illegal','2','admin',now(),'','SM2016102616204426856','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610271619281957','详情','2','/detail','1','admin',now(),'','SM2016102616213134226','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102716200881167','违规','2','/illegal','2','admin',now(),'','SM2016102616213134226','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102716230457784','热门','2','/hot','3','admin',now(),'','SM2016102616213134226','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016103109354333594','审核','2','/check','1','admin',now(),'','SM2016102615155587978','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016103109361760998','详情','2','/detail','2','admin',now(),'','SM2016102615155587978','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016103109370202682','详情','2','/detail','1','admin',now(),'','SM2016102615182263387','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016103109391755469','详情','2','/detail','1','admin',now(),'','SM2016102615195742362','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016103121522614367','服务热门','1','/service/serviceHot.htm','3','admin',now(),'','SM2016102616131531275','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016103121552176712','上移','2','/up','1','admin',now(),'','SM2016103121522614367','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016103121560541082','下移','2','/down','2','admin',now(),'','SM2016103121522614367','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016103121564169543','移出','2','/hot','3','admin',now(),'','SM2016103121522614367','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016110813493977281','热门','2','/hot','2','admin',now(),'','SM2016102615195742362','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016110814111646197','服务方热门','1','/service/companyHot.htm','3','admin',now(),'','SM2016102616131531275','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016110814120275939','上移','2','/up','1','admin',now(),'','SM2016110814111646197','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016110814122476524','下移','2','/down','2','admin',now(),'','SM2016110814111646197','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016110814125102889','移出','2','/hot','3','admin',now(),'','SM2016110814111646197','1');

INSERT INTO `tstd_user` (`user_id`,`login_name`,`nickname`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`updater`,`update_datetime`,`remark`,`pdf`) VALUES ('U201600000000000000','admin',NULL,'21218cca77804d2ba1922c33e0151105','1','01','0','','','','','','21218cca77804d2ba1922c33e0151105','1','SR201600000000000000','0','admin',now(),'管理端系统方',NULL);
/*
-- Query: SELECT * FROM csw_std_user.tsys_role
LIMIT 0, 50000

-- Date: 2016-09-29 10:24
*/
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000000','超级管理员','1','admin',now(),'系统管理员','1');

/*
-- Query: SELECT `role_code`,`menu_code`,`updater`,now() as `update_datetime`,`remark` FROM jj_std_user.tsys_menu_role where role_code in ('SR201600000000000000')
LIMIT 0, 50000

-- Date: 2016-11-09 16:37
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
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102516560783416','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201610251704459424','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102517052412596','admin',now(),NULL);
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
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101716271123590','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719120926719','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719123215692','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719125359852','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101719132278227','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102514114456282','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102516360317391','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102516373114112','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102516382571019','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102516391362679','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201610261422453803','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201610261430597939','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102615155587978','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016103109354333594','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016103109361760998','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102614313283767','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102615182263387','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016103109370202682','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102615195742362','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016103109391755469','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016110813493977281','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102614234201922','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102616131531275','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102616174180527','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102710015715817','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102713511124179','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102713520769566','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016103121522614367','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016103121552176712','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016103121560541082','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016103121564169543','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016110814111646197','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016110814120275939','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016110814122476524','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016110814125102889','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102616135028298','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102616185159827','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102710061950411','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102710352740358','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102616194726211','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102716141038672','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102716145303737','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102716152643658','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102616204426856','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102716164070593','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102716171687471','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102616213134226','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201610271619281957','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102716200881167','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102716230457784','admin',now(),NULL);

/*
-- Query: select `to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,now() as update_datetime,`remark` from tsys_dict
LIMIT 0, 50000

-- Date: 2016-11-04 17:27
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
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'active_status','激活状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','active_status','0','不启用','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','active_status','1','启用','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'qua_kind','资质类型','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','qua_kind','1','培训','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','qua_kind','2','摄影/拍摄','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','qua_kind','3','美工外包','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','qua_kind','4','店铺代运营','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','qua_kind','5','客服外包','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','qua_kind','6','仓配服务','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','qua_kind','7','软件开发','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','qua_kind','8','产业园','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','qua_kind','9','人才招聘','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'position_kind','所属职位','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','A','运营总监','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','B','运营主管','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','C','运营','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','D','设计总监','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','E','设计/美工','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','F','推广专员','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','G','客服主管','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','H','客服/售后','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','I','仓储经理','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','J','采购经理','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','position_kind','K','其他','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'edu_kind','学历','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','edu_kind','1','本科','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','edu_kind','2','大专','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','edu_kind','3','高中','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','edu_kind','4','其他','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'work_type','工作类型','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','work_type','1','全职','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','work_type','2','兼职','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','work_type','3','实习','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'urgent_level','紧急程度','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','urgent_level','0','不紧急','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','urgent_level','1','紧急','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','urgent_level','2','一般','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'cmpcerti_status','公司资质状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','cmpcerti_status','0','待审核','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','cmpcerti_status','1','审核通过','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','cmpcerti_status','2','审核未通过','admin',now(),'');


INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'dp_tgfw','店铺提供服务','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','dp_tgfw','A','运营','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','dp_tgfw','B','推广','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','dp_tgfw','C','拍摄','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','dp_tgfw','D','美工','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','dp_tgfw','E','客服','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','dp_tgfw','F','仓储','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','dp_tgfw','G','打包发货','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'fee_mode','收费模式','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','fee_mode','1','基础服务费+提成','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','fee_mode','2','服务费','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','fee_mode','3','提成','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'pay_cycle','付款周期','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','pay_cycle','1','月付','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','pay_cycle','2','季付','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','pay_cycle','3','半年付','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','pay_cycle','4','年付','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'kfyw','客服业务','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','kfyw','1','售前','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','kfyw','2','售后','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'hpzl','货品种类','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','hpzl','1','食物','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','hpzl','2','海鲜','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','hpzl','3','生活用品','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'zzfw','增值服务','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','zzfw','A','人才培训','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','zzfw','B','代理运营','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','zzfw','C','软件系统开发','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','zzfw','D','营销广告','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','zzfw','E','渠道推广','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','zzfw','F','仓储物流','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'comp_scale','规模','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comp_scale','1','0-20人','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comp_scale','2','20-50人','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comp_scale','3','50-200人','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comp_scale','4','200-500人','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comp_scale','5','500人以上','admin',now(),'');
/*
-- Query: SELECT * FROM csw_std_user.tsys_config
LIMIT 0, 50000

-- Date: 2016-10-31 13:47
*/
INSERT INTO `tsys_config` (`to_system`,`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`) VALUES ('8','sysMobile','400-1000000','系统电话','admin',now(),NULL);
INSERT INTO `tsys_config` (`to_system`,`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`) VALUES ('8','serviceTime','9:30-21:30','服务时间','admin',now(),NULL);

/*
-- Query: SELECT * FROM jj_std_user.tstd_certificate
LIMIT 0, 50000

-- Date: 2016-11-05 20:52
*/
INSERT INTO `tstd_certificate` (`code`,`type`,`name`,`description`,`status`,`updater`,`update_datetime`,`remark`) VALUES ('1','1','培训','培训','1','admin',now(),NULL);
INSERT INTO `tstd_certificate` (`code`,`type`,`name`,`description`,`status`,`updater`,`update_datetime`,`remark`) VALUES ('2','2','摄影/拍摄','摄影/拍摄','1','admin',now(),NULL);
INSERT INTO `tstd_certificate` (`code`,`type`,`name`,`description`,`status`,`updater`,`update_datetime`,`remark`) VALUES ('3','3','美工外包','美工外包','1','admin',now(),NULL);
INSERT INTO `tstd_certificate` (`code`,`type`,`name`,`description`,`status`,`updater`,`update_datetime`,`remark`) VALUES ('4','4','店铺代运营','店铺代运营','1','admin',now(),NULL);
INSERT INTO `tstd_certificate` (`code`,`type`,`name`,`description`,`status`,`updater`,`update_datetime`,`remark`) VALUES ('5','5','客服外包','客服外包','1','admin',now(),NULL);
INSERT INTO `tstd_certificate` (`code`,`type`,`name`,`description`,`status`,`updater`,`update_datetime`,`remark`) VALUES ('6','6','仓配服务','仓配服务','1','admin',now(),NULL);
INSERT INTO `tstd_certificate` (`code`,`type`,`name`,`description`,`status`,`updater`,`update_datetime`,`remark`) VALUES ('7','7','软件开发','软件开发','1','admin',now(),NULL);
INSERT INTO `tstd_certificate` (`code`,`type`,`name`,`description`,`status`,`updater`,`update_datetime`,`remark`) VALUES ('8','8','产业园','产业园','1','admin',now(),NULL);
INSERT INTO `tstd_certificate` (`code`,`type`,`name`,`description`,`status`,`updater`,`update_datetime`,`remark`) VALUES ('9','9','人才招聘','人才招聘','1','admin',now(),NULL);

/*
-- Query: SELECT * FROM jj_std_user.tstd_cnavigate
LIMIT 0, 50000

-- Date: 2016-11-09 16:45
*/
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016110916403257386','服务banner','2',NULL,'http://121.43.101.148:8901/2016110916/banner4.png','1','3',1,'1','0','',NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016110916410720368','登录banner','2',NULL,'http://121.43.101.148:8901/2016110916/denglu-datu.png','1','4',1,'1','0','',NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016110916420287326','首页banner','2',NULL,'http://121.43.101.148:8901/2016110916/banner1.png','1','1',1,'1','0','',NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016110916422073031','人才banner','2',NULL,'http://121.43.101.148:8901/2016110916/banner2.png','1','2',1,'1','0','',NULL,'0');
