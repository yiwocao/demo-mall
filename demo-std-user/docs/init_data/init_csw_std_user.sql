/*
-- Query: SELECT * FROM csw_std_user.tstd_level_rule
LIMIT 0, 50000

-- Date: 2016-10-26 23:03
*/
INSERT INTO `tstd_level_rule` (`code`,`name`,`amount_min`,`amount_max`,`effect`,`updater`,`update_datetime`,`remark`,`remark`) VALUES ('1','新手上路',0,10000,'1','admin',now(),'新手上路');
INSERT INTO `tstd_level_rule` (`code`,`name`,`amount_min`,`amount_max`,`effect`,`updater`,`update_datetime`,`remark`,`remark`) VALUES ('2','初级会员',10000,100000,'0','admin',now(),'初级会员');
INSERT INTO `tstd_level_rule` (`code`,`name`,`amount_min`,`amount_max`,`effect`,`updater`,`update_datetime`,`remark`,`remark`) VALUES ('3','中级会员',100000,500000,'0','admin',now(),'中级会员');
INSERT INTO `tstd_level_rule` (`code`,`name`,`amount_min`,`amount_max`,`effect`,`updater`,`update_datetime`,`remark`,`remark`) VALUES ('4','高级会员',500000,2000000,'0','admin',now(),'高级会员');
INSERT INTO `tstd_level_rule` (`code`,`name`,`amount_min`,`amount_max`,`effect`,`updater`,`update_datetime`,`remark`,`remark`) VALUES ('5','金牌会员',2000000,10000000,'0','admin',now(),'金牌会员');
INSERT INTO `tstd_level_rule` (`code`,`name`,`amount_min`,`amount_max`,`effect`,`updater`,`update_datetime`,`remark`,`remark`) VALUES ('6','论坛元老',10000000,1000000000,'0','admin',now(),'论坛元老');

/*
-- Query: SELECT * FROM csw_std_user.tstd_rule
LIMIT 0, 50000

-- Date: 2016-10-22 21:48
*/
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('1001','1','A','0',5000,'admin',now(),'注册');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('1002','1','B','0',1000,'admin',now(),'每日签到');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('1003','1','C1','0',2000,'admin',now(),'上传头像');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('1004','1','C2','0',2000,'admin',now(),'资料完善');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('1005','1','D','0',2000,'admin',now(),'发布帖子');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('1006','1','E','0',1000,'admin',now(),'发布评论');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('1007','1','F','0',1000,'admin',now(),'设置精华帖');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('1008','1','G','0',1000,'admin',now(),'帖子违规');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('1009','1','H','0',1000,'admin',now(),'评论违规');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('2001','2',NULL,'1',1,'admin',now(),'被举报次数');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('2002','2',NULL,'2',5,'admin',now(),'被举报次数');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('2003','2',NULL,'3',10,'admin',now(),'被举报次数');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('2004','2',NULL,'4',15,'admin',now(),'被举报次数');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('2005','2',NULL,'5',20,'admin',now(),'被举报次数');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('2006','2',NULL,'6',25,'admin',now(),'被举报次数');
INSERT INTO `tstd_rule` (`code`,`kind`,`type`,`level`,`value`,`updater`,`update_datetime`,`remark`) VALUES ('2007','2',NULL,'0',5,'admin',now(),'被举报次数');

INSERT INTO `tstd_user` (`user_id`,`login_name`,`nickname`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`updater`,`update_datetime`,`remark`,`pdf`) VALUES ('U201600000000000000','admin',NULL,'21218cca77804d2ba1922c33e0151105','1','01','0','','','','','','21218cca77804d2ba1922c33e0151105','1','SR201600000000000000','0','admin',now(),'管理端系统方',NULL);

