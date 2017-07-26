/*
-- Query: SELECT * FROM develop_std_user.tstd_user
LIMIT 0, 50000

-- Date: 2016-07-25 10:36
*/
INSERT INTO `tstd_user` (`user_id`,`login_name`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`updater`,`update_datetime`,`remark`,`pdf`) VALUES ('U201600000000000000','admin','21218cca77804d2ba1922c33e0151105','1','01','2','','','','','','21218cca77804d2ba1922c33e0151105','1','SR201600000000000000','0','admin',now(),'管理端系统方',NULL);
INSERT INTO `tstd_user` (`user_id`,`login_name`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`updater`,`update_datetime`,`remark`,`pdf`) VALUES ('U201600000000000001','caigo','21218cca77804d2ba1922c33e0151105','1','05','2','','','','','','21218cca77804d2ba1922c33e0151105','1','SR201600000000000001','0','admin',now(),'顶级货品商和积分商',NULL);

/*
-- Query: SELECT code,name,type,url,order_no,updater,now() as update_datetime,remark,parent_code,kind FROM tsys_menu
LIMIT 0, 50000

-- Date: 2016-12-10 14:19
*/
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600000000000000','根目录','1','#','1','admin',now(),NULL,'','');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000000','系统根目录','1','#','1','admin',now(),NULL,'SM201600000000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000001','系统管理','1','#','1','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000002','权限管理','1','#','2','admin',now(),'1234565678','SM201600001000000001','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000003','角色管理','1','/security/role.htm','1','admin',now(),'','SM201600001000000002','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000004','新增','2','/role/add','1','admin',now(),'','SM201600001000000003','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000005','修改','2','/role/edit','2','admin',now(),'','SM201600001000000003','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000006','删除','2','/role/drop','3','admin',now(),'','SM201600001000000003','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000007','分配菜单','2','/role/menuRole/change','4','admin',now(),'','SM201600001000000003','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000008','用户管理','1','/security/user.htm','2','admin',now(),'','SM201600001000000002','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000009','新增','2','/user/add','1','admin',now(),'','SM201600001000000008','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000012','锁定','2','/user/lock','1','admin',now(),'','SM201600001000000008','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000013','解锁','2','/user/unlock','1','admin',now(),'','SM201600001000000008','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000014','设置角色','2','/user/userRole/changeRole','4','admin',now(),'','SM201600001000000008','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000025','数据字典管理','1','/general/dict.htm','1','admin',now(),'','SM2016060811005690891','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000026','增加','2','/general/dict/add','1','admin',now(),'','SM201600001000000025','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000027','修改','2','/general/dict/edit','1','admin',now(),'','SM201600001000000025','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000028','删除','2','/general/dict/drop','2','admin',now(),'','SM201600001000000025','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000032','运维管理','1','#','1','admin',now(),'','SM201600001000000001','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000033','菜单设置','1','/security/menu.htm','1','admin',now(),'','SM201600001000000032','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000034','修改','2','/menu/edit','1','admin',now(),'','SM201600001000000033','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201600001000000035','系统参数设置','1','/general/sys_param.htm','2','admin',now(),'','SM201600001000000032','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605231112056907','货品销售','1','#','3','admin',now(),'','SM201605252213242734','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605231116409567','货品管理','1','/product/model.htm*','1','admin',now(),'','SM201605260345558146','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605231117552967','上架销售','1','/product/model_publish.htm','2','admin',now(),'','SM201605231112056907','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605251436428271','分销管理','1','#','3','admin',now(),'','SM201605252213242734','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605251437509349','发货单处理','1','/order/order_query.htm','1','admin',now(),'','SM201605301033423864','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605252213242734','货品管理','1','#','2','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605260345558146','库存管理','1','#','2','admin',now(),'','SM201605252213242734','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605261041222628','客户查询','1','#','6','admin',now(),'','SM2016070415411295785','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605261049488614','终端用户查询','1','/customer/customer.htm','1','admin',now(),'','SM201605261041222628','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605261127248332','系统账户','1','#','6','admin',now(),'','SM201600001000000001','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605261131142289','兑现积分','1','/account/withdraw.htm','3','admin',now(),'','SM201605301559391040','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605261134393683','对账','1','/account/check.htm','6','admin',now(),'','SM2016060811005690891','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605261135347831','调账审批','1','/account/tiao_zhang.htm','7','admin',now(),'','SM2016060811005690891','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605262136356968','现场销售','1','/product/publish.htm*','2','admin',now(),'','SM201605231112056907','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605301032506749','货品商账户','1','#','6','admin',now(),'','SM201605252213242734','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605301033423864','物流管理','1','#','4','admin',now(),'','SM201605252213242734','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605301108533935','物流单处理','1','/logistics/logistics-search.htm','1','admin',now(),'','SM201605301033423864','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605301559391040','积分采购','1','#','2','admin',now(),'','SM2016070415411295785','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605301601220823','审批积分','1','/account/recharge.htm','2','admin',now(),'','SM201605301559391040','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053117322941296','上架/下架','2','/product/updown','1','admin',now(),'','SM201605262136356968','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053117334251937','新增','2','/model/add','1','admin',now(),'','SM201605231116409567','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053117350308130','修改','2','/model/edit','2','admin',now(),'','SM201605231116409567','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605311735344423','审核','2','/model/check','3','admin',now(),'','SM201605231116409567','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053117360778426','详情','2','/model/deatil','4','admin',now(),'','SM201605231116409567','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053117372557360','上架/下架','2','/model/updown','1','admin',now(),'','SM201605231117552967','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053117472419751','详情','2','/order/detail','1','admin',now(),'','SM201605251437509349','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053117501492660','详情','2','/customer/detail','1','admin',now(),'','SM201605261049488614','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053117513968392','积分账户','2','/customer/replaceAdd','4','admin',now(),'','SM201605261049488614','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053117533734198','充值','2','/account/apply','1','admin',now(),'','SM201605301601220823','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201605311754289585','审批','2','/account/approve','2','admin',now(),'','SM201605301601220823','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053119091321745','审批','2','/account/approve','1','admin',now(),'','SM201605261131142289','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053119095614747','支付','2','/account/payment','1','admin',now(),'','SM201605261131142289','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053119112110011','对账','2','/account/check','1','admin',now(),'','SM201605261134393683','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053119114618395','导出','2','/account/export','1','admin',now(),'','SM201605261134393683','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053119121398192','调账审批','2','/account/checkApprove','1','admin',now(),'','SM201605261135347831','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053119132482172','详情','2','/logistics/detail','1','admin',now(),'','SM201605301108533935','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053119204765024','新增','2','/menu/add','1','admin',now(),'','SM201600001000000035','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016053119211078131','修改','2','/menu/edit','2','admin',now(),'','SM201600001000000035','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016060120403002528','手填发展','1','/customer/channel.htm','1','admin',now(),'','SM2016060810352246577','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016060120422518420','售后管理','1','#','5','admin',now(),'','SM201605252213242734','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016060120433340394','退货单处理','1','*','2','admin',now(),'','SM2016060120422518420','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016060120442881395','维修单处理','1','/repair/repair_deal.htm*','4','admin',now(),'','SM2016060120422518420','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016060120500199118','代注册','2','/customer/replaceAdd','1','admin',now(),'','SM2016060120403002528','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016060120511983765','详情','2','/repair/detail','1','admin',now(),'','SM2016060120433340394','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016060120532410188','报修单处理','2','/repair/deal','1','admin',now(),'','SM2016060120442881395','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016060810352246577','终端户发展','1','#','5','admin',now(),'','SM2016070415411295785','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016060811005690891','运营管理','1','#','3','admin',now(),'','SM201600001000000001','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016061112025152045','已售货品查询','1','/repair/repair-search.htm*','1','admin',now(),'','SM2016060120422518420','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016061418271160796','系统账户','1','/account/sys_account.htm','2','admin',now(),'','SM201605261127248332','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201606141829152598','详情','2','/account/jour','1','admin',now(),'','SM2016061418271160796','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016061522291583556','详情','2','/account/detail','1','admin',now(),'','SM201605301601220823','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016061522293432114','详情','2','/account/detail','1','admin',now(),'','SM201605261131142289','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070415411295785','积分管理','1','#','3','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070416043335467','审批','2','/account/approve','1','admin',now(),'','SM2016070416114654566','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201607041610073261','申请','2','/account/apply','1','admin',now(),'','SM2016070416114654566','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070416114654566','红冲蓝补','1','/account/red_blue.htm','8','admin',now(),'','SM2016060811005690891','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070517594318324','详情','2','/customer/detail','1','admin',now(),'','SM2016070616500023641','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070521444120868','积分切割','2','/customer/firsterwei','1','admin',now(),'','SM2016070616513763161','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070609421892232','入驻积分商','2','/customer/replaceAdd','1','admin',now(),'','SM2016070616500023641','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201607060949209987','入驻货源商','2','/customer/replaceAdd','1','admin',now(),'','SM2016070617112104568','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070616485217670','积分商入驻','1','#','4','admin',now(),'','SM2016070415411295785','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070616500023641','手填入驻','1','/customer/score.htm','1','admin',now(),'','SM2016070616485217670','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070616513763161','积分仓库','1','/customer/score_rlue.htm','1','admin',now(),'','SM2016071916445173570','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070617112104568','分销商入驻','1','/customer/fenxiao.htm*','1','admin',now(),'','SM201605251436428271','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070716494943436','查看积分','2','/account/moneydetail','1','admin',now(),'','SM2016070617112104568','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016070716582581932','申请','2','/account/apply','1','admin',now(),'','SM201605261131142289','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201607191640554356','向上家购买积分','1','/account/applyshangjia.htm','1','admin',now(),'','SM201605301559391040','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071916432666449','二维码入驻','1','/customer/jifenerweijoin.htm','2','admin',now(),'','SM2016070616485217670','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071916445173570','积分销售','1','#','3','admin',now(),'','SM2016070415411295785','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071916470311551','积分销售','1','/customer/score_sale.htm','4','admin',now(),'','SM2016071916445173570','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071916521054489','二维码发展','1','/customer/jifenerwei_replaceadd.htm','2','admin',now(),'','SM2016060810352246577','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071916540917953','下家查询','1','/account/xiajia.htm','3','admin',now(),'','SM201605261041222628','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071916592050818','我的账户','1','#','3','admin',now(),'','SM2016070415411295785','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071917180429897','积分账户','1','/account/jifen_account.htm','1','admin',now(),'','SM2016071916592050818','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071917371289869','补货管理','1','#*','2','admin',now(),'','SM201605260345558146','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071917374384555','退货管理','1','/product/tui_product.htm*','3','admin',now(),'','SM201605260345558146','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071917385612020','线下批发','1','#*','3','admin',now(),'','SM201605231112056907','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071917434714568','代理发货','1','#*','3','admin',now(),'','SM201605251436428271','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071917515711340','分销商查询','1','#*','3','admin',now(),'','SM201605251436428271','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071923384874336','货品商积分账户','1','/account/huopin_account.htm','1','admin',now(),'','SM201605301032506749','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071923410614051','人民币账户','1','/account/rmb_account.htm','2','admin',now(),'','SM2016071916592050818','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071923435753537','货品商入驻','1','#','1','admin',now(),'','SM201605252213242734','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071923441466034','货品商入驻','1','/customer/score2.htm','1','admin',now(),'','SM2016071923435753537','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016071923442719254','二维码入驻','1','/customer/huopinerweijoin.htm*','2','admin',now(),'','SM201605251436428271','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072515194639977','品类管理','1','/product/product.htm','4','admin',now(),'','SM2016060811005690891','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072515212471978','货品管理','1','/product/model.htm','5','admin',now(),'','SM2016060811005690891','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201607261719033508','换货单处理','1','*','3','admin',now(),'','SM2016060120422518420','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201607261722204597','报表管理','1','#','9','admin',now(),'','SM201605252213242734','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621183849532','购买','2','/account/apply','1','admin',now(),'','SM201607191640554356','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621191012720','详情','2','/account/detail','1','admin',now(),'','SM201607191640554356','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621221761420','详情','2','/customer/detail','1','admin',now(),'','SM2016070616513763161','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621244074680','上/下架','2','/updown','1','admin',now(),'','SM2016071916470311551','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621251125020','二维码销售','2','/erwei','1','admin',now(),'','SM2016070616513763161','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621254141379','详情','2','/detail','1','admin',now(),'','SM2016071916470311551','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621274148584','详情','2','/detail','1','admin',now(),'','SM2016060120403002528','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201607262131035073','详情','2','/detail','1','admin',now(),'','SM2016071916540917953','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621313808693','积分账户详情','2','/jifenDetail','2','admin',now(),'','SM2016071916540917953','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621325884390','入驻货品商','2','/replaceAdd','1','admin',now(),'','SM2016071923441466034','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621333450481','详情','2','/detail','2','admin',now(),'','SM2016071923441466034','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621350382996','取消','2','/cancel','1','admin',now(),'','SM201605251437509349','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621353672120','发货','2','/import','2','admin',now(),'','SM201605251437509349','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621365748281','收货确认','2','/sure','1','admin',now(),'','SM201605301108533935','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621382144480','新增','2','/add','1','admin',now(),'','SM2016072515194639977','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621384945614','修改','2','/edit','2','admin',now(),'','SM2016072515194639977','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201607262139122658','详情','2','/detail','3','admin',now(),'','SM2016072515194639977','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621394140638','新增','2','/add','1','admin',now(),'','SM2016072515212471978','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621400005254','修改','2','/edit','2','admin',now(),'','SM2016072515212471978','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072621401859392','详情','2','/detail','3','admin',now(),'','SM2016072515212471978','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072717173285443','删除','2','/drop','3','admin',now(),'','SM2016070616513763161','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016072821204038331','现场发货','2','/siteImport','3','admin',now(),'','SM201605251437509349','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016073012331714087','分销价格管理','1','/product/price.htm','5','admin',now(),'','SM2016060811005690891','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016073012344968124','修改','2','/edit','1','admin',now(),'','SM2016073012331714087','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016080519403084716','加盟商入驻','1','/customer/score3.htm','2','admin',now(),'','SM2016071923435753537','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016080519411083716','入驻加盟商','2','/add','1','admin',now(),'','SM2016080519403084716','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016080519414046849','详情','2','/detail','2','admin',now(),'','SM2016080519403084716','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083010332711065','完善客户信息','2','/edit','2','admin',now(),'','SM201605261049488614','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083010343691911','送积分','2','/score','3','admin',now(),'','SM201605261049488614','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083010595278054','人民币账户','2','/realAccount','5','admin',now(),'','SM201605261049488614','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083016260305147','财务管理','1','#','4','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083016285487692','审批订单','1','#','1','admin',now(),'','SM2016083016260305147','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083016423543331','手工调账','1','#','2','admin',now(),'','SM2016083016260305147','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201608301646524475','线下充值','1','/account/recharge_offline.htm','1','admin',now(),'','SM2016083016285487692','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083016481414027','线下取现','1','/account/withdraw_offline.htm','2','admin',now(),'','SM2016083016285487692','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083016501523469','红冲蓝补','1','/account/balance.htm','1','admin',now(),'','SM2016083016423543331','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083016541960935','申请','2','/apply','1','admin',now(),'','SM201608301646524475','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083016544212711','审批','2','/check','2','admin',now(),'','SM201608301646524475','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083016550904678','审批','2','/check','1','admin',now(),'','SM2016083016481414027','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083016552982851','支付','2','/pay','2','admin',now(),'','SM2016083016481414027','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083016563426838','审批','2','/check','2','admin',now(),'','SM2016083016501523469','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016090813555023762','对账','1','/account/rmbcheck.htm','1','admin',now(),'','SM2016083016423543331','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016090813573571812','信息查询','1','#','3','admin',now(),'','SM2016083016260305147','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016090813583187563','充值订单查询','1','/account/recharge_order.htm','1','admin',now(),'','SM2016090813573571812','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016090813592104292','取现订单查询','1','/account/withdraw_order.htm','2','admin',now(),'','SM2016090813573571812','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016090916493530439','详情','2','/detail','1','admin',now(),'','SM2016090813583187563','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016090916495790337','详情','2','/detail','1','admin',now(),'','SM2016090813592104292','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016090917371974546','对账','2','/check','1','admin',now(),'','SM2016090813555023762','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092111184253216','商家管理','1','#','5','admin',now(),'','SM201600001000000000','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201609211120466595','商家管理','1','#','1','admin',now(),'','SM2016092111184253216','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092111242294491','商家管理','1','/vendor/vendor.htm','1','admin',now(),'','SM201609211120466595','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092111250651086','商家信息管理','1','/vendor/vendor_addedit.htm?edit=1','2','admin',now(),'','SM201609211120466595','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092111261398377','积分买单二维码','1','/vendor/buycode.htm','3','admin',now(),'','SM201609211120466595','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092111274061786','入驻商家','2','/add','1','admin',now(),'','SM2016092111242294491','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201609211128122953','修改','2','/edit','2','admin',now(),'','SM2016092111242294491','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201609211129267382','上线/下线','2','/updown','3','admin',now(),'','SM2016092111242294491','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092111295304013','详情','2','/detail','4','admin',now(),'','SM2016092111242294491','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016092919210010516','消费记录查询','1','/vendor/record.htm','4','admin',now(),'','SM201609211120466595','1');

