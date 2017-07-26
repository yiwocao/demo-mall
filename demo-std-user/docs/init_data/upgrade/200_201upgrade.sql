DROP TABLE IF EXISTS `tstd_account_jour`;

ALTER TABLE `tstd_user` 
DROP COLUMN `lj_amount`,
DROP COLUMN `amount`,
CHANGE COLUMN `nickname` `nickname` VARCHAR(64) CHARACTER SET 'utf8mb4' NULL DEFAULT NULL COMMENT '昵称' ,
CHANGE COLUMN `open_id` `open_id` VARCHAR(255) NULL DEFAULT NULL COMMENT '开放编号(存union_id)' ,
ADD COLUMN `div_rate` DECIMAL(18,8) NULL COMMENT '分成比例' AFTER `role_code`,
ADD COLUMN `create_datetime` DATETIME NULL COMMENT '注册时间' AFTER `jpush_id`;

ALTER TABLE `tsys_config` 
ADD COLUMN `type` VARCHAR(4) NULL COMMENT '类型' AFTER `id`,
ADD COLUMN `company_code` VARCHAR(32) NULL COMMENT '公司编号' AFTER `remark`;

ALTER TABLE `tstd_company` 
ADD COLUMN `status` VARCHAR(4) NULL COMMENT '状态' AFTER `pass_word`;