/*
-- Query: SELECT code,name,type,url,order_no,updater, now() as update_datetime,remark,parent_code,kind FROM csw_std_user.tsys_menu
LIMIT 0, 50000

-- Date: 2016-11-01 17:30
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600000000000000','根目录','1','#','1','admin',now(),NULL,'','');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000000','系统根目录','1','#','1','admin',now(),NULL,'SM201600000000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000001','系统管理','1','#','1','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821342814761','运营数据','1','#','1','admin',now(),'','SM201600001000000001','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821345774472','运维数据','1','#','2','admin',now(),'','SM201600001000000001','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821362061312','角色管理','1','/security/role.htm','1','admin',now(),'','SM2016092821342814761','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821365831995','用户管理','1','/security/user.htm','2','admin',now(),'','SM2016092821342814761','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821384689624','全局导航管理','1','/view/menu.htm','1','admin',now(),'','SM201610091501476418','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821410784749','菜单管理','1','/security/menu.htm','1','admin',now(),'','SM2016092821345774472','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821421202683','系统参数管理','1','/general/sys_param.htm','2','admin',now(),'','SM2016092821345774472','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821432525712','数据字典管理','1','/general/dict.htm','3','admin',now(),'','SM2016092821345774472','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821542022668','总部管理','1','#','2','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821543428878','地方管理','1','#','3','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821553717238','地方管理','1','#','1','admin',now(),'','SM2016092821542022668','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821560359584','用户查询','1','#','6','admin',now(),'','SM2016092821542022668','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821563193328','积分规则','1','#','2','admin',now(),'','SM2016092821542022668','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821570302668','文明规则','1','#','3','admin',now(),'','SM2016092821542022668','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821582219970','消息管理','1','#','4','admin',now(),'','SM2016092821542022668','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821584799672','导航管理','1','#','4','admin',now(),'','SM2016092821543428878','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821592671896','文明执行','1','#','1','admin',now(),'','SM2016092821543428878','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092821595564374','消息管理','1','#','2','admin',now(),'','SM2016092821543428878','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092822022426987','新增','2','/add','1','admin',now(),'','SM2016092821362061312','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092822030509720','修改','2','/edit','2','admin',now(),'','SM2016092821362061312','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092822034746375','删除','2','/drop','3','admin',now(),'','SM2016092821362061312','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092822044058332','分配菜单','2','/change','4','admin',now(),'','SM2016092821362061312','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092823294360078','修改','2','/edit','1','admin',now(),'','SM2016092821410784749','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100914553600455','修改','2','/edit','1','admin',now(),'','SM2016092821421202683','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610091501476418','导航管理','1','#','5','admin',now(),'','SM2016092821542022668','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915052716145','修改','2','/edit','2','admin',now(),'','SM2016092821384689624','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915055099756','详情','2','/detail','3','admin',now(),'','SM2016092821384689624','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915223779358','积分规则','1','/rule/score.htm','1','admin',now(),'','SM2016092821563193328','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915231396881','修改','2','/edit','1','admin',now(),'','SM2016100915223779358','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915414279820','关键字过滤','1','/rule/keyword.htm','1','admin',now(),'','SM2016092821570302668','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915422733356','新增','2','/add','1','admin',now(),'','SM2016100915414279820','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915425403738','修改','2','/edit','2','admin',now(),'','SM2016100915414279820','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915433568936','删除','2','/delete','3','admin',now(),'','SM2016100915414279820','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915435764683','详情','2','/detail','4','admin',now(),'','SM2016100915414279820','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915481702722','举报帖','1','/rule/report.htm','2','admin',now(),'','SM2016092821570302668','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915485930525','用户组管理','1','/user/level.htm','3','admin',now(),'','SM2016092821570302668','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915504442941','修改','2','/edit','1','admin',now(),'','SM2016100915481702722','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915512764682','修改','2','/edit','2','admin',now(),'','SM2016100915485930525','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915521323063','详情','2','/detail','4','admin',now(),'','SM2016100915485930525','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915574704022','公告管理','1','/message/notice.htm','1','admin',now(),'','SM2016092821582219970','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915584007132','发布','2','/publish','4','admin',now(),'','SM2016100915574704022','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915590330122','修改','2','/edit','2','admin',now(),'','SM2016100915574704022','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100915592956667','详情','2','/detail','5','admin',now(),'','SM2016100915574704022','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916013626119','用户查询','1','/user/customer.htm','1','admin',now(),'','SM2016092821560359584','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916091382814','商城管理','1','#','3','admin',now(),'','SM2016092821543428878','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916101269036','用户查询','1','#','5','admin',now(),'','SM2016092821543428878','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916121992653','帖子管理','1','/forum/post.htm','4','admin',now(),'','SM2016092821592671896','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916145734721','版块管理','1','/forum/board.htm','3','admin',now(),'','SM2016092821592671896','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916160734287','新增','2','/add','1','admin',now(),'','SM2016100916145734721','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916175763347','公告管理','1','/message/notice.htm?b=1','1','admin',now(),'','SM2016092821595564374','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916191158121','发布','2','/publish','4','admin',now(),'','SM2016100916175763347','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916193696641','修改','2','/edit','2','admin',now(),'','SM2016100916175763347','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916200106918','详情','2','/detail','5','admin',now(),'','SM2016100916175763347','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916241875835','商品管理','1','/store/product.htm','1','admin',now(),'','SM2016100916091382814','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916244454597','新增','2','/add','1','admin',now(),'','SM2016100916241875835','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916250553765','修改','2','/edit','2','admin',now(),'','SM2016100916241875835','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916252159110','删除','2','/delete','3','admin',now(),'','SM2016100916241875835','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610091627167791','订单处理','1','/store/order.htm','2','admin',now(),'','SM2016100916091382814','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916281495530','处理','2','/action','1','admin',now(),'','SM201610091627167791','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016100916294811547','用户查询','1','/user/customer.htm?b=1','1','admin',now(),'','SM2016100916101269036','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101108062331471','修改','2','/edit','2','admin',now(),'','SM2016100916145734721','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101114292608568','删除','2','/delete','3','admin',now(),'','SM2016101403064885124','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610131123478618','详情','2','/detail','4','admin',now(),'','SM2016100916241875835','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101311245718432','上下架','2','/updown','5','admin',now(),'','SM2016100916241875835','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101320562046283','新增','2','/add','1','admin',now(),'','SM2016100915574704022','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101320584671382','删除','2','/delete','3','admin',now(),'','SM2016100915574704022','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101321375875850','新增','2','/add','1','admin',now(),'','SM2016100916175763347','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101321385955090','删除','2','/delete','3','admin',now(),'','SM2016100916175763347','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101403000449381','新增','2','/add','1','admin',now(),'','SM2016092821365831995','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610140301522469','重置密码','2','/resetPwd','3','admin',now(),'','SM2016092821365831995','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101403040235885','注销/取消','2','/cancel','4','admin',now(),'','SM2016092821365831995','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101403052639778','设置角色','2','/setRole','5','admin',now(),'','SM2016092821365831995','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101403064885124','城市管理','1','/general/city.htm','1','admin',now(),'','SM2016092821553717238','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101403072489983','新增','2','/add','1','admin',now(),'','SM2016101403064885124','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101403075618423','修改','2','/edit','2','admin',now(),'','SM2016101403064885124','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101403080803191','修改','2','/edit','1','admin',now(),'','SM2016092821432525712','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101403085360130','详情','2','/detail','4','admin',now(),'','SM2016101403064885124','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101403092984034','默认设置','2','/default','5','admin',now(),'','SM2016101403064885124','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101404423631536','导航管理','1','/view/menu.htm?b=1','1','admin',now(),'','SM2016092821584799672','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101404444655681','修改','2','/edit','2','admin',now(),'','SM2016101404423631536','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016101404450438722','详情','2','/detail','3','admin',now(),'','SM2016101404423631536','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102011060812993','新增','2','/add','1','admin',now(),'','SM2016100916013626119','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102011064964715','禁登录/取消','2','/lock','2','admin',now(),'','SM2016100916013626119','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102011074960231','详情','2','/detail1','3','admin',now(),'','SM2016100916013626119','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102011143488156','新增','2','/add','1','admin',now(),'','SM2016100916294811547','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102011150391575','禁登录/取消','2','/lock','2','admin',now(),'','SM2016100916294811547','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102011154720662','详情','2','/detail1','4','admin',now(),'','SM2016100916294811547','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102014042498646','详情','2','/detail','4','admin',now(),'','SM2016100916145734721','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610231500322171','置顶/取消','2','/top','1','admin',now(),'','SM2016100916121992653','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102315091640096','精华/取消','2','/digest','2','admin',now(),'','SM2016100916121992653','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102315094472925','转版','2','/change','3','admin',now(),'','SM2016100916121992653','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102315103179381','锁帖/取消','2','/lock','4','admin',now(),'','SM2016100916121992653','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102315111143910','头条/取消','2','/headline','5','admin',now(),'','SM2016100916121992653','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102315125303658','批量删除','2','/multidelete','5','admin',now(),'','SM2016100916121992653','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102317263644357','帖子回收站','1','/forum/post/recycle.htm','5','admin',now(),'','SM2016092821592671896','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102317284048726','还原','2','/restore','1','admin',now(),'','SM2016102317263644357','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102317290727498','彻底删除','2','/fdelete','2','admin',now(),'','SM2016102317263644357','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102318523143152','帖子审查','1','/forum/post/check.htm','1','admin',now(),'','SM2016092821592671896','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102318534564231','评论审查','1','/forum/comment/check.htm','2','admin',now(),'','SM2016092821592671896','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102318581959942','审查','2','/check','1','admin',now(),'','SM2016102318523143152','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201610231858541205','批量审查','2','/multicheck','2','admin',now(),'','SM2016102318523143152','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102318591599199','审查','2','/check','1','admin',now(),'','SM2016102318534564231','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102319000078279','批量审查','2','/multicheck','2','admin',now(),'','SM2016102318534564231','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016102717450558955','新增引流','2','/add','1','admin',now(),'','SM2016101404423631536','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016110116123243686','详情','2','/detail','3','admin',now(),'','SM2016102318523143152','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016110116130272229','详情','2','/detail','3','admin',now(),'','SM2016102318534564231','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016110116361367923','详情','2','/detail','9','admin',now(),'','SM2016100916121992653','1');
/*
-- Query: SELECT `code`,`name`,`type`,`url`,`order_no`,'admin' as `updater`,now() as `update_datetime`,`remark`,`parent_code`,`kind` FROM csw_std_user.tsys_menu where update_datetime > '2016-11-16 00:00:00'
LIMIT 0, 50000

-- Date: 2016-11-18 17:58
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111609533597067','删除','2','/delete','3','admin',now(),'','SM2016102318534564231','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111610310639642','重置密码','2','/reset','3','admin',now(),'','SM2016100916013626119','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111710052216322','版块类别','1','/forum/kind.htm','2','admin',now(),'','SM2016092821592671896','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111710055258697','新增','2','/add','1','admin',now(),'','SM2016111710052216322','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111710061147281','修改','2','/edit','2','admin',now(),'','SM2016111710052216322','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111710063033450','删除','2','/delete','3','admin',now(),'','SM2016111710052216322','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111710070679281','详情','2','/detail','4','admin',now(),'','SM2016111710052216322','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111710075424082','商品类别','1','/store/kind.htm','0','admin',now(),'','SM2016100916091382814','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111710081810317','新增','2','/add','1','admin',now(),'','SM2016111710075424082','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111710083716259','修改','2','/edit','2','admin',now(),'','SM2016111710075424082','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111710085399337','删除','2','/delete','3','admin',now(),'','SM2016111710075424082','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016111710091650147','详情','2','/detail','4','admin',now(),'','SM2016111710075424082','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016112113554257275','客服账号','1','/general/kefu.htm','2','admin',now(),'','SM2016092821553717238','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016112113564334665','修改','2','/edit','1','admin',now(),'','SM2016112113554257275','1');

/*
-- Query: SELECT * FROM csw_std_user.tsys_role
LIMIT 0, 50000

-- Date: 2016-09-29 10:24
*/
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000000','超级管理员','1','admin',now(),'系统管理员','1');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000001','老板','2','admin',now(),'平台运营方boss','1');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000002','普通企业用户','3','admin',now(),'系统B端用户','1');

