/*
-- Query: SELECT ckey,cvalue,note,updater, now() as update_datetime,remark,system_code FROM tsys_config where system_code = 'CD-CCG000007'
LIMIT 0, 10000

-- Date: 2017-04-05 23:16
*/
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('aboutus','关于我们','关于我们','admin',now(),NULL,'CD-CCG000007','CD-CCG000007');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('reg_protocol','注册协议','注册协议','admin',now(),NULL,'CD-CCG000007','CD-CCG000007');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('treasure_rule','夺宝玩法介绍','夺宝玩法介绍','admin',now(),NULL,'CD-CCG000007','CD-CCG000007');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('treasure_statement','夺宝免责申明','夺宝免责申明','admin',now(),NULL,'CD-CCG000007','CD-CCG000007');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('fyf_rule','发一发玩法介绍','发一发玩法介绍','admin',now(),NULL,'CD-CCG000007','CD-CCG000007');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('fyf_statement','发一发免责申明','发一发免责申明','admin',now(),NULL,'CD-CCG000007','CD-CCG000007');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('yyy_rule','摇一摇玩法介绍','摇一摇玩法介绍','admin',now(),NULL,'CD-CCG000007','CD-CCG000007');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('yyy_statement','摇一摇免责申明','摇一摇免责申明','admin',now(),NULL,'CD-CCG000007','CD-CCG000007');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('telephone','服务热线','400-0579-228','admin',now(),NULL,'CD-CCG000007','CD-CCG000007');

/*
-- Query: SELECT `type`,`ckey`,`cvalue`,`note`,`updater`,now() as `update_datetime`,`remark`,`company_code`,`system_code` FROM std_user.tsys_config where type= '1'
LIMIT 0, 400

-- Date: 2017-05-02 21:14
*/
INSERT INTO `tsys_config` (`type`,`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','regAddJf','2','','admin',now(),'注册送积分','CD-CCG000007','CD-CCG000007');
INSERT INTO `tsys_config` (`type`,`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`company_code`,`system_code`) VALUES ('1','loginAddJf','1','','admin',now(),'登录送积分','CD-CCG000007','CD-CCG000007');

