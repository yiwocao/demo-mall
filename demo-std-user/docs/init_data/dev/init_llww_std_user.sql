/*
-- Query: select `user_id`, `login_name`, `nickname`, `login_pwd`, `login_pwd_strength`, `kind`, `level`, `user_referee`, `mobile`, `id_kind`, `id_no`, `real_name`, `trade_pwd`, `trade_pwd_strength`, `role_code`, `status`, `pdf`, `amount`, `lj_amount`, `company_code`, `open_id`, `jpush_id`, `updater`, `update_datetime`, `longitude`, `latitude`, `remark`, `system_code` from tstd_user where login_name = 'admin'
LIMIT 0, 10000

-- Date: 2017-03-05 22:51
*/
INSERT INTO `tstd_user` (`user_id`,`login_name`,`nickname`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`pdf`,`amount`,`lj_amount`,`company_code`,`open_id`,`jpush_id`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CSHU201600000000000001','admin',NULL,'21218cca77804d2ba1922c33e0151105','1','01','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CCDSM201600000000000000','0',NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,'管理端系统方','CD-CLW000005');

/*
-- Query: select `code`, `name`, `type`, `url`, `order_no`, `updater`,now() as `update_datetime`, `remark`, `parent_code`, `system_code` from tsys_menu
LIMIT 0, 10000

-- Date: 2017-03-12 14:26
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM201600000000000000','根目录','1','#','1','admin',now(),'','','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM201600001000000000','系统根目录','1','#','1','admin',now(),'','CCDSM201600000000000000','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM201600001000000001','系统管理','1','#','1','admin',now(),'','CCDSM201600001000000000','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM201600001000000002','运维管理','1','#','2','admin',now(),NULL,'CCDSM201600001000000001','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM201600001000000003','菜单管理','1','/security/menu.htm','1','admin',now(),'','CCDSM201600001000000002','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM201600001000000004','修改','2','/edit','2','admin',now(),'','CCDSM201600001000000003','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101716241339082','运营管理','1','#','1','admin',now(),'','CCDSM201600001000000001','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101716253866426','角色管理','1','/security/role.htm','1','admin',now(),'','CCDSM2016101716241339082','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101716261754674','用户管理','1','/security/user.htm','2','admin',now(),'','CCDSM2016101716241339082','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101716290657836','文本参数管理','1','/general/param.htm','2','admin',now(),'','CCDSM201600001000000002','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101716295904680','数据字典管理','1','/general/dict.htm','3','admin',now(),'','CCDSM201600001000000002','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101716450533995','分配菜单','2','/change','4','admin',now(),'','CCDSM2016101716253866426','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101717551955993','新增','2','/add','1','admin',now(),'','CCDSM2016101716253866426','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101717560118734','修改','2','/edit','2','admin',now(),'','CCDSM2016101716253866426','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101717563661357','删除','2','/delete','3','admin',now(),'','CCDSM2016101716253866426','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101719082391126','新增','2','/add','1','admin',now(),'','CCDSM2016101716261754674','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101719094151894','重置密码','2','/reset','3','admin',now(),'','CCDSM2016101716261754674','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101719100760088','注销/激活','2','/rock','4','admin',now(),'','CCDSM2016101716261754674','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101719110981215','设置角色','2','/assign','5','admin',now(),'','CCDSM2016101716261754674','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101719140087629','修改','2','/edit','1','admin',now(),'','CCDSM2016101716290657836','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('CCDSM2016101719143965297','修改','2','/edit','1','admin',now(),'','CCDSM2016101716295904680','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201612231757239863','业务管理','1','#','2','admin',now(),'','CCDSM201600001000000000','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020311025413018','修改','2','/edit2','2','admin',now(),'','CCDSM2016101716261754674','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020312424032896','消息管理','1','#','3','admin',now(),'','CCDSM201600001000000000','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702031244065461','消息推送','1','#','1','admin',now(),'','SM2017020312424032896','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020312470827065','公告管理','1','/news/notice.htm','1','admin',now(),'','SM201702031244065461','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020312482965449','短信推送','1','/news/message.htm','2','admin',now(),'','SM201702031244065461','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020313185760856','新增','2','/add','1','admin',now(),'','SM2017020312470827065','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020313192638078','修改','2','/edit','2','admin',now(),'','SM2017020312470827065','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020313202638576','发布/撤下','2','/release','3','admin',now(),'','SM2017020312470827065','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020313205388797','详情','2','/detail','4','admin',now(),'','SM2017020312470827065','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020313350273821','单发','2','/pub','1','admin',now(),'','SM2017020312482965449','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020313361190790','详情','2','/detail','3','admin',now(),'','SM2017020312482965449','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020313365469973','导出','2','/export','4','admin',now(),'','SM2017020312482965449','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020314523573980','线路管理','1','#','0','admin',now(),'','SM201612231757239863','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020314532282169','线路管理','1','/biz/router.htm','1','admin',now(),'','SM2017020314523573980','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020316151295859','新增','2','/add','1','admin',now(),'','SM2017020314532282169','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020316154848198','修改','2','/edit2','2','admin',now(),'','SM2017020314532282169','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020316162500797','Tab内容','2','/tab','3','admin',now(),'','SM2017020314532282169','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020316173879220','推荐设置','2','/recom','4','admin',now(),'','SM2017020314532282169','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020316183105161','详情','2','/detail2','5','admin',now(),'','SM2017020314532282169','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702031619375004','上架','2','/frame','6','admin',now(),'','SM2017020314532282169','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020321493071389','攻略管理','1','/biz/strategy.htm','2','admin',now(),'','SM2017020314523573980','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020321502736515','新增','2','/add','1','admin',now(),'','SM2017020321493071389','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020321512991994','删除','2','/delete2','2','admin',now(),'','SM2017020321493071389','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020321520027875','修改','2','/edit2','3','admin',now(),'','SM2017020321493071389','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020321523489618','详情','2','/detail','4','admin',now(),'','SM2017020321493071389','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020321532639262','上架/下架','2','/frame','5','admin',now(),'','SM2017020321493071389','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020409575729352','游记管理','1','/biz/travel.htm','3','admin',now(),'','SM2017022116285947571','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020409590183357','评论管理','1','/biz/comment.htm','4','admin',now(),'','SM2017020314523573980','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020410000738295','删除','2','/delete2','1','admin',now(),'','SM2017020409575729352','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020410010671464','评论管理','1','/biz/travelcom.htm','4','admin',now(),'','SM2017022116285947571','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020410020389285','置顶/取消','2','/top','3','admin',now(),'','SM2017020409575729352','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702041002356230','详情','2','/detail','4','admin',now(),'','SM2017020409575729352','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020410032770545','审核','2','/edit','1','admin',now(),'','SM2017020409590183357','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020411274396493','酒店管理','1','#','2','admin',now(),'','SM201612231757239863','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020413511816440','出行管理','1','#','1','admin',now(),'','SM201612231757239863','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414103390461','专线管理','1','/biz/speline.htm','1','admin',now(),'','SM2017020413511816440','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414112043154','大巴订单','1','/biz/car.htm','5','admin',now(),'','SM2017022216182276584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414123987370','拼车订单','1','/biz/carpool.htm','6','admin',now(),'','SM2017022216182276584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414201469247','新增','2','/add','1','admin',now(),'','SM2017020414103390461','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414205782357','修改','2','/edit2','3','admin',now(),'','SM2017020414103390461','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414213057735','删除','2','/delete2','2','admin',now(),'','SM2017020414103390461','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414221960399','详情','2','/detail','4','admin',now(),'','SM2017020414103390461','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414273444146','上架/下架','2','/frame','5','admin',now(),'','SM2017020414103390461','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414354598023','接单','2','/receive','1','admin',now(),'','SM2017020414112043154','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414361608190','取消','2','/cancel','2','admin',now(),'','SM2017020414112043154','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414364626171','完成','2','/finish','3','admin',now(),'','SM2017020414112043154','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414371082673','详情','2','/detail','4','admin',now(),'','SM2017020414112043154','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414373715191','导出','2','/export','5','admin',now(),'','SM2017020414112043154','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702041438208006','接单','2','/receive','1','admin',now(),'','SM2017020414123987370','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414384501063','取消','2','/cancel','2','admin',now(),'','SM2017020414123987370','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414391122399','完成','2','/finish','3','admin',now(),'','SM2017020414123987370','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414393784378','详情','2','/detail2','4','admin',now(),'','SM2017020414123987370','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020414400358599','导出','2','/export','5','admin',now(),'','SM2017020414123987370','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416332943266','酒店管理','1','/biz/hotel.htm','1','admin',now(),'','SM2017020411274396493','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416363501158','民宿管理','1','/biz/home.htm','2','admin',now(),'','SM2017020411274396493','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416381078436','评论管理','1','/biz/hcom.htm','4','admin',now(),'','SM2017020411274396493','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702041639081128','新增','2','/add','1','admin',now(),'','SM2017020416332943266','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416394591255','删除','2','/delete2','2','admin',now(),'','SM2017020416332943266','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416402487218','修改','2','/edit2','3','admin',now(),'','SM2017020416332943266','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416411460349','详情','2','/detail','4','admin',now(),'','SM2017020416332943266','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416414258318','上架','2','/pul','5','admin',now(),'','SM2017020416332943266','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416422038038','下架','2','/frame','6','admin',now(),'','SM2017020416332943266','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416455303771','新增','2','/add','1','admin',now(),'','SM2017020416363501158','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416462552265','删除','2','/delete2','2','admin',now(),'','SM2017020416363501158','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416465032938','修改','2','/edit2','3','admin',now(),'','SM2017020416363501158','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416493412398','详情','2','/detail','4','admin',now(),'','SM2017020416363501158','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416501233842','上架','2','/frame','5','admin',now(),'','SM2017020416363501158','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020416521660151','审核','2','/check2','1','admin',now(),'','SM2017020416381078436','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610213249273','美食管理','1','#','3','admin',now(),'','SM201612231757239863','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610220283186','商品管理','1','#','4','admin',now(),'','SM201612231757239863','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610235240129','会员管理','1','#','7','admin',now(),'','SM201612231757239863','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610250213999','文章管理','1','#','9','admin',now(),'','SM201612231757239863','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610281550771','美食管理','1','/food/food.htm','1','admin',now(),'','SM2017020610213249273','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610293929078','评论管理','1','/food/fcom.htm','2','admin',now(),'','SM2017020610213249273','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610314371252','商品管理','1','/goods/goods.htm','1','admin',now(),'','SM2017020610220283186','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610351229968','新增','2','/add','1','admin',now(),'','SM2017020610281550771','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610353811462','删除','2','/delete2','2','admin',now(),'','SM2017020610281550771','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610355993896','修改','2','/edit2','3','admin',now(),'','SM2017020610281550771','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702061036220433','详情','2','/detail','4','admin',now(),'','SM2017020610281550771','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610364645372','上架','2','/frame','5','admin',now(),'','SM2017020610281550771','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610383010638','审核','2','/edit2','1','admin',now(),'','SM2017020610293929078','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610405772145','新增','2','/add','1','admin',now(),'','SM2017020610314371252','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610412351224','删除','2','/delete2','2','admin',now(),'','SM2017020610314371252','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610414515137','修改','2','/edit2','3','admin',now(),'','SM2017020610314371252','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020610421971334','上架','2','/frame','4','admin',now(),'','SM2017020610314371252','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615130333038','商品订单','1','/food/gorder.htm','0','admin',now(),'','SM2017022216182276584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615174171710','线路订单','1','/food/rorder.htm','1','admin',now(),'','SM2017022216182276584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615184124216','酒店订单','1','/food/horder.htm','2','admin',now(),'','SM2017022216182276584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615193118584','专线订单','1','/food/torder.htm','3','admin',now(),'','SM2017022216182276584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615204950650','活动管理','1','/food/active.htm','4','admin',now(),'','SM2017020610250213999','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615384540247','取消','2','/cancel','0','admin',now(),'','SM2017020615130333038','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615394619392','发货','2','/rece','2','admin',now(),'','SM2017020615130333038','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615402074332','详情','2','/detail','3','admin',now(),'','SM2017020615130333038','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615411982039','取消','2','/cancel','0','admin',now(),'','SM2017020615174171710','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615415208875','详情','2','/detail','1','admin',now(),'','SM2017020615174171710','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702061542287572','取消','2','/cancel','0','admin',now(),'','SM2017020615184124216','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615430947091','详情','2','/detail','1','admin',now(),'','SM2017020615184124216','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615435610117','取消','2','/cancel','0','admin',now(),'','SM2017020615193118584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615442236438','详情','2','detail','1','admin',now(),'','SM2017020615193118584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615453919280','新增','2','/add','0','admin',now(),'','SM2017020615204950650','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615461994087','删除','2','/delete2','1','admin',now(),'','SM2017020615204950650','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615465815529','修改','2','/edit3','2','admin',now(),'','SM2017020615204950650','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020615473285543','上架/下架','2','/frame','3','admin',now(),'','SM2017020615204950650','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020617183991116','会员查询','1','/member/member.htm','1','admin',now(),'','SM2017020610235240129','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020617390170335','查看账户','2','/inte','2','admin',now(),'','SM2017020617183991116','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020617434980211','注销','2','/phone','3','admin',now(),'','SM2017020617183991116','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020617444278531','重置登录密码','2','/login','4','admin',now(),'','SM2017020617183991116','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020617452005555','详情','2','/detail','5','admin',now(),'','SM2017020617183991116','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020617455861584','导出','2','/export','6','admin',now(),'','SM2017020617183991116','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702071128274431','投诉反馈管理','1','/public/complain.htm','5','admin',now(),'','SM2017020610235240129','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020711290510772','处理','2','/edit2','0','admin',now(),'','SM201702071128274431','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020711293108351','导出','2','/export','1','admin',now(),'','SM201702071128274431','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020714592629311','banner管理','1','/public/banner.htm','0','admin',now(),'','SM2017020610250213999','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702071502453323','新增','2','/add','0','admin',now(),'','SM2017020714592629311','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020715031436278','删除','2','/delete','1','admin',now(),'','SM2017020714592629311','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020715034821216','修改','2','/edit','2','admin',now(),'','SM2017020714592629311','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020816112771138','退款审核','2','/check2','3','admin',now(),'','SM2017020615184124216','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020817072970932','管理房间','2','/guan','1','admin',now(),'','SM2017020416332943266','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017020913115487299','管理房间','2','/guan','1','admin',now(),'','SM2017020416363501158','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017021018033855940','新增','2','/add','1','admin',now(),'','CCDSM201600001000000003','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017021020085520798','引流管理','1','/public/navi.htm','2','admin',now(),'','SM2017020610250213999','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017021020101576518','修改','2','/edit','1','admin',now(),'','SM2017021020085520798','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017021020250061294','新增','2','/add','0','admin',now(),'','SM2017021020085520798','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017021314503390389','详情','2','/detail','3','admin',now(),'','SM2017021020085520798','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017021520103970012','退款审核','2','/check2','2','admin',now(),'','SM2017020615174171710','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017021615243603648','退款审核','2','/check2','2','admin',now(),'','SM2017020414112043154','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017021620033844868','退款审核','2','/check2','2','admin',now(),'','SM2017020615193118584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702181640584617','下架','2','/frame2','6','admin',now(),'','SM2017020610314371252','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022013440792252','修改','2','/eidt','1','admin',now(),'','SM2017020715011220448','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022116285947571','游记管理','1','#','3','admin',now(),'','SM201612231757239863','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022117491861052','审核','2','/check2','1','admin',now(),'','SM2017020410010671464','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702221120287974','确认收货','2','/nowest','2','admin',now(),'','SM2017020615130333038','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702221548191711','账户查询','1','/member/account.htm','2','admin',now(),'','SM2017020610235240129','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022215491296977','积分查询','1','/member/point.htm','3','admin',now(),'','SM2017020610235240129','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201702221552062943','流水','2','/flow','2','admin',now(),'','SM201702221548191711','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022215525007632','流水','2','/flow','1','admin',now(),'','SM2017022215491296977','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022216182276584','订单管理','1','#','6','admin',now(),'','SM201612231757239863','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022219495266557','激活','2','/active','3','admin',now(),'','SM2017020617183991116','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022314305157673','退款审核','2','/check2','3','admin',now(),'','SM2017020615130333038','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022411130723924','审核','2','/check2','2','admin',now(),'','SM2017020409575729352','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022411425809511','关键词管理','1','/public/word.htm','5','admin',now(),'','SM2017020610250213999','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022411441299333','新增','2','/add','1','admin',now(),'','SM2017022411425809511','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022411443824710','修改','2','/edit','2','admin',now(),'','SM2017022411425809511','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017022411451795785','删除','2','/delete','3','admin',now(),'','SM2017022411425809511','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030117251147961','下架','2','/down','7','admin',now(),'','SM2017020416363501158','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030215265114084','接单','2','/rece','0','admin',now(),'','SM2017020615193118584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030215273743968','完成','2','/finish','5','admin',now(),'','SM2017020615193118584','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703021759408746','下架','2','/down','6','admin',now(),'','SM2017020610281550771','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703031612336849','详情','2','/detail','7','admin',now(),'','SM2017020610314371252','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030318083987467','接单','2','/rece','1','admin',now(),'','SM2017020615174171710','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030318093645753','完成','2','/finish','5','admin',now(),'','SM2017020615174171710','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030516042495495','下架','2','/down','7','admin',now(),'','SM2017020314532282169','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM201703061739367605','入住','2','/enter','4','admin',now(),'','SM2017020615184124216','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030617402509685','退房','2','/out','5','admin',now(),'','SM2017020615184124216','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030620442366911','配置参数管理','1','/general/config.htm','3','admin',now(),'','CCDSM201600001000000002','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030620450403033','修改','2','/edit','1','admin',now(),'','SM2017030620442366911','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030710495368466','线下取现','1','/member/lineUnder.htm','3','admin',now(),'','SM2017020610235240129','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030710511904933','申请','2','/add','1','admin',now(),'','SM2017030710495368466','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030710561096025','审核','2','/che','2','admin',now(),'','SM2017030710495368466','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030719533013547','复制新增','2','/addedit','8','admin',now(),'','SM2017020314532282169','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030815112816426','新增','2','/add','0','admin',now(),'','CCDSM2016101716295904680','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017030918023787091','复制新增','2','/addedit','6','admin',now(),'','SM2017020414103390461','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017031114511245839','删除','2','/delete','3','admin',now(),'','CCDSM2016101716295904680','CD-CLW000005');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`system_code`) VALUES ('SM2017031115324112760','详情','2','/detail','4','admin',now(),'','SM2017020714592629311','CD-CLW000005');

/*
-- Query: select `code`, `name`, `level`, `updater`, `update_datetime`, `remark`, `system_code` from tsys_role
LIMIT 0, 10000

-- Date: 2017-03-05 22:53
*/
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','超级管理员','1','admin',now(),NULL,'CD-CLW000005');

/*
-- Query: select `role_code`, `menu_code`, `updater`, now() as `update_datetime`, `remark`, `system_code` from tsys_menu_role
LIMIT 0, 10000

-- Date: 2017-03-12 14:27
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM201600000000000000','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM201600001000000000','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM201600001000000001','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM201600001000000002','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM201600001000000003','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM201600001000000004','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017021018033855940','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101716290657836','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101719140087629','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101716295904680','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101719143965297','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030815112816426','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017031114511245839','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030620442366911','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030620450403033','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101716241339082','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101716253866426','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101716450533995','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101717551955993','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101717560118734','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101717563661357','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101716261754674','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101719082391126','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101719094151894','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101719100760088','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','CCDSM2016101719110981215','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020311025413018','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201612231757239863','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020314523573980','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020314532282169','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020316151295859','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020316154848198','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020316162500797','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020316173879220','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020316183105161','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702031619375004','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030516042495495','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030719533013547','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020321493071389','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020321502736515','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020321512991994','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020321520027875','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020321523489618','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020321532639262','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020409590183357','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020410032770545','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020411274396493','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416332943266','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702041639081128','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416394591255','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416402487218','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416411460349','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416414258318','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416422038038','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020817072970932','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416363501158','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416455303771','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416462552265','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416465032938','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416493412398','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416501233842','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020913115487299','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030117251147961','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416381078436','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020416521660151','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020413511816440','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414103390461','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414201469247','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414205782357','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414213057735','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414221960399','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414273444146','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030918023787091','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610213249273','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610281550771','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610351229968','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610353811462','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610355993896','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702061036220433','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610364645372','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201703021759408746','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610293929078','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610383010638','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610220283186','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610314371252','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610405772145','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610412351224','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610414515137','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610421971334','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702181640584617','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201703031612336849','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610235240129','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020617183991116','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020617390170335','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020617434980211','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020617444278531','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020617452005555','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020617455861584','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022219495266557','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702071128274431','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020711290510772','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020711293108351','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702221548191711','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702221552062943','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022215491296977','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022215525007632','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030710495368466','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030710511904933','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030710561096025','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020610250213999','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615204950650','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615453919280','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615461994087','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615465815529','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615473285543','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020714592629311','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702071502453323','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020715031436278','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020715034821216','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017031115324112760','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017021020085520798','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017021020101576518','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017021020250061294','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017021314503390389','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022411425809511','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022411441299333','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022411443824710','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022411451795785','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022116285947571','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020409575729352','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020410000738295','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020410020389285','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702041002356230','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022411130723924','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020410010671464','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022117491861052','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022216182276584','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414112043154','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414354598023','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414361608190','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414364626171','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414371082673','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414373715191','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017021615243603648','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414123987370','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702041438208006','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414384501063','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414391122399','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414393784378','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020414400358599','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615130333038','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615384540247','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615394619392','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615402074332','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702221120287974','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017022314305157673','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615174171710','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615411982039','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615415208875','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017021520103970012','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030318083987467','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030318093645753','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615184124216','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702061542287572','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615430947091','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020816112771138','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201703061739367605','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030617402509685','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615193118584','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615435610117','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020615442236438','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017021620033844868','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030215265114084','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017030215273743968','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020312424032896','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM201702031244065461','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020312470827065','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020313185760856','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020313192638078','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020313202638576','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020313205388797','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020312482965449','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020313350273821','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020313361190790','admin',now(),NULL,'CD-CLW000005');
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('CCDSM201600000000000000','SM2017020313365469973','admin',now(),NULL,'CD-CLW000005');

/*
-- Query: select `system_code`, `type`, `parent_key`, `dkey`, `dvalue`, `updater`,now() as `update_datetime`, `remark` from tsys_dict
LIMIT 0, 10000

-- Date: 2017-03-09 16:16
*/
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'user_status','用户状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','user_status','0','正常','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','user_status','1','程序锁定','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','user_status','2','人工锁定','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'id_kind','证件类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','id_kind','1','身份证','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'res_type','资源类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','res_type','1','菜单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','res_type','2','按钮','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'lock_direction','锁定方向','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','lock_direction','1','用锁','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','lock_direction','2','解锁','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'role_level','角色等级','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','role_level','1','管理员','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','role_level','2','运营','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','role_level','3','运维','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','account_type','账户类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','account_type','CNY','人民币账户','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','account_type','XNB','虚拟币账户','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'currency_type','币种状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','currency_type','CNY','人民币','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','currency_type','XNB','虚拟币','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'account_status','用户/账户状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','account_status','0','正常','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','account_status','1','程序冻结','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','account_status','2','人工冻结','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','account_kind','账户类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','account_kind','C','C端用户 ','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','account_kind','B','B端用户','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','account_kind','P','平台','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'notice_status','公告状态','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','notice_status','0','未发布','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','notice_status','1','已发布','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','notice_status','2','已下架','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'toKind','针对人群','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','toKind','0','b端用户','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','toKind','1','c端用户','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'news_status','消息状态','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','news_status','0','发送失败','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','news_status','1','已发送','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','news_status','2','发送失败','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','router_type','线路类型','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_type','1','购物','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_type','2','休闲','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_type','3','户外','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'router_type2','线路形式','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_type2','1','自由行','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_type2','2','自驾游','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'router_time','线路时间','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','1','一天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','2','两天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','3','三天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','4','四天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','5','五天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','6','六天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','7','七天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','8','八天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','9','九天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','10','十天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','11','十一天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','12','十二天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','13','十三天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','14','十四天','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_time','15','十五天','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'router_status','线路状态','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_status','0','未上架','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_status','1','已上架','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_status','2','已下架','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','router_di','集合地点','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_di','0','嘉兴','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_di','1','海宁','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','router_di','2','杭州','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'tab_type','Tab类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','tab_type','1','亮点','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','tab_type','2','行程','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','tab_type','3','费用','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','tab_type','4','须知','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'tujian_type','推荐类型','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','tujian_type','1','推荐出行','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','tujian_type','2','推荐酒店','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','tujian_type','3','推荐美食','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','active_status','活动状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','active_status','0','未上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','active_status','1','已上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','active_status','2','已下架','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','complain_type','反馈类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','complain_type','0','投诉','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','complain_type','1','反馈','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','comp_status','反馈状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','comp_status','0','未处理','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','comp_status','1','已处理','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','banner_location','banner位置','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','banner_location','0','首页','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','banner_location','1','线路详情','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','banner_location','2','酒店详情','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','hotel_location','酒店位置','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_location','1','普通','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_location','2','推荐','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'home_type','房型','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','home_type','0','舒适型','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','home_type','1','经济型','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','home_type','2','豪华型','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','hotel_type','经营方式','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_type','1','自营','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_type','2','合作','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','hotel_status','酒店状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_status','0','未上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_status','1','已上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_status','2','已下架','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','ht_type','酒店类型','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','ht_type','1','酒店','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','ht_type','2','民宿','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',' ','dining_num','用餐人数','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_num','0','不限','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_num','1','单人餐','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_num','2','双人餐','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_num','3','3-4人餐','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_num','4','5-10人餐','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_num','5','10人以上','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','spe_status','专线状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','spe_status','0','未上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','spe_status','1','已上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','spe_status','2','已下架','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','tracheck_status','游记审核状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','tracheck_status','0','待审核','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','tracheck_status','1','通过','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','tracheck_status','2','不通过','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','trabo_location','攻略推荐位置','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','trabo_location','0','普通','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','trabo_location','1','热门','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'biz_type','业务类型','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','01','注册送积分','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','02','每日签到送积分','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','11','充值','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','-11','取现','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','19','蓝补','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','-19','红冲','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','-30','购物','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','30','购物退款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','-32','线路购买','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','32','线路退款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','-33','酒店订房','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','33','酒店退款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','-34','专线购买','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','34','专线退款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','-35','大巴预定','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','35','大巴预定退款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','-36','拼车定金支付','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','-37','拼车尾款支付','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','38','拼车退款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','40','线路消费送积分','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','41','酒店消费送积分','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','42','专线消费送积分','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','43','大巴消费送积分','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','44','拼车消费送积分','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','biz_type','45','发布游记送积分','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',' ','dining_price','美食价格','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_price','0','0-100','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_price','1','100-200','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_price','2','200-300','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_price','3','300-500','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_price','4','500-1000','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_price','5','1000以上','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'zero_type','起点','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','zero_type','1','杭州','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','2','zero_type','2','嘉兴','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','3','zero_type','3','金华','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','destination_type','终点','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','destination_type','1','杭州','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','destination_type','2','北京','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','destination_type','3','上海','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','food_status','美食状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','food_status','0','未上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','food_status','1','已上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','food_status','2','已下架','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','good_status','商品状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','good_status','0','未上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','good_status','1','审批通过','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','good_status','2','审批不通过','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','good_status','3','已上架','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','good_status','4','已下架','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','order_status','订单状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','order_status','0','待支付','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','order_status','1','已支付','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','order_status','2','待退款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','order_status','31','退款失败','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','order_status','32','已发货','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','order_status','4','已完成','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','order_status','91','用户不支付取消订单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','order_status','92','过期取消订单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','order_status','93','平台取消订单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','order_status','94','退款成功','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','wl_company','物流公司','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','wl_company','EMS','邮政EMS','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','wl_company','STO','申通快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','wl_company','ZTO','中通快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','wl_company','YTO','圆通快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','wl_company','HTKY','汇通快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','wl_company','ZJS','宅急送','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','wl_company','SF','顺丰快递','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','wl_company','TTKD','天天快递','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','jour_status','流水状态','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','jour_status','0','刚生成待回调','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','jour_status','1','已回调通过待对账','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','jour_status','2','回调不通过','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','jour_status','3','已对账且账不平','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','jour_status','4','账不平待调账','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','jour_status','5','已调账','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','jour_status','9','无需对账','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','jour_status','6','待审批','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','jour_status','7','审批通过','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','jour_status','8','审批不通过','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','channel_type','渠道类型','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','channel_type','01','线下_橙账本','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','channel_type','0','内部账','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','channel_type','9','调账','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','channel_type','10','轧账','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','channel_type','1','币种兑换','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','channel_type','35','微信公众号支付','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','htorder_status','酒店订单状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','htorder_status','0','待支付','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','htorder_status','1','已支付','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','htorder_status','2','待退款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','htorder_status','31','退款失败','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','htorder_status','32','已入住','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','htorder_status','4','已完成','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','htorder_status','91','用户不支付取消订单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','htorder_status','92','过期取消订单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','htorder_status','93','平台取消订单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','htorder_status','94','退款成功','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','sporder_status','大巴订单状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','sporder_status','0','待支付','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','sporder_status','1','已支付','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','sporder_status','2','待退款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','sporder_status','31','退款失败','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','sporder_status','32','已接单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','sporder_status','4','已完成','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','sporder_status','91','用户不支付取消订单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','sporder_status','92','过期取消订单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','sporder_status','93','平台取消订单','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','sporder_status','94','退款成功','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','cporder_status','拼车订单状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','cporder_status','0','待发布','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','cporder_status','1','已发布','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','cporder_status','2','已满员','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','cporder_status','3','已接单待发车','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','cporder_status','91','平台取消','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','cporder_status','92','已发车宣告结束','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'carpoord_status','个人拼车状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','0','待支付定金','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','1','已支付定金','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','2','待支付尾款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','3','已支付尾款','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','91','用户定金前取消','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','92','用户定金后取消','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','97','平台接单后仍未支付定金','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','93','平台不接单取消','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','94','用户尾款后取消','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','95','黑名单','admin',now(),NULL);
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','carpoord_status','96','正常完成','admin',now(),NULL);

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','trahot_status','游记推荐状态','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','trahot_status','1','热门','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','trahot_status','0','普通','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','dining_time','用餐时段','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_time','0','不限','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_time','1','早餐','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_time','2','中餐','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_time','3','下午茶','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_time','4','晚餐','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','dining_time','5','宵夜','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0',NULL,'hotel_ss','酒店设施服务','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_ss','0','停车场','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_ss','1','SPA','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_ss','2','WiFi','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_ss','3','叫醒服务','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_ss','4','单独卫浴','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','hotel_ss','7','中英文翻译服务','admin',now(),'');

INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','0','','ss_type','房间设施服务','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','ss_type','1','免费Wi-Fi','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','ss_type','2','含早餐','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','ss_type','3','无烟房','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','ss_type','4','卫生用品','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','ss_type','5','单独卫生间','admin',now(),'');
INSERT INTO `tsys_dict` (`system_code`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CLW000005','1','ss_type','6','音响设备','admin',now(),'');

/*
-- Query: SELECT `code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code` FROM tstd_cnavigate
LIMIT 0, 10000

-- Date: 2017-03-12 14:49
*/
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('1','豪华酒店','3','page:go/hotel-list?category=1','豪华酒店@2x_1486966881319.png','1','depart_hotel',0,'1','0','ee','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('10','甜点饮品','3','page:go/food-list?category=10','甜点饮品@2x_1487051112494.png','1','depart_deli',1,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('11','小吃快餐','3','page:go/food-list?category=11','小吃快餐@2x_1487051086724.png','1','depart_deli',2,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('12','日韩料理','3','page:go/food-list?category=12','日韩料理@2x_1487050943265.png','1','depart_deli',3,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('13','火锅','3','page:go/food-list?category=13','火锅@2x_1487050887091.png','1','depart_deli',4,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('14','烧烤烤肉','3','page:go/food-list?category=14','烧烤烤肉@2x_1487050986362.png','1','depart_deli',5,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('15','外卖','3','page:go/food-list?category=15','外卖@2x_1487051018211.png','1','depart_deli',6,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('16','西餐','3','page:go/food-list?category=16','西餐@2x_1487051058437.png','1','depart_deli',7,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('17','春游','3','page:travel/travel-list?category=17','春游@2x_1487051930612.png','1','travel',0,'1','0','eeee','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('18','秋游','3','page:travel/travel-list?category=18','秋游@2x_1487051961172.png','1','travel',1,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('19','国内游','3','page:travel/travel-list?category=19','国内游@2x_1487051987151.png','1','travel',2,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('2','舒适酒店','3','page:go/hotel-list?category=2','舒适酒店@2x_1486967090368.png','1','depart_hotel',1,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('20','境外游','3','page:travel/travel-list?category=20','境外游@2x_1487052019153.png','1','travel',3,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('21','亲子游','3','page:travel/travel-list?category=21','亲子游@2x_1487052055654.png','1','travel',4,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('22','摄影游','3','page:travel/travel-list?category=22','摄影游@2x_1487052080443.png','1','travel',5,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('23','周边游','3','page:travel/travel-list?category=23','周边游@2x_1487052110117.png','1','travel',6,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('24','主题游','3','page:travel/travel-list?category=24','主题游@2x_1487052135727.png','1','travel',7,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('3','经济酒店','3','page:go/hotel-list?category=3','经济酒店@2x_1486967023709.png','1','depart_hotel',2,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('31','机场专线','3','page:go/special-line?category=31','机场专线@2x_1487312065213.png','1','goout',1,'1','0','2','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('32','快客专线','3','page:go/special-line?category=32','快客专线@2x_1487312100112.png','1','goout',2,'1','0','2','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('33','长途班车','3','page:go/special-line?category=33','长途班车@2x_1487312523054.png','1','goout',3,'1','0','2','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('34','发布拼车','3','page:go/carpool','发布拼车@2x_1487312034903.png','1','goout',4,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('35','预订大巴','3','page:go/due-bus','预订大巴@2x_1487312435350.png','1','goout',5,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('36','预约出租','3','http://m.ctrip.com/webapp/cars/isd/isd?Allianceid=435442&sid=931218&popup=close','预约出租@2x_1487312489546.png','1','goout',6,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('37','查询','3','page:go/theQuery?category=37','查询@2x_1487311996284.png','1','goout',7,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('38','旅游专线','3','page:go/special-line?category=38','旅游专线@2x_1487312349842.png','1','goout',0,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('39','火车','3','http://m.ctrip.com/html5/Trains/?Allianceid=435442&sid=931218&popup=close','','1','go_query',7,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('4','民宿','3','page:go/hotel-list?category=4','民宿@2x_1486967388611.png','1','depart_hotel',3,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('40','飞机','3','http://m.ctrip.com/html5/flight/matrix.html?Allianceid=435442&sid=931218&popup=close','','1','go_query',7,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('41','公交','3','http://m.ctrip.com/html5/','','1','go_query',7,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('44','每日签到','3','page:home/signIn?category=44','每日签到@2x_1487394422707.png','1','home_page',0,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('45','今日潮汐','3','http://c.flzhan.com/wx/info?mid=19031&seq=0&winzoom=1.25','今日潮汛@2x_1487338034981.png','1','home_page',1,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('46','积分商城','3','page:mall/mall-list','积分商城@2x_1487338008959.png','1','home_page',2,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('47','热门活动','3','page:home/activity?category=47','热门活动@2x_1487394495564.png','1','home_page',3,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('48','天气','3','page:home/weather?category=48','天气@2x_1487394548872.png','1','home_page',4,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('49','美食','3','page:go/go?idx=2','美食@2x_1487394562837.png','1','home_page',5,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('5','主题酒店','3','page:go/hotel-list?category=5','主题酒店@2x_1486967311806.png','1','depart_hotel',4,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('50','酒店','3','page:go/go?idx=1','酒店@2x_1487338059643.png','1','home_page',6,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('51','出行','3','page:go/go','出行@2_1487817930905.png','1','home_page',7,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('6','三星酒店','3','page:go/hotel-list?category=6','三星酒店@2x_1486967146934.png','1','depart_hotel',5,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('7','四星酒店','3','page:go/hotel-list?category=7','四星酒店@2x_1486967205007.png','1','depart_hotel',6,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('70','我的积分','3','page:user/integral?category=70','我的积分@2x.png','1','home_page',0,'1','0','','1','CD-CGD000006','CD-CGD000006');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('8','五星酒店','3','page:go/hotel-list?category=8','五星酒店@2x_1486967262804.png','1','depart_hotel',7,'1','0',NULL,'1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('9','自助餐','3','page:go/food-list?category=9','自助餐@2x_1487052943683.png','1','depart_deli',0,'1','0','77','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('DH2017030617381951540','苏堤春晓','2','https://sanwen8.cn/p/1a3tpfT.html','66305477_9_1489217405545.jpg','1','index_banner',2,'1','0','','1','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`,`system_code`) VALUES ('DH2017031115254683919','西湖美景','2','0','蒙版@2x_1488793203866_1489217018473.png','1','index_banner',0,'1','0','','1','CD-CLW000005','CD-CLW000005');

/*
-- Query: SELECT `code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code` FROM tstd_cpassword
LIMIT 0, 10000

-- Date: 2017-03-12 14:52
*/
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('001','2','ACCESS_KEY','Dc0pMP8ImFm78-uk4iGsOPpB2-vHc64D07OsOQVi','','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('002','2','SECRET_KEY','3NP-tpZP9-5fH-R-FhvKTfYpPPVFNvjFF3JXmrcq','','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('003','2','bucket','b2coss','','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('004','3','ACCESS_KEY','wx8bc03dd744895352','','CD-CLW000005','CD-CLW000005');
INSERT INTO `tstd_cpassword` (`code`,`type`,`account`,`password`,`remark`,`company_code`,`system_code`) VALUES ('005','3','SECRET_KEY','44ebf0ef908dc54656573625a579ea82','','CD-CLW000005','CD-CLW000005');

/*
-- Query: SELECT ckey,cvalue,note,updater,now() as update_datetime,remark,system_code FROM std_user.tsys_config
LIMIT 0, 10000

-- Date: 2017-03-12 14:38
*/
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('aboutus','关于我们','<p>&nbsp; &nbsp; &nbsp; &nbsp;浙江来来旺旺旅游信息有限公司成立于2016年9月，隶属于海宁大元控股集团有限公司。公司致力于为游客及旅行社提供代办票务、代订旅游车辆、订房订餐等旅游信息咨询服务。</p>','admin',now(),'','CD-CLW000005');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('inte','积分规则','<p></p><p>&nbsp; &nbsp; &nbsp; &nbsp;积分业务是海宁市大元控股集团为答谢广大客户对公司业务的长期支持与厚爱而推出的一项客户回馈服务。凡在集团旗下公司消费的注册会员都将产生对应积分。累计积分可以抵扣产品费用等……</p><p><br></p>','admin',now(),'','CD-CLW000005');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('soft','软件许可协议','<p>软件许可协议</p>','admin',now(),'','CD-CLW000005');
INSERT INTO `tsys_config` (`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`,`system_code`) VALUES ('telephone','服务热线','400-832-0989','admin',now(),'','CD-CLW000005');