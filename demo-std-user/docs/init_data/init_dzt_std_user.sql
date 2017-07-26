/*
-- Query: select `user_id`, `login_name`, `nickname`, `login_pwd`, `login_pwd_strength`, `kind`, `level`, `user_referee`, `mobile`, `id_kind`, `id_no`, `real_name`, `trade_pwd`, `trade_pwd_strength`, `role_code`, `status`, `pdf`, `amount`, `lj_amount`, `company_code`, `open_id`, `jpush_id`, `updater`, `update_datetime`, `longitude`, `latitude`, `remark`, `system_code` from tstd_user where login_name = 'admin'
LIMIT 0, 10000

-- Date: 2017-03-05 22:51
*/
INSERT INTO `tstd_user` (`user_id`,`login_name`,`nickname`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`pdf`,`amount`,`lj_amount`,`company_code`,`open_id`,`jpush_id`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CDZT201700000000000001','admin',NULL,'21218cca77804d2ba1922c33e0151105','1','01','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DZTSR2017041310190267791','0',NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,'管理端系统方','CD-CDZT000009');

/*
-- Query: select `code`, `name`, `type`, `url`, `order_no`, `updater`,now() as `update_datetime`, `remark`, `parent_code`, `system_code` from tsys_menu where code in (SELECT `menu_code` FROM std_user.tsys_menu_role where role_code= 'DZTSR2017041310190267791')
LIMIT 0, 10000

-- Date: 2017-04-13 10:24
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2017032911200961325','修改','2','/edit','2','admin',now(),'','DZTSM201600001000000003','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM201600000000000000','根目录','1','#','1','admin',now(),'','','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM201600001000000001','系统管理','1','#','1','admin',now(),'','DZTSM201600000000000000','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM201600001000000002','运维管理','1','#','2','admin',now(),NULL,'DZTSM201600001000000001','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM201600001000000003','菜单管理','1','/security/menu.htm','1','admin',now(),NULL,'DZTSM201600001000000002','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM201600001000000004','新增','2','/add','1','admin',now(),'','DZTSM201600001000000003','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101716241339082','运营管理','1','#','1','admin',now(),'','DZTSM201600001000000001','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101716253866426','角色管理','1','/security/role.htm','1','admin',now(),'','DZTSM2016101716241339082','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101716261754674','用户管理','1','/security/user.htm','2','admin',now(),'','DZTSM2016101716241339082','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101716290657836','系统参数管理','1','/general/param.htm','2','admin',now(),'','DZTSM201600001000000002','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101716295904680','数据字典管理','1','/general/dict.htm','3','admin',now(),'','DZTSM201600001000000002','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101716450533995','分配菜单','2','/change','4','admin',now(),'','DZTSM2016101716253866426','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101717551955993','新增','2','/add','1','admin',now(),'','DZTSM2016101716253866426','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101717560118734','修改','2','/edit','2','admin',now(),'','DZTSM2016101716253866426','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101717563661357','删除','2','/delete','3','admin',now(),'','DZTSM2016101716253866426','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101719082391126','新增','2','/add','1','admin',now(),'','DZTSM2016101716261754674','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101719094151894','重置密码','2','/reset','2','admin',now(),'','DZTSM2016101716261754674','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101719100760088','注销','2','/rock','4','admin',now(),'','DZTSM2016101716261754674','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101719110981215','设置角色','2','/assign','5','admin',now(),'','DZTSM2016101716261754674','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101719140087629','修改','2','/edit','1','admin',now(),'','DZTSM2016101716290657836','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016101719143965297','修改','2','/edit','1','admin',now(),'','DZTSM2016101716295904680','CD-CDZT000009');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('DZTSM2016120610552303416','激活','2','/active','3','admin',now(),'','DZTSM2016101716261754674','CD-CDZT000009');


delete from tsys_role where system_code = 'CD-CDZT000009';
/*
-- Query: select `code`, `name`, `level`, `updater`, `update_datetime`, `remark`, `system_code` from tsys_role
LIMIT 0, 10000

-- Date: 2017-03-05 22:53
*/
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','超级管理员','1','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR20170000000000hhr','合伙人','1','admin',now(),NULL,'CD-CDZT000009');

delete from tsys_menu_role where system_code = 'CD-CDZT000009';

/*
-- Query: SELECT `role_code`, `menu_code`, `updater`, now() as `update_datetime`, `remark`, `system_code` FROM std_user.tsys_menu_role where role_code= 'DZTSR2017041310190267791'
LIMIT 0, 10000

-- Date: 2017-04-13 10:21
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM201600000000000000','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM201600001000000001','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM201600001000000002','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM201600001000000003','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2017032911200961325','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM201600001000000004','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101716290657836','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101719140087629','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101716295904680','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101719143965297','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101716241339082','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101716253866426','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101716450533995','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101717551955993','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101717560118734','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101717563661357','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101716261754674','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101719082391126','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101719094151894','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101719100760088','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016101719110981215','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('DZTSR2017041310190267791','DZTSM2016120610552303416','admin',now(),NULL,'CD-CDZT000009');

/*
-- Query: select `system_code`, `type`, `parent_key`, `dkey`, `dvalue`, `updater`,now() as `update_datetime`, `remark` from tsys_dict
LIMIT 0, 10000

-- Date: 2017-03-09 16:16
*/

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'user_status','用户状态','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_status','0','正常','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_status','1','程序锁定','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_status','2','人工锁定','admin',now(),NULL,'CD-CDZT000009');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'id_kind','证件类型','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','id_kind','1','身份证','admin',now(),NULL,'CD-CDZT000009');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'role_level','角色等级','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','role_level','1','运维','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','role_level','2','运营','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','role_level','3','客户','admin',now(),NULL,'CD-CDZT000009');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'res_type','资源类型','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','res_type','1','菜单','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','res_type','2','按钮','admin',now(),NULL,'CD-CDZT000009');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'lock_direction','锁定方向','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','lock_direction','1','锁定','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','lock_direction','2','解锁','admin',now(),NULL,'CD-CDZT000009');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'partner_status','合伙人状态','admin',now(),'','CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','partner_status','0','合伙中','admin',now(),'','CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','partner_status','2','已解散合伙','admin',now(),'','CD-CDZT000009');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'news_status','信息状态','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','news_status','0','待发送','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','news_status','1','已发送','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','news_status','2','发送失败','admin',now(),NULL,'CD-CDZT000009');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'user_kind','针对人群','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_kind','1','C端用户','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_kind','2','B端用户','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_kind','3','平台用户','admin',now(),NULL,'CD-CDZT000009');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'notice_status','公告状态','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','notice_status','0','未发布','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','notice_status','1','已发布','admin',now(),NULL,'CD-CDZT000009');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','notice_status','2','已下架','admin',now(),NULL,'CD-CDZT000009');

/*
-- Query: SELECT `code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code` FROM tstd_cpassword
LIMIT 0, 10000

-- Date: 2017-03-12 14:52
*/
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('CD-CDZT000009-001','2','ACCESS_KEY','M0atdzBYOQ-oloFpRJFtX7HDDU1NTBBvRUu3MS1T','','CD-CDZT000009','CD-CDZT000009');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('CD-CDZT000009-002','2','SECRET_KEY','F8eJ94o1WoFIB7VxTwtI5rB8RLi7IHC7cY47Bnwh','','CD-CDZT000009','CD-CDZT000009');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('CD-CDZT000009-003','2','bucket','cd-test','','CD-CDZT000009','CD-CDZT000009');