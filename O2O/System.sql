/*
 Navicat Premium Data Transfer

 Source Server         : mysql-localhost
 Source Server Type    : MySQL
 Source Server Version : 50616
 Source Host           : localhost
 Source Database       : mybatis-plus

 Target Server Type    : MySQL
 Target Server Version : 50616
 File Encoding         : utf-8

 Date: 06/25/2017 20:53:49 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP DATABASE if exists ssm3gwbm;
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
                            `id` bigint(20) NOT NULL COMMENT '用户ID',
                            `name` varchar(50) DEFAULT NULL COMMENT '用户名',
                            `age` int(3) DEFAULT NULL COMMENT '用户年龄',
                            `type` int(1) DEFAULT '0' COMMENT '0、禁用 1、正常, 如果使用tinyint(1)，mysql连接没加tinyInt1isBit=false，默认mysql驱动会把值转成boolean',
                            `ctime` datetime DEFAULT NULL COMMENT '自定义填充的创建时间',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
--  Records of `sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user`(id,name,age,ctime,type) VALUES ('784972358981328902', 'Tom', '24', '2017-06-25 20:53:33', '1');
INSERT INTO `sys_user`(id,name,age,ctime,type) VALUES ('784972358981328903', 'Jammy', '21', '2017-06-25 20:53:37', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS yongjinxinxi;
CREATE TABLE yongjinxinxi(
                             id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT '主键id',
                             mingcheng VARCHAR (50) NOT NULL DEFAULT '' COMMENT '名称',
                             zhanghao VARCHAR (50) NOT NULL DEFAULT '' COMMENT '账号',
                             huishouyuanxingming VARCHAR (50) NOT NULL DEFAULT '' COMMENT '回收员姓名',
                             zongjiage VARCHAR (50) NOT NULL DEFAULT '' COMMENT '总价格',
                             yongjin INT (11) NOT NULL DEFAULT -1 COMMENT '佣金',
                             riqi DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '日期',
                             beizhu VARCHAR (50) NOT NULL DEFAULT '' COMMENT '备注',
                             ispay VARCHAR (50) NOT NULL DEFAULT '' COMMENT '是否支付',
                             addtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'addtime',
                             PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'yongjinxinxi';

-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS yonghu;
CREATE TABLE yonghu(
                       id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT '主键id',
                       yonghuming VARCHAR (50) NOT NULL DEFAULT '' COMMENT '用户名',
                       mima VARCHAR (50) NOT NULL DEFAULT '' COMMENT '密码',
                       xingming VARCHAR (50) NOT NULL DEFAULT '' COMMENT '姓名',
                       xingbie VARCHAR (50) NOT NULL DEFAULT '' COMMENT '性别',
                       touxiang VARCHAR (50) NOT NULL DEFAULT '' COMMENT '头像',
                       shouji VARCHAR (50) NOT NULL DEFAULT '' COMMENT '手机',
                       addtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'addtime',
                       PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'yonghu';
-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS users;
CREATE TABLE users(
                      id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT 'id',
                      username VARCHAR (50) NOT NULL DEFAULT '' COMMENT '用户账号',
                      `password` VARCHAR (50) NOT NULL DEFAULT '' COMMENT '密码',
                      `role` VARCHAR (50) NOT NULL DEFAULT '' COMMENT '用户类型',
                      addtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'addtime',
                      PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'users';
-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS token;
CREATE TABLE token(
                      id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT 'id',
                      userid BIGINT (15) NOT NULL DEFAULT -1 COMMENT '用户id',
                      username VARCHAR (50) NOT NULL DEFAULT '' COMMENT '用户名',
                      tablename VARCHAR (50) NOT NULL DEFAULT '' COMMENT '表名',
                      `role` VARCHAR (50) NOT NULL DEFAULT '' COMMENT '角色',
                      token VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'token',
                      expiratedtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '过期时间',
                      addtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '新增时间',
                      PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'token';
-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS shangpinxinxi;
CREATE TABLE shangpinxinxi(
                              id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT '主键id',
                              shangpinmingcheng VARCHAR (50) NOT NULL DEFAULT '' COMMENT '商品名称',
                              shangpinleixing VARCHAR (50) NOT NULL DEFAULT '' COMMENT '商品类型',
                              tupian VARCHAR (50) NOT NULL DEFAULT '' COMMENT '图片',
                              danjia INT (11) NOT NULL DEFAULT -1 COMMENT '单价',
                              quyu VARCHAR (50) NOT NULL DEFAULT '' COMMENT '区域',
                              faburiqi DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '发布日期',
                              shangpinmiaoshu VARCHAR (50) NOT NULL DEFAULT '' COMMENT '商品描述',
                              addtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'addtime',
                              PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'shangpinxinxi';
-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS shangpinleixing;
CREATE TABLE shangpinleixing(
                                id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT '主键id',
                                shangpinleixing VARCHAR (50) NOT NULL DEFAULT '' COMMENT '商品类型',
                                addtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'addtime',
                                PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'shangpinleixing';
-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS news;
CREATE TABLE news(
                     id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT '主键id',
                     title VARCHAR (50) NOT NULL DEFAULT '' COMMENT '标题',
                     introduction VARCHAR (50) NOT NULL DEFAULT '' COMMENT '简介',
                     picture VARCHAR (50) NOT NULL DEFAULT '' COMMENT '图片',
                     content VARCHAR (50) NOT NULL DEFAULT '' COMMENT '内容',
                     addtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'addtime',
                     PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'news';
-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS jiedanxinxi;
CREATE TABLE jiedanxinxi(
                            id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT '主键id',
                            dingdanbianhao VARCHAR (50) NOT NULL DEFAULT '' COMMENT '订单编号',
                            shangpinmingcheng VARCHAR (50) NOT NULL DEFAULT '' COMMENT '商品名称',
                            shangpinleixing VARCHAR (50) NOT NULL DEFAULT '' COMMENT '商品类型',
                            quyu VARCHAR (50) NOT NULL DEFAULT '' COMMENT '区域',
                            danjia VARCHAR (50) NOT NULL DEFAULT '' COMMENT '单价',
                            huishouzhongliang INT (11) NOT NULL DEFAULT -1 COMMENT '回收重量',
                            zongjiage VARCHAR (50) NOT NULL DEFAULT '' COMMENT '总价格',
                            yonghuming VARCHAR (50) NOT NULL DEFAULT '' COMMENT '用户名',
                            xingming VARCHAR (50) NOT NULL DEFAULT '' COMMENT '姓名',
                            dizhi VARCHAR (50) NOT NULL DEFAULT '' COMMENT '地址',
                            shouji VARCHAR (50) NOT NULL DEFAULT '' COMMENT '手机',
                            yuyueneirong VARCHAR (50) NOT NULL DEFAULT '' COMMENT '预约内容',
                            yuyueriqi DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '预约日期',
                            shangmenshijian VARCHAR (50) NOT NULL DEFAULT '' COMMENT '上门时间',
                            zhanghao VARCHAR (50) NOT NULL DEFAULT '' COMMENT '账号',
                            huishouyuanxingming VARCHAR (50) NOT NULL DEFAULT '' COMMENT '回收员姓名',
                            sfsh VARCHAR (50) NOT NULL DEFAULT '' COMMENT '是否审核',
                            shhf VARCHAR (50) NOT NULL DEFAULT '' COMMENT '审核回复',
                            ispay VARCHAR (50) NOT NULL DEFAULT '' COMMENT '是否支付',
                            addtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'addtime',
                            PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'jiedanxinxi';
-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS huishouyuan;
CREATE TABLE huishouyuan(
                            id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT '主键id',
                            zhanghao VARCHAR (50) NOT NULL DEFAULT '' COMMENT '账号',
                            mima VARCHAR (50) NOT NULL DEFAULT '' COMMENT '密码',
                            huishouyuanxingming VARCHAR (50) NOT NULL DEFAULT '' COMMENT '回收员姓名',
                            xingbie VARCHAR (50) NOT NULL DEFAULT '' COMMENT '性别',
                            touxiang VARCHAR (50) NOT NULL DEFAULT '' COMMENT '头像',
                            shouji VARCHAR (50) NOT NULL DEFAULT '' COMMENT '手机',
                            fuzediqu VARCHAR (50) NOT NULL DEFAULT '' COMMENT '负责地区',
                            addtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'addtime',
                            PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'huishouyuan';
-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS dingdanxinxi;
CREATE TABLE dingdanxinxi(
                             id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT '主键id',
                             dingdanbianhao VARCHAR (50) NOT NULL DEFAULT '' COMMENT '订单编号',
                             shangpinmingcheng VARCHAR (50) NOT NULL DEFAULT '' COMMENT '商品名称',
                             shangpinleixing VARCHAR (50) NOT NULL DEFAULT '' COMMENT '商品类型',
                             danjia VARCHAR (50) NOT NULL DEFAULT '' COMMENT '单价',
                             quyu VARCHAR (50) NOT NULL DEFAULT '' COMMENT '区域',
                             riqi DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '日期',
                             neirong VARCHAR (50) NOT NULL DEFAULT '' COMMENT '内容',
                             yonghuming VARCHAR (50) NOT NULL DEFAULT '' COMMENT '用户名',
                             xingming VARCHAR (50) NOT NULL DEFAULT '' COMMENT '姓名',
                             shouji VARCHAR (50) NOT NULL DEFAULT '' COMMENT '手机',
                             dizhi VARCHAR (50) NOT NULL DEFAULT '' COMMENT '地址',
                             sfsh VARCHAR (50) NOT NULL DEFAULT '' COMMENT '是否审核',
                             shhf VARCHAR (50) NOT NULL DEFAULT '' COMMENT '审核回复',
                             addtime DATETIME NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT 'addtime',
                             PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'dingdanxinxi';
-- auto Generated on 2024-04-03
-- DROP TABLE IF EXISTS config;
CREATE TABLE config(
                       id BIGINT (15) NOT NULL AUTO_INCREMENT COMMENT 'id',
                       `name` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'key',
                       `value` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'value',
                       PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'config';
