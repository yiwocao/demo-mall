/*
-- Query: SELECT * FROM tstd_user where login_name = 'admin' and system_code = 'CD-CQQ000004'
-- Date: 2016-12-30 19:08
*/
INSERT INTO `tstd_user` (`user_id`,`login_name`,`nickname`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`pdf`,`amount`,`lj_amount`,`company_code`,`open_id`,`jpush_id`,`updater`,`update_datetime`,`longitude`,`latitude`,`remark`,`system_code`) VALUES ('QQU201600000000000001','admin',NULL,'21218cca77804d2ba1922c33e0151105',NULL,'01','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'QQSR201600000000000000','0',NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL,'管理端系统方','CD-CQQ000004');

/*
-- Query: SELECT code,name,type,url,order_no,updater, now() as update_datetime,remark,parent_code,system_code FROM tsys_menu where system_code = 'CD-CQQ000004'
-- Date: 2016-12-30 22:34
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM201600000000000000','根目录','1','#','1','admin',now(),'','','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM201600001000000000','系统根目录','1','#','1','admin',now(),'','QQSM201600000000000000','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM201600001000000001','系统管理','1','#','1','admin',now(),'','QQSM201600001000000000','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM201600001000000002','运维管理','1','#','2','admin',now(),NULL,'QQSM201600001000000001','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM201600001000000003','菜单管理','1','/security/menu.htm','1','admin',now(),NULL,'QQSM201600001000000002','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM201600001000000004','修改','2','/edit','1','admin',now(),NULL,'QQSM201600001000000003','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101716241339082','运营管理','1','#','1','admin',now(),'','QQSM201600001000000001','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101716253866426','角色管理','1','/security/role.htm','1','admin',now(),'','QQSM2016101716241339082','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101716261754674','用户管理','1','/security/user.htm','2','admin',now(),'','QQSM2016101716241339082','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101716290657836','系统参数管理','1','/general/param.htm','2','admin',now(),'','QQSM201600001000000002','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101716295904680','数据字典管理','1','/general/dict.htm','3','admin',now(),'','QQSM201600001000000002','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101716450533995','分配菜单','2','/change','4','admin',now(),'','QQSM2016101716253866426','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101717551955993','新增','2','/add','1','admin',now(),'','QQSM2016101716253866426','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101717560118734','修改','2','/edit','2','admin',now(),'','QQSM2016101716253866426','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101717563661357','删除','2','/delete','3','admin',now(),'','QQSM2016101716253866426','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101719082391126','新增','2','/add','1','admin',now(),'','QQSM2016101716261754674','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101719094151894','重置密码','2','/reset','3','admin',now(),'','QQSM2016101716261754674','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101719100760088','注销','2','/rock','4','admin',now(),'','QQSM2016101716261754674','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101719110981215','设置角色','2','/assign','5','admin',now(),'','QQSM2016101716261754674','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101719140087629','修改','2','/edit1','1','admin',now(),'','QQSM2016101716290657836','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('QQSM2016101719143965297','修改','2','/edit','1','admin',now(),'','QQSM2016101716295904680','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710300584111','业务管理','1','#','2','admin',now(),'','QQSM201600001000000000','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710314054063','内容管理','1','#','1','admin',now(),'','SM2016122710300584111','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710322719251','用户管理','1','#','2','admin',now(),'','SM2016122710300584111','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710330085011','订单管理','1','#','3','admin',now(),'','SM2016122710300584111','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710362490191','往日精彩','1','/biz/wonderful.htm','1','admin',now(),'','SM2016122710314054063','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710365922580','活动发布','1','/biz/active.htm','2','admin',now(),'','SM2016122710314054063','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710380194953','会员管理','1','/biz/member.htm','1','admin',now(),'','SM2016122710322719251','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710384765587','订单处理','1','/biz/order.htm','1','admin',now(),'','SM2016122710330085011','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710483431773','新增','2','/add','1','admin',now(),'','SM2016122710362490191','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710495713064','修改','2','/edit','2','admin',now(),'','SM2016122710362490191','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710510422623','上架/下架','2','/frame','3','admin',now(),'','SM2016122710362490191','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710514688079','置顶','2','/top','4','admin',now(),'','SM2016122710362490191','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122710524576693','详情','2','/detail','5','admin',now(),'','SM2016122710362490191','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122711013421633','新增','2','/add','1','admin',now(),'','SM2016122710365922580','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201612271102528668','修改','2','/edit','2','admin',now(),'','SM2016122710365922580','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122711041655422','上架/下架','2','/grounding','3','admin',now(),'','SM2016122710365922580','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122711045517687','详情','2','/detail','4','admin',now(),'','SM2016122710365922580','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122711063813546','导出','2','/export','1','admin',now(),'','SM2016122710380194953','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122711074692416','已退款','2','/refund','1','admin',now(),'','SM2016122710384765587','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122711105466362','已联系','2','/contact','2','admin',now(),'','SM2016122710384765587','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122711114000798','已参加','2','/visited','3','admin',now(),'','SM2016122710384765587','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016122711121723625','导出','2','/export','4','admin',now(),'','SM2016122710384765587','CD-CQQ000004');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2016123000571978118','取消注销','2','/active','4','admin',now(),'','QQSM2016101716261754674','CD-CQQ000004');

/*
-- Query: SELECT code,name,level,'admin' as updater,now() as 'update_datetime',remark,system_code FROM tsys_role WHERE system_code = 'CD-CQQ000004'
-- Date: 2016-12-30 19:10
*/
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','超级管理员','1','admin',now(),'','CD-CQQ000004');

/*
-- Query: SELECT role_code,menu_code,updater,now() as update_datetime,remark, system_code FROM tsys_menu_role where role_code in('QQSR201600000000000000') AND system_code = 'CD-CQQ000004'
-- Date: 2016-12-30 22:35
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM201600000000000000','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM201600001000000000','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM201600001000000001','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM201600001000000002','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM201600001000000003','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM201600001000000004','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101716290657836','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101719140087629','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101716295904680','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101719143965297','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101716241339082','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101716253866426','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101716450533995','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101717551955993','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101717560118734','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101717563661357','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101716261754674','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101719082391126','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101719094151894','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101719100760088','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','QQSM2016101719110981215','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710300584111','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710314054063','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710362490191','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710483431773','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710495713064','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710510422623','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710514688079','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710524576693','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710365922580','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122711013421633','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM201612271102528668','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122711041655422','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122711045517687','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710322719251','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710380194953','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122711063813546','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710330085011','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122710384765587','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122711074692416','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122711105466362','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122711114000798','111',now(),NULL,'CD-CQQ000004');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('QQSR201600000000000000','SM2016122711121723625','111',now(),NULL,'CD-CQQ000004');
/*
-- Query: SELECT system_code,type,parent_key,dkey,dvalue,updater,now() as update_datetime,remark from tsys_dict WHERE system_code = 'CD-CQQ000004'
-- Date: 2016-12-30 19:11
*/
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','0',NULL,'yesterday_status','往日精彩状态','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','yesterday_status','0','草稿','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','yesterday_status','1','上架','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','yesterday_status','2','下架','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','0',NULL,'active_status','活动状态','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','active_status','0','草稿','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','active_status','1','上架','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','active_status','2','下架','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','0','','order_status','订单状态','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','order_status','0','待支付','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','order_status','1','已支付待联系','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','order_status','2','已联系','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','order_status','3','已取消','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','order_status','5','已退款','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','order_status','7','已参加','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','0','','location_status','UI位置','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','location_status','0','普通','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','location_status','1','置顶','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','0',NULL,'user_status','用户状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','user_status','0','正常','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','user_status','1','程序锁定','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','user_status','2','人工锁定','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','0',NULL,'id_kind','证件类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','id_kind','1','身份证','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','0',NULL,'role_level','角色等级','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','role_level','1','运维','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','role_level','2','运营','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','role_level','3','客户','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','0',NULL,'res_type','资源类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','res_type','1','菜单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','res_type','2','按钮','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','0',NULL,'lock_direction','锁定方向','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','lock_direction','1','用锁','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CQQ000004','1','lock_direction','2','解锁','admin',now(),'');

/*
-- Query: SELECT * FROM game_std_user.tstd_cpassword
LIMIT 0, 50000

-- Date: 2017-01-19 15:45
*/
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('001','2','ACCESS_KEY','Dc0pMP8ImFm78-uk4iGsOPpB2-vHc64D07OsOQVi',NULL,'CD-CHD000002','CD-CHD000002');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('002','2','SECRET_KEY','3NP-tpZP9-5fH-R-FhvKTfYpPPVFNvjFF3JXmrcq',NULL,'CD-CHD000002','CD-CHD000002');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('003','2','bucket','b2coss',NULL,'CD-CHD000002','CD-CHD000002');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('CD-CHD000002-001','4','ACCESS_KEY','wx0bf01798e93cb2f9',NULL,'CD-CHD000002','CD-CHD000002');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('CD-CHD000002-002','4','SECRET_KEY','e788266236ab5295a0ddbc6a5d356ca4',NULL,'CD-CHD000002','CD-CHD000002');