/*
-- Query: SELECT `user_id`,`login_name`,`nickname`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`pdf`,`company_code`,`open_id`,`jpush_id`,`updater`,`update_datetime`,`remark`,`system_code` FROM std_user.tstd_user where system_code = 'CD-CCG000007'
LIMIT 0, 10000

-- Date: 2017-03-25 17:26
*/
INSERT INTO `tstd_user` (`user_id`,`login_name`,`nickname`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`pdf`,`company_code`,`open_id`,`jpush_id`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCG201600000000000001','admin',NULL,'21218cca77804d2ba1922c33e0151105','1','01','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SR2017032821443420391','0',NULL,NULL,NULL,NULL,'admin',NULL,'管理端系统方','CD-CCG000007');
INSERT INTO `tstd_user` (`user_id`,`login_name`,`nickname`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`pdf`,`company_code`,`open_id`,`jpush_id`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SYS_USER_CAIGO','caigo',NULL,'21218cca77804d2ba1922c33e0151105','1','01','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CCGR201600000000000001','0',NULL,NULL,NULL,NULL,'admin','2017-03-28 21:43:29','','CD-CCG000007');

/*
-- Query: SELECT code,name,type,url,order_no,updater, now() as update_datetime,remark,parent_code,system_code FROM tsys_menu where system_code = 'CD-CCG000007'
LIMIT 0, 400

-- Date: 2017-05-04 19:51
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM201600000000000000','根目录','1','#','1','admin',now(),'','','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM201600001000000001','系统管理','1','#','1','admin',now(),'','CCGSM201600000000000000','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM201600001000000002','运维管理','1','#','2','admin',now(),'','CCGSM201600001000000001','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM201600001000000003','菜单管理','1','/security/menu.htm','1','admin',now(),'','CCGSM201600001000000002','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM201600001000000004','修改','2','/edit','2','admin',now(),'','CCGSM201600001000000003','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM2016101716253866426','角色管理','1','/security/role.htm','1','admin',now(),'','SM2017032110563544277','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM2016101716261754674','用户管理','1','/security/user.htm','2','admin',now(),'','SM2017032110563544277','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM2016101716295904680','数据字典管理','1','/general/dict.htm','3','admin',now(),'','CCGSM201600001000000002','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM2016101716450533995','分配菜单','2','/change','4','admin',now(),'','CCGSM2016101716253866426','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM2016101717551955993','新增','2','/add','1','admin',now(),'','CCGSM201600001000000003','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM2016101717560118734','修改','2','/edit','2','admin',now(),'','CCGSM2016101716253866426','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM2016101717563661357','删除','2','/delete','3','admin',now(),'','CCGSM2016101716253866426','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM2016101719082391126','新增','2','/add','1','admin',now(),'','CCGSM2016101716261754674','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM2016101719110981215','设置角色','2','/assign','5','admin',now(),'','CCGSM2016101716261754674','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCGSM2016101719143965297','修改','2','/edit','2','admin',now(),'','CCGSM2016101716295904680','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032110392893832','新增','2','/add','1','admin',now(),'','CCGSM2016101716253866426','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032110563544277','运营管理','1','#','1','admin',now(),'','CCGSM201600001000000001','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032111004908332','平台管理','1','#','2','admin',now(),'','CCGSM201600000000000000','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032111135334551','系统参数设置','1','/general/param.htm','2','admin',now(),'','CCGSM201600001000000002','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032111164208375','修改','2','/edit','2','admin',now(),'','SM2017032111135334551','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703211121130805','新增','2','/add','1','admin',now(),'','CCGSM2016101716295904680','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032114020974172','锁定','2','/locking','3','admin',now(),'','CCGSM2016101716261754674','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032114023217214','解锁','2','/unLock','4','admin',now(),'','CCGSM2016101716261754674','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032115230918954','删除','2','/delete','3','admin',now(),'','CCGSM2016101716295904680','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032115320529046','加盟商','1','#','3','admin',now(),'','CCGSM201600000000000000','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032115462629024','我的账户','1','#','10','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032116515108986','摇钱树管理','1','#','40','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032116580703857','摇钱树管理','1','/platform/cashCow.htm','20','admin',now(),'','SM2017032116515108986','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032117014088035','摇一摇规则','1','/platform/shakeRule.htm','40','admin',now(),'','SM2017032116515108986','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032117153442628','夺宝管理','1','#','50','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032117183616412','修改','2','/edit2','2','admin',now(),'','SM2017032210354305644','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032117282029312','详情','2','/detail','3','admin',now(),'','SM2017032210354305644','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703211728354320','上架','2','/up','4','admin',now(),'','SM2017032210354305644','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703211728518555','下架','2','/down','5','admin',now(),'','SM2017032210354305644','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032210354305644','摇钱树模板','1','/platform/cashCowTp.htm','10','admin',now(),'','SM2017032116515108986','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032210400802828','冻结/解冻','2','/upDown','1','admin',now(),'','SM2017032116580703857','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703221040581383','摇一摇记录','2','/shakeRecord','2','admin',now(),'','SM2017032116580703857','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032210454810734','红包记录','2','/luckMomList','3','admin',now(),'','SM2017032116580703857','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032211194568931','修改','2','/edit','1','admin',now(),'','SM2017032117014088035','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032213223669717','定向红包规则','1','/platform/hbRule.htm','50','admin',now(),'','SM2017032116515108986','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703221322552773','修改','2','/edit','1','admin',now(),'','SM2017032213223669717','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703221336596893','夺宝模板','1','/platform/dbTp.htm','1','admin',now(),'','SM2017032117153442628','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032214114468759','新增','2','/add','1','admin',now(),'','SM201703221336596893','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703221412258772','修改','2','/edit2','2','admin',now(),'','SM201703221336596893','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032214124268017','上架','2','/up','4','admin',now(),'','SM201703221336596893','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032214130632938','下架','2','/down','5','admin',now(),'','SM201703221336596893','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032214142605813','详情','2','/detail','3','admin',now(),'','SM201703221336596893','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032215211295825','期数查询','1','/platform/dbQuery.htm','2','admin',now(),'','SM2017032117153442628','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032215215115350','参与详情','2','/joinDetail','1','admin',now(),'','SM2017032215211295825','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032220464239536','定向红包查询','1','/platform/hbQuery.htm','30','admin',now(),'','SM2017032116515108986','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032517423397534','商城管理','1','#','30','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032517492791638','商品类别管理','1','/product/category.htm','10','admin',now(),'','SM2017032517423397534','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032517495892729','新增','2','/add','1','admin',now(),'','SM2017032517492791638','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032517501280632','修改','2','/edit2','2','admin',now(),'','SM2017032517492791638','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032517502765755','上架','2','/up','4','admin',now(),'','SM2017032517492791638','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032517504971878','下架','2','/down','5','admin',now(),'','SM2017032517492791638','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032615195207380','商品管理','1','/product/product.htm','20','admin',now(),'','SM2017032517423397534','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703261520244332','新增','2','/add','1','admin',now(),'','SM2017032615195207380','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703261520436243','修改','2','/edit2','2','admin',now(),'','SM2017032615195207380','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032615210645370','删除','2','/delete','3','admin',now(),'','SM2017032615195207380','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032615213092920','详情','2','/detail2','4','admin',now(),'','SM2017032615195207380','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032615224289281','上架','2','/up2','5','admin',now(),'','SM2017032615195207380','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032615225688297','下架','2','/down','6','admin',now(),'','SM2017032615195207380','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032713365270841','产品参数','2','/productParam','7','admin',now(),'','SM2017032615195207380','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032716101314297','商家管理','1','#','10','admin',now(),'','SM2017032115320529046','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032716104252541','我的商家','1','/store/store.htm','10','admin',now(),'','SM2017032716101314297','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032716111198076','入驻商家','2','/add','1','admin',now(),'','SM2017032716104252541','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032716113221592','审核','2','/examine','20','admin',now(),'','SM2017032716104252541','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032716141802593','上架','2','/up2','30','admin',now(),'','SM2017032716104252541','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032716143658792','下架','2','/down','40','admin',now(),'','SM2017032716104252541','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032716153420883','详情','2','/detail2','50','admin',now(),'','SM2017032716104252541','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032718005584448','商家管理','1','#','20','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032718013959184','商家类别管理','1','/platform/storeCategory.htm','1','admin',now(),'','SM2017032718005584448','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032718020246126','新增','2','/add','1','admin',now(),'','SM2017032718013959184','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032718021506884','修改','2','/edit','2','admin',now(),'','SM2017032718013959184','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703271802290866','上架','2','/up','3','admin',now(),'','SM2017032718013959184','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032718034531686','下架','2','/down','4','admin',now(),'','SM2017032718013959184','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032719033447798','订单处理','1','/product/order.htm','30','admin',now(),'','SM2017032517423397534','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032719054525781','物流发货','2','/sendOutGoods','1','admin',now(),'','SM2017032719033447798','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032719065095891','现场发货','2','/spotDelivery','2','admin',now(),'','SM2017032719033447798','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032719073017798','取消订单','2','/cancelOrder','3','admin',now(),'','SM2017032719033447798','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032719080275648','确认收货','2','/confirmOrder','4','admin',now(),'','SM2017032719033447798','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703271908263870','详情','2','/detail','5','admin',now(),'','SM2017032719033447798','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703281400585289','订单处理','1','/store/order.htm','1','admin',now(),'','SM2017032814152244462','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032814034964260','现场发货','2','/spotDelivery','2','admin',now(),'','SM201703281400585289','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032814040701331','取消订单','2','/cancelOrder','3','admin',now(),'','SM201703281400585289','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032814045201792','详情','2','/detail','5','admin',now(),'','SM201703281400585289','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032814152244462','商城管理','1','#','20','admin',now(),'','SM2017032115320529046','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032814183568630','摇一摇记录查询','1','/platform/shakeRecord.htm','31','admin',now(),'','SM2017032116515108986','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032814280820460','客户管理','1','#','60','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032814282786586','财务管理','1','#','70','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703281429023268','对接管理','1','#','80','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032815341153189','我的账户','1','/platform/account.htm','10','admin',now(),'','SM2017032115462629024','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032816395662792','加盟商管理','1','/platform/AllianceBusiness.htm','10','admin',now(),'','SM2017032814280820460','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032816453831766','商家查询','1','/platform/business.htm','20','admin',now(),'','SM2017032814280820460','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032816471476911','会员查询','1','/platform/member.htm','30','admin',now(),'','SM2017032814280820460','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032817101406466','线下充值','1','/platform/lineRecharge.htm','10','admin',now(),'','SM2017032814282786586','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032817104102180','线下取现','1','/platform/lineUnder.htm','20','admin',now(),'','SM2017032814282786586','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032817154633256','充取历史查询','1','/platform/historyQuery.htm','30','admin',now(),'','SM2017032814282786586','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032817272128240','对接池管理','1','/platform/capitalPool.htm','10','admin',now(),'','SM201703281429023268','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032817302022648','出金流水','1','/platform/capitalPoolRecord.htm','20','admin',now(),'','SM201703281429023268','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032817343941744','我的账户','1','#','5','admin',now(),'','SM2017032115320529046','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032817375340722','我的账户','1','/store/account.htm','10','admin',now(),'','SM2017032817343941744','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032819353033392','代注册','2','/add','0','admin',now(),'','SM2017032816395662792','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032819555604844','发货情况','2','/fahuo','2','admin',now(),'','SM2017032816395662792','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032819561324334','代销情况','2','/daixiao','3','admin',now(),'','SM2017032816395662792','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032820182550853','积分情况','2','/jifen','4','admin',now(),'','SM2017032816395662792','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032820190275624','详情','2','/detail2','5','admin',now(),'','SM2017032816395662792','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032821100699155','账户查询','2','/accountQuery','1','admin',now(),'','SM2017032816471476911','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017032821314105573','详情','2','/detail2','10','admin',now(),'','SM2017032816471476911','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703282210346965','完善客户信息','2','/info','0','admin',now(),'','SM2017032816471476911','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033115104850917','营销规则','1','#','90','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033115111510393','送积分规则','1','/rule/rule.htm','1','admin',now(),'','SM2017033115104850917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033117394389125','重置密码','2','/reset','2','admin',now(),'','CCGSM2016101716261754674','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033118080150917','文章管理','1','#','91','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033118095013031','banner管理','1','/public/banner.htm','0','admin',now(),'','SM2017033118080150917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033118103738281','新增','2','/add','1','admin',now(),'','SM2017033118095013031','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033118105111062','修改','2','/edit','2','admin',now(),'','SM2017033118095013031','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033118112048197','删除','2','/delete','3','admin',now(),'','SM2017033118095013031','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033118113511496','详情','2','/detail','4','admin',now(),'','SM2017033118095013031','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033120375148323','营收流水','2','/yy','51','admin',now(),'','SM2017032716104252541','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033120383090825','代销情况','2','/daixiao','53','admin',now(),'','SM2017032716104252541','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033120390124613','积分情况','2','/jifen','55','admin',now(),'','SM2017032716104252541','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703312048586062','商家管理','1','/platform/store.htm','2','admin',now(),'','SM2017032718005584448','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033120501071069','上架','2','/up2','3','admin',now(),'','SM201703312048586062','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033120511886659','下架','2','/down','4','admin',now(),'','SM201703312048586062','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033121113217540','导出','2','/export','7','admin',now(),'','SM2017032719033447798','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033121114642345','导出','2','/export','7','admin',now(),'','SM201703281400585289','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033122324657221','线下充值','2','/add','1','admin',now(),'','SM2017032817101406466','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017033122330444499','线下取现','2','/add','1','admin',now(),'','SM2017032817104102180','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703312233317182','审核','2','check','2','admin',now(),'','SM2017032817101406466','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703312233449950','审核','2','check','2','admin',now(),'','SM2017032817104102180','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040114513582931','公告管理','1','#','92','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040115400265469','公告管理','1','/message/notice.htm','1','admin',now(),'','SM2017040114513582931','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040115434479328','新增','2','/add','1','admin',now(),'','SM2017040115400265469','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040115443032316','发布/撤下','2','/push','2','admin',now(),'','SM2017040115400265469','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040115444938511','修改','2','/edit','3','admin',now(),'','SM2017040115400265469','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040116043257469','修改','2','/edit','1','admin',now(),'','SM2017033115111510393','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040116422423474','入金','2','/enter','1','admin',now(),'','SM2017032817272128240','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040116425093485','调汇','2','/change','2','admin',now(),'','SM2017032817272128240','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040116441308394','出金详情','2','/outDetail','3','admin',now(),'','SM2017032817272128240','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040515030890573','结算情况','2','/balance','0','admin',now(),'','SM2017032816453831766','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040515034112569','回收情况','2','/return','2','admin',now(),'','SM2017032816453831766','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201704051504007317','详情','2','/detail2','3','admin',now(),'','SM2017032816453831766','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040517011442277','导出','2','/export','90','admin',now(),'','SM2017032816395662792','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040517015279288','导出','2','/export','90','admin',now(),'','SM2017032816453831766','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201704051702213592','导出','2','/export','90','admin',now(),'','SM2017032816471476911','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040522524135569','关于我们','1','/public/aboutUs_addedit.htm','2','admin',now(),'','SM2017033118080150917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017040522554348136','服务热线','1','/public/tel_addedit.htm','3','admin',now(),'','SM2017033118080150917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017041910113586962','修改','2','/edit','1','admin',now(),'','SM2017032816395662792','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201704191046584135','修改','2','/edit2','10','admin',now(),'','SM2017032716104252541','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201704191658403636','详情','2','/detail1','3','admin',now(),'','SM2017032817101406466','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017041916585392724','详情','2','/detail1','3','admin',now(),'','SM2017032817104102180','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042016164296284','夺宝玩法介绍','1','/public/treasureRule_addedit.htm','5','admin',now(),'','SM2017033118080150917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042016171944264','夺宝免责申明','1','/public/treasureStatement_addedit.htm','51','admin',now(),'','SM2017033118080150917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042016182942251','发一发玩法介绍','1','/public/fyfRule_addedit.htm','6','admin',now(),'','SM2017033118080150917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042016190088314','发一发免责申明','1','/public/fyfStatement_addedit.htm','61','admin',now(),'','SM2017033118080150917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042016194507099','摇一摇玩法介绍','1','/public/yyyRule_addedit.htm','7','admin',now(),'','SM2017033118080150917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042016202182081','摇一摇免责申明','1','/public/yyyStatement_addedit.htm','71','admin',now(),'','SM2017033118080150917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042116284496966','币种兑换规则','1','/rule/bzRule.htm','2','admin',now(),'','SM2017033115104850917','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042116290614925','修改','2','/edit','1','admin',now(),'','SM2017042116284496966','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042121533440724','营收流水','2','/yy','1','admin',now(),'','SM201703312048586062','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042121541681889','代销情况','2','/daixiao','11','admin',now(),'','SM201703312048586062','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042121543640386','积分情况','2','/jifen','12','admin',now(),'','SM201703312048586062','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042316305712363','虚拟兑换','1','#','51','admin',now(),'','SM2017032111004908332','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042316323814062','虚拟产品管理','1','/product/vproduct.htm','1','admin',now(),'','SM2017042316305712363','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042316372961065','虚拟订单处理','1','/product/vorder.htm','2','admin',now(),'','SM2017042316305712363','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042316382479912','修改','2','/edit2','1','admin',now(),'','SM2017042316323814062','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042316385361318','上架','2','/up','2','admin',now(),'','SM2017042316323814062','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042316392348091','下架','2','/down','3','admin',now(),'','SM2017042316323814062','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042316400964384','详情','2','/detail2','4','admin',now(),'','SM2017042316323814062','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042316410397430','取消','2','/cannel','1','admin',now(),'','SM2017042316372961065','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042316413193265','兑换','2','/exchange','2','admin',now(),'','SM2017042316372961065','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017042316414802760','详情','2','/detail2','3','admin',now(),'','SM2017042316372961065','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017050215483017927','取现规则','1','/rule/enchashmentRule.htm','4','admin',now(),'','SM2017032814282786586','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201705021549048393','修改','2','/edit','1','admin',now(),'','SM2017050215483017927','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017050316194220024','详情','2','/detail2','6','admin',now(),'','SM201703312048586062','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017050316481743795','返点规则','1','/rule/o2oRule.htm','3','admin',now(),'','SM2017032718005584448','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017050316483632046','修改','2','/edit','1','admin',now(),'','SM2017050316481743795','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017050320244030571','详情','2','/detail','1','admin',now(),'','SM2017032817154633256','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017050419263008518','审核','2','/examine','2','admin',now(),'','SM201703312048586062','CD-CCG000007');

/*
-- Query: SELECT code,name,type,url,order_no,updater, now() as update_datetime,remark,parent_code,system_code FROM tsys_menu where system_code = 'CD-CCG000007' and code in('SM2017050819295360393','SM201705081932221368')
LIMIT 0, 500

-- Date: 2017-05-08 19:58
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017050819295360393','账户查询','2','/accountQuery','0','admin',now(),'','SM2017032816453831766','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201705081932221368','账户查询','2','/accountQuery','01','admin',now(),'','SM201703312048586062','CD-CCG000007');

/*
-- Query: SELECT code,name,type,url,order_no,updater, now() as update_datetime,remark,parent_code,system_code FROM tsys_menu where system_code = 'CD-CCG000007' and code in('SM2017050819295360393','SM201705081932221368')
LIMIT 0, 500

-- Date: 2017-05-08 19:58
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017050819295360393','账户查询','2','/accountQuery','0','admin','2017-05-08 19:57:40','','SM2017032816453831766','CD-CCG000007');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201705081932221368','账户查询','2','/accountQuery','01','admin','2017-05-08 19:57:40','','SM201703312048586062','CD-CCG000007');

/*
-- Query: SELECT `code`,`name`,`level`,'admin' as `updater`,now() as 'update_datetime',`remark`,`system_code` FROM tsys_role where system_code = 'CD-CCG000007'
LIMIT 0, 10000

-- Date: 2017-03-28 21:57
*/
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','超级管理员','1','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','加盟商','2','admin',now(),'','CD-CCG000007');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','系统管理员','1','admin',now(),'','CD-CCG000007');

/*
-- Query: SELECT `role_code`,`menu_code`,`updater`,now() as `update_datetime`,`remark`,`system_code` FROM tsys_menu_role where role_code in('CCGR201600000000000001','CGSR201600000000000002','SR2017032821443420391')
LIMIT 0, 400

-- Date: 2017-05-04 19:52
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM201600000000000000','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM201600001000000001','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM201600001000000002','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM201600001000000003','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM201600001000000004','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM2016101717551955993','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','SM2017032110563544277','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM2016101716253866426','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM2016101716450533995','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM2016101717560118734','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM2016101717563661357','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','SM2017032110392893832','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM2016101716261754674','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM2016101719082391126','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','CCGSM2016101719110981215','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','SM2017032114020974172','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','SM2017032114023217214','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('SR2017032821443420391','SM2017033117394389125','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','CCGSM201600000000000000','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032115320529046','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032716101314297','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032716104252541','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032716111198076','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032716113221592','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032716141802593','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032716143658792','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032716153420883','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017033120375148323','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017033120383090825','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017033120390124613','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM201704191046584135','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032814152244462','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM201703281400585289','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032814034964260','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032814040701331','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM201703281404300866','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032814045201792','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017033121114642345','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032817343941744','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM2017032817375340722','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CGSR201600000000000002','SM201703281403312139','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','CCGSM201600000000000000','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032111004908332','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032115462629024','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032815341153189','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032116515108986','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032116580703857','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032210400802828','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703221040581383','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032210454810734','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032117014088035','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032211194568931','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032210354305644','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032117183616412','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032117282029312','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703211728354320','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703211728518555','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032213223669717','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703221322552773','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032220464239536','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032814183568630','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032117153442628','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703221336596893','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032214114468759','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703221412258772','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032214124268017','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032214130632938','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032214142605813','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032215211295825','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032215215115350','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032517423397534','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032517492791638','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032517495892729','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032517501280632','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032517502765755','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032517504971878','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032615195207380','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703261520244332','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703261520436243','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032615210645370','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032615213092920','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032615224289281','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032615225688297','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032713365270841','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032719033447798','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032719054525781','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032719065095891','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032719073017798','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032719080275648','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703271908263870','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033121113217540','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032718005584448','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032718013959184','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032718020246126','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032718021506884','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703271802290866','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032718034531686','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703312048586062','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033120501071069','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033120511886659','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042121533440724','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042121541681889','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042121543640386','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017050316194220024','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017050419263008518','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017050316481743795','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017050316483632046','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032814280820460','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032816395662792','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032819353033392','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032819555604844','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032819561324334','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032820182550853','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032820190275624','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040517011442277','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017041910113586962','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032816453831766','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040515030890573','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040515034112569','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201704051504007317','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040517015279288','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032816471476911','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032821100699155','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032821314105573','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703282210346965','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201704051702213592','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032814282786586','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032817101406466','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033122324657221','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703312233317182','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201704191658403636','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032817104102180','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033122330444499','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703312233449950','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017041916585392724','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032817154633256','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017050320244030571','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017050215483017927','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201705021549048393','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201703281429023268','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032817272128240','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040116422423474','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040116425093485','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040116441308394','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017032817302022648','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033115104850917','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033115111510393','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040116043257469','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042116284496966','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042116290614925','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033118080150917','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033118095013031','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033118103738281','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033118105111062','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033118112048197','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017033118113511496','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040522524135569','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040522554348136','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042016164296284','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042016171944264','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042016182942251','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042016190088314','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042016194507099','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042016202182081','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040114513582931','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040115400265469','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040115434479328','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040115443032316','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017040115444938511','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042316305712363','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042316323814062','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042316382479912','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042316385361318','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042316392348091','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042316400964384','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042316372961065','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042316410397430','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042316413193265','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017042316414802760','admin',now(),NULL,'CD-CCG000007');

/*
-- Query: SELECT `role_code`,`menu_code`,`updater`,now() as `update_datetime`,`remark`,`system_code` FROM tsys_menu_role where menu_code in('SM2017050819295360393','SM201705081932221368')
LIMIT 0, 500

-- Date: 2017-05-08 19:59
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM201705081932221368','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCGR201600000000000001','SM2017050819295360393','admin',now(),NULL,'CD-CCG000007');

/*
-- Query: SELECT * FROM std_user.tstd_cnavigate where system_code = 'CD-CCG000007'
LIMIT 0, 400

-- Date: 2017-05-04 17:34
*/
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('DH2017050417271630390','banner2','2','','ht2_1493890073695.jpg','1','index_banner',2,'1','0','','1','CD-CCG000007','CD-CCG000007');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('DH201705041727287596','banner3','2','','ht3_1493890086326.jpg','1','index_banner',3,'1','0','','1','CD-CCG000007','CD-CCG000007');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('DH2017050417274335836','banner1','2','','ht1_1493890102184.jpg','1','index_banner',1,'1','0','','1','CD-CCG000007','CD-CCG000007');

/*
-- Query: SELECT code,type,account,password,remark,company_code,system_code FROM std_user.tstd_cpassword where system_code = 'CD-CCG000007'
LIMIT 0, 10000

-- Date: 2017-03-25 17:31
*/
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('CD-CCG000007-001','2','ACCESS_KEY','2I9KZz4u7hy5U6UgnHsVNhNGNRql1BS9sFT38BeS','','CD-CCG000007','CD-CCG000007');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('CD-CCG000007-002','2','SECRET_KEY','qsDzsCD0D3DdLb7Y9tZ_COnSJBpxYJ4Z28RsdR4o','','CD-CCG000007','CD-CCG000007');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('CD-CCG000007-003','2','bucket','caigo','','CD-CCG000007','CD-CCG000007');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('CD-CCG000007-004','3','ACCESS_KEY','wx5b7c0f77fd657fee','','CD-CCG000007','CD-CCG000007');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('CD-CCG000007-005','3','SECRET_KEY','10e1b1dccee7da4ae2efc1c500108a95','','CD-CCG000007','CD-CCG000007');
/*
-- Query: select `type`,`parent_key`,`dkey`,`dvalue`,`updater`,now() as update_datetime,`remark`,`system_code` from tsys_dict where system_code = 'CD-CCG000007'
LIMIT 0, 10000

-- Date: 2017-03-28 19:23
*/
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'user_status','用户状态','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_status','0','正常','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_status','1','程序锁定','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_status','2','人工锁定','admin',now(),NULL,'CD-CCG000007');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'id_kind','证件类型','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','id_kind','1','身份证','admin',now(),NULL,'CD-CCG000007');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'role_level','角色等级','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','role_level','1','运维','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','role_level','2','运营','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','role_level','3','客户','admin',now(),NULL,'CD-CCG000007');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'res_type','资源类型','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','res_type','1','菜单','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','res_type','2','按钮','admin',now(),NULL,'CD-CCG000007');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'lock_direction','锁定方向','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','lock_direction','1','锁定','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','lock_direction','2','解锁','admin',now(),NULL,'CD-CCG000007');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0',NULL,'user_kind','针对人群','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_kind','1','C端用户','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_kind','2','B端用户','admin',now(),NULL,'CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','user_kind','3','平台用户','admin',now(),NULL,'CD-CCG000007');

INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('0','','msg_status','消息状态','admin',now(),'','CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','msg_status','0','未发布','admin',now(),'','CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','msg_status','1','已发布','admin',now(),'','CD-CCG000007');
INSERT INTO `tsys_dict` (`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('1','msg_status','2','已下架','admin',now(),'','CD-CCG000007');