/*
-- Query: SELECT `role_code`,`menu_code`,`updater`,now() as `update_datetime`,`remark` FROM csw_std_user.tsys_menu_role where role_code in ('SR201600000000000000','SR201600000000000001','SR201600000000000002')
LIMIT 0, 50000

-- Date: 2016-11-01 17:31
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092821542022668','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092821553717238','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101403064885124','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101114292608568','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101403072489983','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101403075618423','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101403085360130','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101403092984034','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092821560359584','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100916013626119','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102011060812993','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102011064964715','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102011072576549','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016102011074960231','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092821563193328','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915223779358','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915231396881','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092821570302668','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915414279820','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915422733356','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915425403738','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915433568936','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915435764683','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915481702722','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915504442941','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915485930525','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915512764682','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915521323063','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092821582219970','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915574704022','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915584007132','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915590330122','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915592956667','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101320562046283','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016101320584671382','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201610091501476418','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092821384689624','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915050209649','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915052716145','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016100915055099756','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016092821543428878','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016092821584799672','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016101404423631536','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016101404444655681','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016101404450438722','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102717450558955','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016092821592671896','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916121992653','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201610231500322171','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102315091640096','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102315094472925','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102315103179381','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102315111143910','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102315125303658','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016110116361367923','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916145734721','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916160734287','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016101108062331471','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102014042498646','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102317263644357','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102317284048726','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102317290727498','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102318523143152','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102318581959942','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201610231858541205','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016110116123243686','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102318534564231','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102318591599199','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102319000078279','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016110116130272229','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016092821595564374','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916175763347','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916191158121','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916193696641','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916200106918','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016101321375875850','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016101321385955090','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916091382814','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916241875835','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916244454597','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916250553765','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916252159110','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201610131123478618','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016101311245718432','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201610091627167791','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916281495530','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916101269036','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016100916294811547','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102011143488156','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102011150391575','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016102011154720662','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000001','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821342814761','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821362061312','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092822022426987','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092822030509720','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092822034746375','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092822044058332','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821365831995','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101403000449381','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201610140301522469','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101403040235885','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101403052639778','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821345774472','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821410784749','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092823294360078','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821421202683','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100914553600455','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821432525712','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101403080803191','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821542022668','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821553717238','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101403064885124','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101114292608568','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101403072489983','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101403075618423','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101403085360130','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101403092984034','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821560359584','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100916013626119','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102011060812993','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102011064964715','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102011074960231','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821563193328','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915223779358','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915231396881','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821570302668','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915414279820','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915422733356','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915425403738','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915433568936','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915435764683','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915481702722','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915504442941','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915485930525','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915512764682','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915521323063','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821582219970','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915574704022','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915584007132','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915590330122','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915592956667','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101320562046283','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101320584671382','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201610091501476418','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821384689624','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915052716145','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100915055099756','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821543428878','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821584799672','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101404423631536','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016101404450438722','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821592671896','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100916121992653','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016110116361367923','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100916145734721','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016102014042498646','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016092821595564374','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100916175763347','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100916200106918','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100916091382814','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016100916241875835','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201610131123478618','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201610091627167791','admin',now(),NULL);

/*
-- Query: SELECT role_code,menu_code,'admin' as updater,now() as update_datetime,remark FROM csw_std_user.tsys_menu_role where menu_code in(select code FROM tsys_menu where update_datetime > '2016-11-16 00:00:00')
LIMIT 0, 50000

-- Date: 2016-11-21 21:42
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111609533597067','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111710052216322','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111710055258697','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111710061147281','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111710063033450','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111710070679281','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111710075424082','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111710081810317','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111710083716259','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111710085399337','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016111710091650147','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016112113554257275','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016112113564334665','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016111610310639642','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016112113554257275','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016112113564334665','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016111610310639642','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016111710052216322','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016111710070679281','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016111710075424082','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016111710091650147','admin',now(),NULL);
/*
-- Query: select `to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,now() as update_datetime,`remark` from tsys_dict
LIMIT 0, 50000

-- Date: 2016-10-31 16:11
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

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'jour_status','流水状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','jour_status','0','免对账','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','jour_status','1','待对账','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','jour_status','2','已对账待调帐','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','jour_status','9','已对账且账已平','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'true_false','对错','admin',now(),NULL);
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','true_false','1','是','admin',now(),NULL);
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','true_false','0','否','admin',now(),NULL);

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'active_status','激活状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','active_status','0','未启用','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','active_status','1','启用','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'view_type','视图类型','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','view_type','1','菜单','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','view_type','2','广告图','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','view_type','3','模块','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','view_type','4','引流','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','view_type','5','启动页','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'city_location','城市优先级','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','city_location','0','不启用','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','city_location','1','正常','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','city_location','2','推荐','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'post_location','帖子地位','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','post_location','A','置顶','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','post_location','B','精华','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','post_location','C','头条','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'post_status','帖子状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','post_status','A','草稿中','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','post_status','B','已发布','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','post_status','C1','不信任待审批','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','post_status','C2','被举报待审批','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','post_status','D','审批通过','admin',now(),NULL);
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','post_status','E','待回收','admin',now(),NULL);
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','post_status','F','被过滤','admin',now(),NULL);

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'kw_reaction','关键字反应','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','kw_reaction','1','屏蔽','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','kw_reaction','2','审核','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','kw_reaction','3','拒绝','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'rule_kind','规则类别','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_kind','1','积分项','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_kind','2','举报数','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'rule_type','规则类型','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_type','A','注册','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_type','B','每日签到','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_type','C1','上传头像','admin',now(),NULL);
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_type','C2','资料完善','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_type','D','发布帖子','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_type','E','发布评论','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_type','F','设置精华帖','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_type','G','帖子违规','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','rule_type','H','评论违规','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'prod_status','产品状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','prod_status','0','未发布','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','prod_status','1','上架中','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','prod_status','2','已下架','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'order_status','订单状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','order_status','1','已支付','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','order_status','2','已取货','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','order_status','3','作废','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'msg_type','消息类型','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','msg_type','1','公告','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','msg_type','2','新闻','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','msg_type','3','APP推送','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'msg_status','消息状态','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','msg_status','0','未发布','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','msg_status','1','已发布','admin',now(),'');

INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','0',NULL,'comment_status','评论类型','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comment_status','A','草稿中','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comment_status','B','已发布','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comment_status','C2','被举报待审批','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comment_status','D','审批通过','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comment_status','E','待回收','admin',now(),'');
INSERT INTO `tsys_dict` (`to_system`,`type`,`parent_key`,`dkey`,`dvalue`,`updater`,`update_datetime`,`remark`) VALUES ('8','1','comment_status','F','被过滤','admin',now(),'');

/*
-- Query: SELECT * FROM csw_std_user.tsys_config
LIMIT 0, 50000

-- Date: 2016-10-31 13:47
*/
INSERT INTO `tsys_config` (`system_code`,`ckey`,`cvalue`,`note`,`updater`,`update_datetime`,`remark`) VALUES ('CD-CCSW000008','cswDescription','城市网介绍','<p>关于城市网</p><p>城市网是一款城市生活服务产品，具有民生、情感、美食、亲子、活动、情感生活话题，是本地老百姓交流生活资讯、消费娱乐、民生信息的平台。其中，城市小蜜为三四五线城市居民提供更为便捷快捷的生活信息服务。</p>','admin',now(),NULL);

INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000001','0','1','招聘',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000002','0','1','出租',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000003','0','1','二手',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000004','0','1','求助',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000005','0','1','便民',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000006','0','1','车友',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000007','0','1','情感',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000008','0','1','吃货',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000009','0','1','其他',NULL,1,'1','0');


INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000011','0','2','家用电器',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000012','0','2','手机数码',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000013','0','2','电脑办公',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000014','0','2','家居厨具',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000015','0','2','运动户外',NULL,1,'1','0');
INSERT INTO `tforum_category` (`code`,`parent_code`,`type`,`name`,`pic`,`order_no`,`belong`,`company_code`) VALUES ('FL2016000000000000016','0','2','日用食品',NULL,1,'1','0');

/*
-- Query: SELECT * FROM csw_std_user.tstd_cnavigate
LIMIT 0, 50000

-- Date: 2016-10-26 20:16
*/
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000001','头条','1','page:headline','http://114.55.179.135:8901/CSW20161031/toutiao.png','1','0',1,'1',NULL,NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000002','有料','1','page:forum','http://114.55.179.135:8901/CSW20161031/youliao.png','1','0',2,'1',NULL,NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000003','小蜜','1','page:xiaomi','http://114.55.179.135:8901/CSW20161031/xiaomifeng.png','1','0',3,'1',NULL,NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000004','视频','1','page:custom','http://114.55.179.135:8901/CSW20161031/shiping.png','1',NULL,4,'2',NULL,NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000005','我的','1','page:mine','http://114.55.179.135:8901/CSW20161031/wode.png','1',NULL,5,'1',NULL,NULL,NULL,'0');

INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000006','积分商城','3','page:mall','http://114.55.179.135:8901/CSW20161031/0_jfsc.png','1',NULL,1,'1','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000007','每日签到','3','page:signin','http://114.55.179.135:8901/CSW20161031/0_mrqd.png','1',NULL,2,'1','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000008','同城活动','3','page:mine','http://114.55.179.135:8901/CSW20161031/0_tchd.png','1',NULL,3,'2','DH2016100000000000001',NULL,NULL,'0');

INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000009','招聘','4','page:mine','http://114.55.179.135:8901/CSW20161031/1_zhaopin.png','1',NULL,1,'2','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000010','出租','4','page:mine','http://114.55.179.135:8901/CSW20161031/2_chuzu.png','1',NULL,2,'2','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000011','二手','4','page:mine','http://114.55.179.135:8901/CSW20161031/3_ersou.png','1',NULL,3,'2','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000012','求助','4','page:mine','http://114.55.179.135:8901/CSW20161031/4_qiuzhu.png','1',NULL,4,'2','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000013','便民','4','page:mine','http://114.55.179.135:8901/CSW20161031/5_bianming.png','1',NULL,5,'2','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000014','车友','4','page:mine','http://114.55.179.135:8901/CSW20161031/6_cheyou.png','1',NULL,6,'2','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000015','情感','4','page:mine','http://114.55.179.135:8901/CSW20161031/7_qinggan.png','1',NULL,7,'2','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000016','吃货','4','page:mine','http://114.55.179.135:8901/CSW20161031/8_chihuo.png','1',NULL,8,'2','DH2016100000000000001',NULL,NULL,'0');

INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000017','引流1','4','page:mine','http://114.55.179.135:8901/CSW20161031/xiaomifeng.png','1',NULL,1,'2','DH2016100000000000003',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000018','引流2','4','page:mine','http://114.55.179.135:8901/CSW20161031/xiaomifeng.png','1',NULL,2,'2','DH2016100000000000003',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000019','引流3','4','page:mine','http://114.55.179.135:8901/CSW20161031/xiaomifeng.png','1',NULL,3,'2','DH2016100000000000003',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000020','引流4','4','page:mine','http://114.55.179.135:8901/CSW20161031/xiaomifeng.png','1',NULL,4,'2','DH2016100000000000003',NULL,NULL,'0');

INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000021','广告图1','2','page:mine','http://114.55.179.135:8901/CSW20161031/banner1.png','1',NULL,1,'2','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000022','广告图2','2','page:mine','http://114.55.179.135:8901/CSW20161031/banner2.png','1',NULL,2,'2','DH2016100000000000001',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000023','广告图3','2','page:mine','http://114.55.179.135:8901/CSW20161031/banner3.png','1',NULL,3,'2','DH2016100000000000001',NULL,NULL,'0');

INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('DH2016100000000000024','引导图','5','page:mine','http://114.55.179.135:8901/CSW20161031/adv.png','1',NULL,1,'1','0',NULL,NULL,'0');