/*
-- Query: SELECT code,name,level,updater,now() update_datetime,remark,kind FROM tsys_role
LIMIT 0, 50000

-- Date: 2016-12-10 14:18
*/
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000000','系统管理员','1','admin',now(),'系统管理员','1');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000001','顶级货品商和积分商','1','admin',now(),'顶级货品商和积分商','1');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000002','非顶级货品商和积分商','1','admin',now(),'非顶级货品商和积分商','1');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000004','非顶级货品商','1','admin',now(),'非顶级货品商','1');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000005','非顶级积分商','1','admin',now(),'非顶级积分商','1');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`,`kind`) VALUES ('SR201600000000000006','商家','1','admin',now(),'合作商家（用于消费积分）','1');
/*
-- Query: SELECT role_code,menu_code,'admin' as updater,now() as update_datetime,remark FROM jf_std_user.tsys_menu_role
LIMIT 0, 50000

-- Date: 2016-12-10 14:21
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016070415411295785','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM201605261041222628','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM201605261049488614','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016053117501492660','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016053117513968392','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016071916540917953','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM201607262131035073','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016072621313808693','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM201605301559391040','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM201605261131142289','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016053119091321745','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016053119095614747','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016061522293432114','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016070716582581932','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM201605301601220823','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016053117533734198','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM201605311754289585','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016061522291583556','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM201607191640554356','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016072621183849532','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016072621191012720','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016060810352246577','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016060120403002528','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016060120500199118','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016072621274148584','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016071916521054489','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016070616485217670','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016070616500023641','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016070517594318324','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016070609421892232','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016071916445173570','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016070616513763161','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016070521444120868','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016072621221761420','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016072621251125020','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016072717173285443','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016071916592050818','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016071917180429897','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605252213242734','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605231112056907','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605231117552967','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016053117372557360','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605301033423864','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605251437509349','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016053117472419751','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621350382996','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621353672120','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072821204038331','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605301108533935','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016053119132482172','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621365748281','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016071923435753537','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016080519403084716','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016080519411083716','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016080519414046849','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016070415411295785','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605261041222628','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605261049488614','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016053117501492660','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016053117513968392','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016071916540917953','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201607262131035073','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621313808693','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605301559391040','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605261131142289','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016053119091321745','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016053119095614747','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016061522293432114','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016070716582581932','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605301601220823','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016053117533734198','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201605311754289585','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016061522291583556','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016060810352246577','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016060120403002528','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016060120500199118','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621274148584','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016071916521054489','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016070616485217670','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016070616500023641','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016070517594318324','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016070609421892232','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016071916445173570','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016070616513763161','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016070521444120868','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621221761420','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621251125020','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072717173285443','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016071916592050818','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016071917180429897','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000004','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201605252213242734','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201605301033423864','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201605251437509349','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016053117472419751','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016072821204038331','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016070415411295785','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201605261041222628','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201605261049488614','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016053117501492660','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016053117513968392','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016071916540917953','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201607262131035073','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016072621313808693','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201605301559391040','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201605261131142289','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016053119091321745','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016053119095614747','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016061522293432114','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016070716582581932','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201605301601220823','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016053117533734198','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201605311754289585','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016061522291583556','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM201607191640554356','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016072621183849532','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016072621191012720','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016060810352246577','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016060120403002528','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016060120500199118','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016072621274148584','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016071916521054489','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016070616485217670','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016070616500023641','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016070517594318324','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016070609421892232','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016071916445173570','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016070616513763161','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016070521444120868','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016072621221761420','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016072621251125020','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016072717173285443','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016071916592050818','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016071917180429897','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083010332711065','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083010343691911','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083010595278054','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083016260305147','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083016285487692','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201608301646524475','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083016541960935','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083016544212711','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083016481414027','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083016550904678','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083016552982851','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083016423543331','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083016501523469','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016083016563426838','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016083010332711065','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016083010343691911','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016083010595278054','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000004','SM2016083010332711065','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000004','SM2016083010343691911','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000004','SM2016083010595278054','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016090813555023762','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016090813573571812','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016090813583187563','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016090813592104292','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016090917371974546','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016071923410614051','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016083010332711065','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016083010343691911','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016083010595278054','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016071923410614051','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016072621350382996','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016090916493530439','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016090916495790337','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092111184253216','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201609211120466595','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092111242294491','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092111274061786','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201609211128122953','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201609211129267382','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016092111295304013','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016070415411295785','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM201605261041222628','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM201605261049488614','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016053117501492660','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016053117513968392','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016083010332711065','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016083010343691911','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016083010595278054','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM201605301559391040','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM201605301601220823','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016053117533734198','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM201605311754289585','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016061522291583556','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM201607191640554356','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016072621183849532','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016072621191012720','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016060810352246577','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016060120403002528','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016060120500199118','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016072621274148584','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016071916521054489','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016071916445173570','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016070616513763161','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016070521444120868','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016072621221761420','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016072621251125020','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016072717173285443','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016071916592050818','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016071917180429897','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016071923410614051','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016092111184253216','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM201609211120466595','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016092111250651086','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016092111261398377','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000006','SM2016092919210010516','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000001','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000002','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000003','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000004','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000005','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000006','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000007','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000008','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000009','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000012','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000013','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000014','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000032','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000033','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000034','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000035','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016053119204765024','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016053119211078131','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201605261127248332','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016061418271160796','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201606141829152598','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016060811005690891','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000025','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000026','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000027','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201600001000000028','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201605261134393683','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016053119112110011','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016053119114618395','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201605261135347831','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016053119121398192','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016070416114654566','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016070416043335467','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201607041610073261','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016072515194639977','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016072621382144480','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016072621384945614','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM201607262139122658','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016072515212471978','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016072621394140638','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016072621400005254','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016072621401859392','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016073012331714087','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000000','SM2016073012344968124','admin',now(),NULL);

/*
-- Query: SELECT * FROM jf_std_user.tstd_cnavigate
LIMIT 0, 50000

-- Date: 2016-12-09 14:03
*/
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('1','美食','3',NULL,'http://121.43.101.148:8901/default/1.png','1','1',10,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('10','旅游','3',NULL,'http://121.43.101.148:8901/default/10.png','1','1',1,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('2','KTV','3',NULL,'http://121.43.101.148:8901/default/2.png','1','1',6,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('3','电影','3',NULL,'http://121.43.101.148:8901/default/3.png','1','1',9,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('4','酒店','3',NULL,'http://121.43.101.148:8901/default/4.png','1','1',8,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('5','休闲娱乐','3',NULL,'http://121.43.101.148:8901/default/5.png','1','1',7,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('6','汽车','3',NULL,'http://121.43.101.148:8901/default/6.png','1','1',5,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('7','周边游','3',NULL,'http://121.43.101.148:8901/default/7.png','1','1',4,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('8','足疗按摩','3',NULL,'http://121.43.101.148:8901/default/8.png','1','1',3,'1','0',NULL,NULL,'0');
INSERT INTO `tstd_cnavigate` (`code`,`name`,`type`,`url`,`pic`,`status`,`location`,`order_no`,`belong`,`parent_code`,`remark`,`content_type`,`company_code`) VALUES ('9','生活服务','3',NULL,'http://121.43.101.148:8901/default/9.png','1','1',2,'1','0',NULL,NULL,'0');

/*
-- Query: SELECT code,name,type,url,order_no,updater, now() as update_datetime,remark,parent_code,kind FROM tsys_menu where update_datetime > '2016-12-06 00:00:00'
LIMIT 0, 50000

-- Date: 2016-12-09 14:08
*/
delete from `tsys_menu` where code = 'SM2016083010343691911';
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016083010343691911','积分划转','2','/score','3','admin',now(),'','SM201605261049488614','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120617353247149','订单查询','1','#','8','admin',now(),'','SM201605252213242734','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120617370815641','发货单查询','1','/order/order_query1.htm','1','admin',now(),'','SM2016120617353247149','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120617494143116','详情','2','/detail','1','admin',now(),'','SM2016120617370815641','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120710481357133','积分活动','1','#','3','admin',now(),'','SM2016070415411295785','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120710501099232','送积分','1','/customer/give.htm','1','admin',now(),'','SM2016120710481357133','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM201612071252435466','消费记录查询','2','/record','5','admin',now(),'','SM2016092111242294491','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120713592311655','商家分类管理','1','/vendor/kind.htm','0','admin',now(),'','SM2016120714134921958','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120714134921958','商家分类管理','1','#','0','admin',now(),'','SM2016092111184253216','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120714382123580','新增','2','/add','1','caigo',now(),'','SM2016120713592311655','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120714383998011','修改','2','/edit','2','caigo',now(),'','SM2016120713592311655','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120714385658785','删除','2','/delete','3','caigo',now(),'','SM2016120713592311655','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120817314608245','消费统计','1','#','3','caigo',now(),'','SM2016092111184253216','1');
INSERT INTO `tsys_menu` (`code`,`name`,`type`,`url`,`order_no`,`updater`,`update_datetime`,`remark`,`parent_code`,`kind`) VALUES ('SM2016120817325600113','消费积分统计','1','/vendor/stats.htm','1','caigo',now(),'','SM2016120817314608245','1');

/*
-- Query: SELECT code,name,level,updater,now() as update_datetime,remark FROM jf_std_user.tsys_role where code in ('SR201600000000000007','SR201600000000000008','SR201600000000000009')
LIMIT 0, 50000

-- Date: 2016-12-09 14:14
*/
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','菜狗财务','3','admin',now(),'');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','菜狗运营','2','admin',now(),'');
INSERT INTO `tsys_role` (`code`,`name`,`level`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','菜狗仓管','2','admin',now(),'');

/*
-- Query: SELECT `role_code`,`menu_code`,`updater`,now() as `update_datetime`,`remark` FROM tsys_menu_role where role_code not in('SR201600000000000007','SR201600000000000008','SR201600000000000009') and  menu_code in(SELECT code FROM tsys_menu where update_datetime > '2016-12-06 00:00:00' and code not in('SM2016083010343691911'))
LIMIT 0, 50000

-- Date: 2016-12-09 14:20
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016120710481357133','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000005','SM2016120710501099232','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016120710481357133','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000002','SM2016120710501099232','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120617353247149','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120617370815641','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120617494143116','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120710481357133','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120710501099232','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201612071252435466','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120714134921958','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120713592311655','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120714382123580','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120714383998011','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120714385658785','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120817314608245','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016120817325600113','admin',now(),NULL);

/*
-- Query: SELECT `role_code`,`menu_code`,`updater`,now() as `update_datetime`,`remark` FROM tsys_menu_role where role_code in('SR201600000000000007','SR201600000000000008','SR201600000000000009')
LIMIT 0, 50000

-- Date: 2016-12-10 11:26
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016070415411295785','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM201605261041222628','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM201605261049488614','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016053117501492660','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016053117513968392','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083010332711065','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083010343691911','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083010595278054','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016071916540917953','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM201607262131035073','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016072621313808693','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM201605301559391040','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM201605261131142289','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016053119091321745','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016053119095614747','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016061522293432114','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016070716582581932','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM201605301601220823','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016053117533734198','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM201605311754289585','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016061522291583556','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016060810352246577','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016060120403002528','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016060120500199118','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016072621274148584','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016071916521054489','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016070616485217670','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016070616500023641','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016070517594318324','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016070609421892232','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016071916445173570','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016070616513763161','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016070521444120868','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016072621221761420','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016072621251125020','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016072717173285443','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016071916592050818','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016071917180429897','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016071923410614051','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016120710481357133','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016120710501099232','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083016260305147','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083016285487692','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM201608301646524475','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083016541960935','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083016544212711','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083016481414027','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083016550904678','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083016552982851','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083016423543331','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083016501523469','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016083016563426838','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016090813555023762','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016090917371974546','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016090813573571812','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016090813583187563','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016090916493530439','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016090813592104292','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000007','SM2016090916495790337','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201600001000000001','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016060811005690891','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072515194639977','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072621382144480','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072621384945614','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201607262139122658','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072515212471978','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072621394140638','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072621400005254','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072621401859392','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201605252213242734','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201605231112056907','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201605231117552967','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016053117372557360','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201605301033423864','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201605251437509349','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016053117472419751','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072621350382996','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072621353672120','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072821204038331','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201605301108533935','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016053119132482172','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016072621365748281','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016071923435753537','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016080519403084716','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016080519411083716','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016080519414046849','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016120617353247149','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016120617370815641','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016120617494143116','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016092111184253216','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201609211120466595','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016092111242294491','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016092111274061786','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201609211128122953','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201609211129267382','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016092111295304013','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM201612071252435466','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016120714134921958','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016120713592311655','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016120714382123580','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016120714383998011','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016120714385658785','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016120817314608245','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000008','SM2016120817325600113','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM201600001000000000','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM201605252213242734','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM201605231112056907','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM201605231117552967','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016053117372557360','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM201605301033423864','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM201605251437509349','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016053117472419751','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016072621350382996','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016072621353672120','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016072821204038331','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM201605301108533935','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016053119132482172','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016072621365748281','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016071923435753537','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016080519403084716','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016080519411083716','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016080519414046849','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016120617353247149','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016120617370815641','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000009','SM2016120617494143116','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201600001000000001','admin',now(),NULL);

INSERT INTO `tstd_user` (`user_id`,`login_name`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`updater`,`update_datetime`,`remark`,`pdf`) VALUES ('U201600000000000001-1','cgCw1','21218cca77804d2ba1922c33e0151105','1','01','2','','','','','','21218cca77804d2ba1922c33e0151105','1','SR201600000000000007','0','admin',now(),'管理端系统方',NULL);
INSERT INTO `tstd_user` (`user_id`,`login_name`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`updater`,`update_datetime`,`remark`,`pdf`) VALUES ('U201600000000000001-2','cgCw2','21218cca77804d2ba1922c33e0151105','1','01','2','','','','','','21218cca77804d2ba1922c33e0151105','1','SR201600000000000007','0','admin',now(),'管理端系统方',NULL);
INSERT INTO `tstd_user` (`user_id`,`login_name`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`updater`,`update_datetime`,`remark`,`pdf`) VALUES ('U201600000000000001-3','cgYy1','21218cca77804d2ba1922c33e0151105','1','01','2','','','','','','21218cca77804d2ba1922c33e0151105','1','SR201600000000000008','0','admin',now(),'管理端系统方',NULL);
INSERT INTO `tstd_user` (`user_id`,`login_name`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`updater`,`update_datetime`,`remark`,`pdf`) VALUES ('U201600000000000001-4','cgYy2','21218cca77804d2ba1922c33e0151105','1','01','2','','','','','','21218cca77804d2ba1922c33e0151105','1','SR201600000000000008','0','admin',now(),'管理端系统方',NULL);
INSERT INTO `tstd_user` (`user_id`,`login_name`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`updater`,`update_datetime`,`remark`,`pdf`) VALUES ('U201600000000000001-5','cgCg1','21218cca77804d2ba1922c33e0151105','1','01','2','','','','','','21218cca77804d2ba1922c33e0151105','1','SR201600000000000009','0','admin',now(),'管理端系统方',NULL);
INSERT INTO `tstd_user` (`user_id`,`login_name`,`login_pwd`,`login_pwd_strength`,`kind`,`level`,`user_referee`,`mobile`,`id_kind`,`id_no`,`real_name`,`trade_pwd`,`trade_pwd_strength`,`role_code`,`status`,`updater`,`update_datetime`,`remark`,`pdf`) VALUES ('U201600000000000001-6','cgCg2','21218cca77804d2ba1922c33e0151105','1','01','2','','','','','','21218cca77804d2ba1922c33e0151105','1','SR201600000000000009','0','admin',now(),'管理端系统方',NULL);

/*
-- Query: SELECT `role_code`,`menu_code`,`updater`,now() as `update_datetime`,`remark` FROM tsys_menu_role where menu_code in
('SM2016072621394140638','SM2016072621400005254','SM2016072621401859392','SM2016072621382144480','SM2016072621384945614','SM201607262139122658','SM2016072515194639977','SM2016072515212471978') and role_code = 'SR201600000000000001'
LIMIT 0, 50000

-- Date: 2016-12-09 23:05
*/
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072515194639977','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621382144480','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621384945614','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM201607262139122658','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072515212471978','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621394140638','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621400005254','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016072621401859392','admin',now(),NULL);
INSERT INTO `tsys_menu_role` (`role_code`,`menu_code`,`updater`,`update_datetime`,`remark`) VALUES ('SR201600000000000001','SM2016060811005690891','admin',now(),NULL);

delete from tsys_menu where code = 'SM201607041610073261';
delete from tsys_menu_role where menu_code = 'SM201607041610073261';