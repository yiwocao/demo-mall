/*
-- Query: SELECT * FROM tstd_user where login_name = 'admin' and system_code = 'CD-CSH000002'
-- Date: 2016-12-19 15:38
*/
INSERT INTO `tstd_user` (`user_id`,`login_name`,`nickname`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`pdf`,`amount`,`lj_amount`,`company_code`,`open_id`,`jpush_id`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHU201600000000000001','admin',NULL,'21218cca77804d2ba1922c33e0151105','1','01','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CSHSR201600000000000000','0',NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,'管理端系统方','CD-CSH000002');

/*
-- Query: SELECT code,name,type,url,order_no,updater, now() as update_datetime,remark,parent_code,system_code FROM tsys_menu
-- Date: 2016-12-19 15:41
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201600000000000000','根目录','1','#','1','admin',now(),'','','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201600001000000000','系统根目录','1','#','1','admin',now(),'','CSHSM201600000000000000','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201600001000000001','系统管理','1','#','1','admin',now(),'','CSHSM201600001000000000','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201600001000000002','运维管理','1','#','2','admin',now(),NULL,'CSHSM201600001000000001','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201600001000000003','菜单管理','1','/security/menu.htm','1','admin',now(),NULL,'CSHSM201600001000000002','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201600001000000004','修改','2','/edit','1','admin',now(),NULL,'CSHSM201600001000000003','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101716241339082','运营管理','1','#','1','admin',now(),'','CSHSM201600001000000001','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101716253866426','角色管理','1','/security/role.htm','1','admin',now(),'','CSHSM2016101716241339082','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101716261754674','用户管理','1','/security/user.htm','2','admin',now(),'','CSHSM2016101716241339082','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101716271123590','公司管理','1','/general/company.htm','1','admin',now(),'','CSHSM2016102516555766535','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101716290657836','系统参数管理','1','/general/param.htm','2','admin',now(),'','CSHSM201600001000000002','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101716295904680','数据字典管理','1','/general/dict.htm','3','admin',now(),'','CSHSM201600001000000002','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101716450533995','分配菜单','2','/change','4','admin',now(),'','CSHSM2016101716253866426','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101717551955993','新增','2','/add','1','admin',now(),'','CSHSM2016101716253866426','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101717560118734','修改','2','/edit','2','admin',now(),'','CSHSM2016101716253866426','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101717563661357','删除','2','/delete','3','admin',now(),'','CSHSM2016101716253866426','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719082391126','新增','2','/add','1','admin',now(),'','CSHSM2016101716261754674','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719094151894','重置密码','2','/reset','3','admin',now(),'','CSHSM2016101716261754674','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719100760088','注销','2','/rock','4','admin',now(),'','CSHSM2016101716261754674','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719110981215','设置角色','2','/assign','5','admin',now(),'','CSHSM2016101716261754674','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719120926719','新增','2','/add','1','admin',now(),'','CSHSM2016101716271123590','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719123215692','注销/取消','2','/rock','2','admin',now(),'','CSHSM2016101716271123590','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719125359852','修改','2','/edit','3','admin',now(),'','CSHSM2016101716271123590','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719132278227','详情','2','/detail','4','admin',now(),'','CSHSM2016101716271123590','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719140087629','修改','2','/edit','1','admin',now(),'','CSHSM2016101716290657836','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719143965297','修改','2','/edit','1','admin',now(),'','CSHSM2016101716295904680','CD-CSH000002');



INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719284086819','菜单管理','1','/std/menu.htm','2','admin',now(),'','CSHSM2016102516555766535','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201610171939350218','Banner管理','1','/std/banner.htm','3','admin',now(),'','CSHSM2016102516555766535','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719441184314','新增','2','/add','1','admin',now(),'','CSHSM2016101719284086819','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719444119219','删除','2','/delete','3','admin',now(),'','CSHSM2016101719284086819','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719451349522','修改','2','/edit','2','admin',now(),'','CSHSM2016101719284086819','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719454161086','详情','2','/detail','4','admin',now(),'','CSHSM2016101719284086819','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719463455794','新增','2','/add','1','admin',now(),'','CSHSM201610171939350218','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719470668795','修改','2','/edit','2','admin',now(),'','CSHSM201610171939350218','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719472470447','删除','2','/delete','3','admin',now(),'','CSHSM201610171939350218','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016101719474966791','详情','2','/detail','4','admin',now(),'','CSHSM201610171939350218','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016102516555766535','总部管理','1','#','3','admin',now(),'','CSHSM201600001000000001','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111510330493381','商户管理','1','#','3','admin',now(),'','CSHSM201600001000000000','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111510350776128','产品管理','1','#','1','admin',now(),'','CSHSM2016111510330493381','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111510355949169','会员管理','1','#','2','admin',now(),'','CSHSM2016111510330493381','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111510362607317','基础数据','1','#','3','admin',now(),'','CSHSM2016111510330493381','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111510503080635','产品管理','1','/merchant/input.htm','1','admin',now(),'','CSHSM2016111510350776128','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201611151053121379','订单处理','1','/merchant/order.htm','3','admin',now(),'','CSHSM2016111510350776128','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201611151055259648','会员查询','1','/merchant/memQuery.htm','1','admin',now(),'','CSHSM2016111510355949169','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111510564458473','消息推送','1','/merchant/message.htm','3','admin',now(),'','CSHSM2016111510355949169','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111511020827441','业务配置','1','/merchant/configure.htm','1','admin',now(),'','CSHSM2016111510362607317','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111511054647887','产品类别管理','1','/merchant/genre.htm','2','admin',now(),'','CSHSM2016111510362607317','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111513535858948','增加','2','/add','1','admin',now(),'','CSHSM2016111510503080635','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111513542942836','修改','2','/edit','3','admin',now(),'','CSHSM2016111510503080635','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111513550543593','详情','2','/detail','4','admin',now(),'','CSHSM2016111510503080635','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111515293904842','新增','2','/add','1','admin',now(),'','CSHSM2016111510564458473','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111515301172665','修改','2','/edit','2','admin',now(),'','CSHSM2016111510564458473','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111515304277518','详情','2','/detail','3','admin',now(),'','CSHSM2016111510564458473','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201611151618596835','增加','2','/add','1','admin',now(),'','CSHSM2016111511054647887','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111516193382464','修改','2','/edit','2','admin',now(),'','CSHSM2016111511054647887','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111516200165657','删除','2','/delete','3','admin',now(),'','CSHSM2016111511054647887','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111614583781382','修改','2','/edit','1','admin',now(),'','CSHSM2016111511020827441','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111615021523874','删除','2','/delete1','3','admin',now(),'','CSHSM2016111510503080635','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111615072749327','上架','2','/put','5','admin',now(),'','CSHSM2016111510503080635','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111615075646173','下架','2','/pull','6','admin',now(),'','CSHSM2016111510503080635','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111617482621219','取消退款','2','/refund','1','admin',now(),'','CSHSM201611151053121379','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111617503076371','物流发货','2','/logistics','2','admin',now(),'','CSHSM201611151053121379','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111617514987199','现场给货','2','/site','3','admin',now(),'','CSHSM201611151053121379','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111617525666040','确认收货','2','/sure','4','admin',now(),'','CSHSM201611151053121379','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111617541945270','快递异常','2','/abnormal','5','admin',now(),'','CSHSM201611151053121379','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016111617545503974','详情','2','/detail','6','admin',now(),'','CSHSM201611151053121379','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112114571112079','积分流水','2','/integral','3','admin',now(),'','CSHSM201611151055259648','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112115582632850','冻结','2','/freeze-up','1','admin',now(),'','CSHSM201611151055259648','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112115593957631','解冻','2','/freeze-down','2','admin',now(),'','CSHSM201611151055259648','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112216130115559','发布','2','/release','4','admin',now(),'','CSHSM2016111510564458473','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112418045788556','Banner管理','1','/merchant/banner.htm','4','admin',now(),'','CSHSM2016111510362607317','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112418055205740','新增','2','/add','1','admin',now(),'','CSHSM2016112418045788556','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112418061530598','修改','2','/edit','2','admin',now(),'','CSHSM2016112418045788556','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112418063554271','删除','2','/delete','3','admin',now(),'','CSHSM2016112418045788556','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112418065439751','详情','2','/detail','4','admin',now(),'','CSHSM2016112418045788556','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112419392344281','产品位置管理','1','/merchant/position.htm','3','admin',now(),'','CSHSM2016111510362607317','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112419394313547','修改','2','/edit','1','admin',now(),'','CSHSM2016112419392344281','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM201611242031218743','卡券管理','1','/merchant/ticket.htm','2','admin',now(),'','CSHSM2016111510355949169','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112420323033195','新增','2','/add','1','admin',now(),'','CSHSM201611242031218743','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112420343620543','作废','2','/discard','2','admin',now(),'','CSHSM201611242031218743','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112420350298428','详情','2','/detail','3','admin',now(),'','CSHSM201611242031218743','CD-CSH000002');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CSHSM2016112510081552530','下载二维码','2','/qrcode','4','admin',now(),'','CSHSM201611242031218743','CD-CSH000002');

/*
-- Query: SELECT `code`,`name`,`level`,'admin' as `updater`,now() as 'update_datetime',`remark`,`kind` FROM tsys_role 
LIMIT 0, 50000

-- Date: 2016-10-21 10:58
*/
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','超级管理员','1','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','普通商户','2','admin',now(),NULL,'CD-CSH000002');
/*
-- Query: SELECT `role_code`,`menu_code`,`updater`,now() as `update_datetime`,`remark`, `system_code`FROM tsys_menu_role where role_code in('CSHSR201600000000000000','CSHSR201600000000000012')
-- Date: 2016-12-19 15:48
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM201600000000000000','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM201600001000000000','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM201600001000000001','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM201600001000000002','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM201600001000000003','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM201600001000000004','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101716290657836','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719140087629','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101716295904680','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719143965297','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101716241339082','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101716253866426','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101716450533995','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101717551955993','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101717560118734','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101717563661357','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101716261754674','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719082391126','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719094151894','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719100760088','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719110981215','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016102516555766535','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101716271123590','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719120926719','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719123215692','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719125359852','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719132278227','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719284086819','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719441184314','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719444119219','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719451349522','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719454161086','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM201610171939350218','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719463455794','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719470668795','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719472470447','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000000','CSHSM2016101719474966791','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM201600000000000000','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM201600001000000000','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111510330493381','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111510350776128','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111510503080635','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111513535858948','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111513542942836','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111513550543593','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111615021523874','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111615072749327','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111615075646173','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM201611151053121379','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111617482621219','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111617503076371','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111617514987199','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111617525666040','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111617541945270','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111617545503974','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111510355949169','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM201611151055259648','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112114571112079','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112115582632850','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112115593957631','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111510564458473','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111515293904842','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111515301172665','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111515304277518','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112216130115559','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM201611242031218743','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112420323033195','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112420343620543','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112420350298428','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112510081552530','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111510362607317','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111511020827441','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111614583781382','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111511054647887','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM201611151618596835','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111516193382464','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016111516200165657','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112418045788556','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112418055205740','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112418061530598','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112418063554271','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112418065439751','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112419392344281','admin',now(),NULL,'CD-CSH000002');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHSR201600000000000012','CSHSM2016112419394313547','admin',now(),NULL,'CD-CSH000002');

/*
-- Query: select `system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,now() as update_datetime,`remark` from tsys_dict
LIMIT 0, 50000

-- Date: 2016-11-25 18:29
*/
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'user_status','用户状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','user_status','0','正常','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','user_status','1','程序锁定','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','user_status','2','人工锁定','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'id_kind','证件类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','id_kind','1','身份证','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'role_level','角色等级','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','role_level','1','运维','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','role_level','2','运营','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','role_level','3','客户','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'res_type','资源类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','res_type','1','菜单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','res_type','2','按钮','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'lock_direction','锁定方向','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','lock_direction','1','用锁','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','lock_direction','2','解锁','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'order_status','订单状态','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','order_status','1','待支付','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','order_status','2','已支付待发货','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','order_status','3','已发货待收货','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','order_status','4','已收货','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','order_status','91','用户取消','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','order_status','92','商户取消','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','order_status','93','快递异常','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'product_status','产品状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','product_status','0','待发布','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','product_status','1','已上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','product_status','2','已下架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'receipt_type','发票类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','receipt_type','1','个人','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','receipt_type','2','企业','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'wl_company','物流公司','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','wl_company','EMS','邮政EMS','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','wl_company','STO','申通快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','wl_company','ZTO','中通快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','wl_company','YTO','圆通快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','wl_company','HTKY','汇通快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','wl_company','ZJS','宅急送','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','wl_company','SF','顺丰快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','wl_company','TTKD','天天快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'banner_location','banner位置','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','banner_location','B_Mobile_SY_CSH','首页','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'ticket_status','卡券状态','host',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','ticket_status','0','待使用','host',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','ticket_status','1','已使用','host',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','ticket_status','2','已作废','host',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'msg_type','消息类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','msg_type','1','公告','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','msg_type','2','新闻','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','msg_type','4','短信','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'cmp_location','公司位置','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','cmp_location','0','不启用','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','cmp_location','1','正常','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','0',NULL,'biz_type','业务类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','biz_type','-5','支出','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CSH000002','1','biz_type','5','收入','admin',now(),'');

INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('DH2016100000000000101','广告图1','2','','http://121.43.101.148:8901/CSW20161031/banner1.png','1','B_Mobile_SY_CSH',1,'2',NULL,NULL,NULL,'0','CD-CSH000002');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('DH2016100000000000102','广告图2','2','','http://121.43.101.148:8901/CSW20161031/banner2.png','1','B_Mobile_SY_CSH',2,'2',NULL,NULL,NULL,'0','CD-CSH000002');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('DH2016100000000000103','广告图3','2','','http://121.43.101.148:8901/CSW20161031/banner3.png','1','B_Mobile_SY_CSH',3,'2',NULL,NULL,NULL,'0','CD-CSH000002');
