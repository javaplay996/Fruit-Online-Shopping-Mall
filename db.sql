/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm9lg0k
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm9lg0k` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm9lg0k`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493093562 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-27 10:58:52',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-27 10:58:52',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-27 10:58:52',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-27 10:58:52',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-27 10:58:52',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-27 10:58:52',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619493093561,'2021-04-27 11:11:33',1619493054393,'广东省揭阳市榕城区中山街道北门小学','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shuiguoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493201997 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493234108 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (81,'2021-04-27 10:58:52',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (82,'2021-04-27 10:58:52',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (83,'2021-04-27 10:58:52',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (84,'2021-04-27 10:58:52',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (85,'2021-04-27 10:58:52',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (86,'2021-04-27 10:58:52',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619493196528,'2021-04-27 11:13:15',1619493054393,NULL,'现在下单什么时候发货',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619493234107,'2021-04-27 11:13:53',1619493054393,1,NULL,'今天',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm9lg0k/upload/1619492977340.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm9lg0k/upload/1619492986457.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm9lg0k/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `dingdanpingjia` */

DROP TABLE IF EXISTS `dingdanpingjia`;

CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shuiguomingcheng` varchar(200) DEFAULT NULL COMMENT '水果名称',
  `shuiguofenlei` varchar(200) DEFAULT NULL COMMENT '水果分类',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493363406 DEFAULT CHARSET=utf8 COMMENT='订单评价';

/*Data for the table `dingdanpingjia` */

insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shuiguomingcheng`,`shuiguofenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (71,'2021-04-27 10:58:52','订单编号1','水果名称1','水果分类1','1','http://localhost:8080/ssm9lg0k/upload/1619492595496.jpg','评价内容1','2021-04-27','用户名1','手机1','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shuiguomingcheng`,`shuiguofenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (72,'2021-04-27 10:58:52','订单编号2','水果名称2','水果分类2','1','http://localhost:8080/ssm9lg0k/upload/1619492624344.jpg','评价内容2','2021-04-27','用户名2','手机2','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shuiguomingcheng`,`shuiguofenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (73,'2021-04-27 10:58:52','订单编号3','水果名称3','水果分类3','1','http://localhost:8080/ssm9lg0k/upload/1619492611022.jpg','评价内容3','2021-04-27','用户名3','手机3','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shuiguomingcheng`,`shuiguofenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (74,'2021-04-27 10:58:52','订单编号4','水果名称4','水果分类4','1','http://localhost:8080/ssm9lg0k/upload/dingdanpingjia_tianjiatupian4.jpg','评价内容4','2021-04-27','用户名4','手机4','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shuiguomingcheng`,`shuiguofenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (75,'2021-04-27 10:58:52','订单编号5','水果名称5','水果分类5','1','http://localhost:8080/ssm9lg0k/upload/dingdanpingjia_tianjiatupian5.jpg','评价内容5','2021-04-27','用户名5','手机5','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shuiguomingcheng`,`shuiguofenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (76,'2021-04-27 10:58:52','订单编号6','水果名称6','水果分类6','1','http://localhost:8080/ssm9lg0k/upload/1619492637421.jpg','评价内容6','2021-04-27','用户名6','手机6','是','');
insert  into `dingdanpingjia`(`id`,`addtime`,`dingdanbianhao`,`shuiguomingcheng`,`shuiguofenlei`,`pingfen`,`tianjiatupian`,`pingjianeirong`,`pingjiariqi`,`yonghuming`,`shouji`,`sfsh`,`shhf`) values (1619493363405,'2021-04-27 11:16:03','202142711132839362105','广西红心芭乐','当季爆款','5','http://localhost:8080/ssm9lg0k/upload/1619493350873.jpg','配送很快，芭乐很好吃','2021-04-27','2','12312312312','是','感谢支持');

/*Table structure for table `discussshuiguoxinxi` */

DROP TABLE IF EXISTS `discussshuiguoxinxi`;

CREATE TABLE `discussshuiguoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='水果信息评论表';

/*Data for the table `discussshuiguoxinxi` */

insert  into `discussshuiguoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-27 10:58:52',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshuiguoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (142,'2021-04-27 10:58:52',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshuiguoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (143,'2021-04-27 10:58:52',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshuiguoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (144,'2021-04-27 10:58:52',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshuiguoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (145,'2021-04-27 10:58:52',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshuiguoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (146,'2021-04-27 10:58:52',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gongyingshangdizhi` varchar(200) DEFAULT NULL COMMENT '供应商地址',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyingshangbianhao` (`gongyingshangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619492819943 DEFAULT CHARSET=utf8 COMMENT='供应商';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (21,'2021-04-27 10:58:52','供应商编号1','供应商名称1','联系人1','13823888881','供应商地址1','备注1');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (22,'2021-04-27 10:58:52','供应商编号2','供应商名称2','联系人2','13823888882','供应商地址2','备注2');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (23,'2021-04-27 10:58:52','供应商编号3','供应商名称3','联系人3','13823888883','供应商地址3','备注3');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (24,'2021-04-27 10:58:52','供应商编号4','供应商名称4','联系人4','13823888884','供应商地址4','备注4');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (25,'2021-04-27 10:58:52','供应商编号5','供应商名称5','联系人5','13823888885','供应商地址5','备注5');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (26,'2021-04-27 10:58:52','供应商编号6','供应商名称6','联系人6','13823888886','供应商地址6','备注6');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (1619492819942,'2021-04-27 11:06:59','1619492789401','鲜果汇','陈明','12345678941','梅州新县城','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493032071 DEFAULT CHARSET=utf8 COMMENT='水果资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (131,'2021-04-27 10:58:52','标题1','简介1','http://localhost:8080/ssm9lg0k/upload/1619492674230.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (132,'2021-04-27 10:58:52','标题2','简介2','http://localhost:8080/ssm9lg0k/upload/1619492681427.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (133,'2021-04-27 10:58:52','标题3','简介3','http://localhost:8080/ssm9lg0k/upload/1619492689081.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (134,'2021-04-27 10:58:52','标题4','简介4','http://localhost:8080/ssm9lg0k/upload/1619492696752.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (135,'2021-04-27 10:58:52','标题5','简介5','http://localhost:8080/ssm9lg0k/upload/1619492706013.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (136,'2021-04-27 10:58:52','标题6','简介6','http://localhost:8080/ssm9lg0k/upload/1619492720864.jpg','<p>内容6</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619493032070,'2021-04-27 11:10:31','水果优惠活动','水果优惠','http://localhost:8080/ssm9lg0k/upload/1619493008164.jpg','<p>全场水果参与优惠活动，具体详见商品详情页</p><p><img src=\"http://localhost:8080/ssm9lg0k/upload/1619493030311.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shuiguoxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493209901 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619493209900,'2021-04-27 11:13:29','202142711132839362105','shuiguoxinxi',1619493054393,1619492871883,'广西红心芭乐','http://localhost:8080/ssm9lg0k/upload/1619492855664.jpg',4,49,49,196,196,1,'已完成','广东省揭阳市榕城区中山街道北门小学','12312312312','陈一');

/*Table structure for table `shuiguofenlei` */

DROP TABLE IF EXISTS `shuiguofenlei`;

CREATE TABLE `shuiguofenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shuiguofenlei` varchar(200) NOT NULL COMMENT '水果分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shuiguofenlei` (`shuiguofenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619492843802 DEFAULT CHARSET=utf8 COMMENT='水果分类';

/*Data for the table `shuiguofenlei` */

insert  into `shuiguofenlei`(`id`,`addtime`,`shuiguofenlei`) values (31,'2021-04-27 10:58:52','水果分类1');
insert  into `shuiguofenlei`(`id`,`addtime`,`shuiguofenlei`) values (32,'2021-04-27 10:58:52','水果分类2');
insert  into `shuiguofenlei`(`id`,`addtime`,`shuiguofenlei`) values (33,'2021-04-27 10:58:52','水果分类3');
insert  into `shuiguofenlei`(`id`,`addtime`,`shuiguofenlei`) values (34,'2021-04-27 10:58:52','水果分类4');
insert  into `shuiguofenlei`(`id`,`addtime`,`shuiguofenlei`) values (35,'2021-04-27 10:58:52','水果分类5');
insert  into `shuiguofenlei`(`id`,`addtime`,`shuiguofenlei`) values (36,'2021-04-27 10:58:52','水果分类6');
insert  into `shuiguofenlei`(`id`,`addtime`,`shuiguofenlei`) values (1619492837466,'2021-04-27 11:07:16','当季爆款');
insert  into `shuiguofenlei`(`id`,`addtime`,`shuiguofenlei`) values (1619492843801,'2021-04-27 11:07:23','进口鲜果');

/*Table structure for table `shuiguojinhuo` */

DROP TABLE IF EXISTS `shuiguojinhuo`;

CREATE TABLE `shuiguojinhuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jinhuodanhao` varchar(200) DEFAULT NULL COMMENT '进货单号',
  `shuiguomingcheng` varchar(200) DEFAULT NULL COMMENT '水果名称',
  `shuiguofenlei` varchar(200) DEFAULT NULL COMMENT '水果分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `jinhuojia` int(11) DEFAULT NULL COMMENT '进货价',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jinhuodanhao` (`jinhuodanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619492935047 DEFAULT CHARSET=utf8 COMMENT='水果进货';

/*Data for the table `shuiguojinhuo` */

insert  into `shuiguojinhuo`(`id`,`addtime`,`jinhuodanhao`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`shuliang`,`jinhuojia`,`zongjine`,`beizhu`,`dengjiriqi`,`gongyingshangbianhao`,`gongyingshangmingcheng`) values (51,'2021-04-27 10:58:52','进货单号1','水果名称1','水果分类1','http://localhost:8080/ssm9lg0k/upload/shuiguojinhuo_tupian1.jpg','规格1',1,1,1,'备注1','2021-04-27','供应商编号1','供应商名称1');
insert  into `shuiguojinhuo`(`id`,`addtime`,`jinhuodanhao`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`shuliang`,`jinhuojia`,`zongjine`,`beizhu`,`dengjiriqi`,`gongyingshangbianhao`,`gongyingshangmingcheng`) values (52,'2021-04-27 10:58:52','进货单号2','水果名称2','水果分类2','http://localhost:8080/ssm9lg0k/upload/shuiguojinhuo_tupian2.jpg','规格2',2,2,2,'备注2','2021-04-27','供应商编号2','供应商名称2');
insert  into `shuiguojinhuo`(`id`,`addtime`,`jinhuodanhao`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`shuliang`,`jinhuojia`,`zongjine`,`beizhu`,`dengjiriqi`,`gongyingshangbianhao`,`gongyingshangmingcheng`) values (53,'2021-04-27 10:58:52','进货单号3','水果名称3','水果分类3','http://localhost:8080/ssm9lg0k/upload/1619492569660.jpg','规格3',3,3,9,'备注3','2021-04-27','供应商编号3','供应商名称3');
insert  into `shuiguojinhuo`(`id`,`addtime`,`jinhuodanhao`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`shuliang`,`jinhuojia`,`zongjine`,`beizhu`,`dengjiriqi`,`gongyingshangbianhao`,`gongyingshangmingcheng`) values (54,'2021-04-27 10:58:52','进货单号4','水果名称4','水果分类4','http://localhost:8080/ssm9lg0k/upload/shuiguojinhuo_tupian4.jpg','规格4',4,4,4,'备注4','2021-04-27','供应商编号4','供应商名称4');
insert  into `shuiguojinhuo`(`id`,`addtime`,`jinhuodanhao`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`shuliang`,`jinhuojia`,`zongjine`,`beizhu`,`dengjiriqi`,`gongyingshangbianhao`,`gongyingshangmingcheng`) values (55,'2021-04-27 10:58:52','进货单号5','水果名称5','水果分类5','http://localhost:8080/ssm9lg0k/upload/shuiguojinhuo_tupian5.jpg','规格5',5,5,5,'备注5','2021-04-27','供应商编号5','供应商名称5');
insert  into `shuiguojinhuo`(`id`,`addtime`,`jinhuodanhao`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`shuliang`,`jinhuojia`,`zongjine`,`beizhu`,`dengjiriqi`,`gongyingshangbianhao`,`gongyingshangmingcheng`) values (56,'2021-04-27 10:58:52','进货单号6','水果名称6','水果分类6','http://localhost:8080/ssm9lg0k/upload/shuiguojinhuo_tupian6.jpg','规格6',6,6,6,'备注6','2021-04-27','供应商编号6','供应商名称6');
insert  into `shuiguojinhuo`(`id`,`addtime`,`jinhuodanhao`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`shuliang`,`jinhuojia`,`zongjine`,`beizhu`,`dengjiriqi`,`gongyingshangbianhao`,`gongyingshangmingcheng`) values (1619492935046,'2021-04-27 11:08:54','1619492923929','广西红心芭乐','当季爆款','http://localhost:8080/ssm9lg0k/upload/1619492855664.jpg','5kg',30,30,900,'','2021-04-27','1619492789401','鲜果汇');

/*Table structure for table `shuiguoxinxi` */

DROP TABLE IF EXISTS `shuiguoxinxi`;

CREATE TABLE `shuiguoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shuiguomingcheng` varchar(200) NOT NULL COMMENT '水果名称',
  `shuiguofenlei` varchar(200) NOT NULL COMMENT '水果分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shuiguoxiangqing` longtext COMMENT '水果详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619492871884 DEFAULT CHARSET=utf8 COMMENT='水果信息';

/*Data for the table `shuiguoxinxi` */

insert  into `shuiguoxinxi`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`chandi`,`shuliang`,`shuiguoxiangqing`,`clicktime`,`clicknum`,`price`) values (41,'2021-04-27 10:58:52','水果名称1','水果分类1','http://localhost:8080/ssm9lg0k/upload/1619492514007.jpg','规格1','产地1',1,'<p>水果详情1</p>','2021-05-04 16:04:23',3,99.9);
insert  into `shuiguoxinxi`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`chandi`,`shuliang`,`shuiguoxiangqing`,`clicktime`,`clicknum`,`price`) values (42,'2021-04-27 10:58:52','水果名称2','水果分类2','http://localhost:8080/ssm9lg0k/upload/1619492522052.jpg','规格2','产地2',2,'<p>水果详情2</p>','2021-04-27 11:13:21',4,99.9);
insert  into `shuiguoxinxi`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`chandi`,`shuliang`,`shuiguoxiangqing`,`clicktime`,`clicknum`,`price`) values (43,'2021-04-27 10:58:52','水果名称3','水果分类3','http://localhost:8080/ssm9lg0k/upload/1619492530323.jpg','规格3','产地3',3,'<p>水果详情3</p>','2021-04-27 11:11:00',8,99.9);
insert  into `shuiguoxinxi`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`chandi`,`shuliang`,`shuiguoxiangqing`,`clicktime`,`clicknum`,`price`) values (44,'2021-04-27 10:58:52','水果名称4','水果分类4','http://localhost:8080/ssm9lg0k/upload/1619492538721.jpg','规格4','产地4',4,'<p>水果详情4</p>','2021-04-27 11:02:14',5,99.9);
insert  into `shuiguoxinxi`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`chandi`,`shuliang`,`shuiguoxiangqing`,`clicktime`,`clicknum`,`price`) values (45,'2021-04-27 10:58:52','水果名称5','水果分类5','http://localhost:8080/ssm9lg0k/upload/1619492551831.jpg','规格5','产地5',5,'<p>水果详情5</p>','2021-04-27 11:02:22',6,99.9);
insert  into `shuiguoxinxi`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`chandi`,`shuliang`,`shuiguoxiangqing`,`clicktime`,`clicknum`,`price`) values (46,'2021-04-27 10:58:52','水果名称6','水果分类6','http://localhost:8080/ssm9lg0k/upload/1619492561852.jpg','规格6','产地6',6,'<p>水果详情6</p>','2021-04-27 11:13:00',16,99.9);
insert  into `shuiguoxinxi`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`chandi`,`shuliang`,`shuiguoxiangqing`,`clicktime`,`clicknum`,`price`) values (1619492871883,'2021-04-27 11:07:51','广西红心芭乐','当季爆款','http://localhost:8080/ssm9lg0k/upload/1619492855664.jpg','5kg','广西',76,'<p>水果介绍</p><p><img src=\"http://localhost:8080/ssm9lg0k/upload/1619492870227.jpg\"></p>','2021-05-04 16:04:10',8,49);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493176242 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','woxqmi8dzof9mx6c4jsxd80osgd8xl3h','2021-04-27 11:00:09','2021-05-04 17:04:19');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619493054393,'2','yonghu','用户','pde063h8r7mnctetqyqz6jkfg5l83bng','2021-04-27 11:10:59','2021-04-27 12:15:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-27 10:58:52');

/*Table structure for table `xiaoshoutongji` */

DROP TABLE IF EXISTS `xiaoshoutongji`;

CREATE TABLE `xiaoshoutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shuiguomingcheng` varchar(200) DEFAULT NULL COMMENT '水果名称',
  `shuiguofenlei` varchar(200) DEFAULT NULL COMMENT '水果分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493258952 DEFAULT CHARSET=utf8 COMMENT='销售统计';

/*Data for the table `xiaoshoutongji` */

insert  into `xiaoshoutongji`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`jiage`,`shuliang`,`zongjine`,`riqi`,`beizhu`) values (61,'2021-04-27 10:58:52','水果名称1','水果分类1','http://localhost:8080/ssm9lg0k/upload/xiaoshoutongji_tupian1.jpg','规格1',1,1,1,'2021-04-27','备注1');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`jiage`,`shuliang`,`zongjine`,`riqi`,`beizhu`) values (62,'2021-04-27 10:58:52','水果名称2','水果分类2','http://localhost:8080/ssm9lg0k/upload/xiaoshoutongji_tupian2.jpg','规格2',2,2,2,'2021-04-27','备注2');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`jiage`,`shuliang`,`zongjine`,`riqi`,`beizhu`) values (63,'2021-04-27 10:58:52','水果名称3','水果分类3','http://localhost:8080/ssm9lg0k/upload/1619492578421.jpg','规格3',3,3,9,'2021-04-27','备注3');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`jiage`,`shuliang`,`zongjine`,`riqi`,`beizhu`) values (64,'2021-04-27 10:58:52','水果名称4','水果分类4','http://localhost:8080/ssm9lg0k/upload/xiaoshoutongji_tupian4.jpg','规格4',4,4,4,'2021-04-27','备注4');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`jiage`,`shuliang`,`zongjine`,`riqi`,`beizhu`) values (65,'2021-04-27 10:58:52','水果名称5','水果分类5','http://localhost:8080/ssm9lg0k/upload/xiaoshoutongji_tupian5.jpg','规格5',5,5,5,'2021-04-27','备注5');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`jiage`,`shuliang`,`zongjine`,`riqi`,`beizhu`) values (66,'2021-04-27 10:58:52','水果名称6','水果分类6','http://localhost:8080/ssm9lg0k/upload/1619492586944.jpg','规格6',6,6,36,'2021-04-27','备注6');
insert  into `xiaoshoutongji`(`id`,`addtime`,`shuiguomingcheng`,`shuiguofenlei`,`tupian`,`guige`,`jiage`,`shuliang`,`zongjine`,`riqi`,`beizhu`) values (1619493258951,'2021-04-27 11:14:18','广西红心芭乐','当季爆款','http://localhost:8080/ssm9lg0k/upload/1619492855664.jpg','5kg',49,4,196,'2021-04-27','销售出库');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619493054394 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`money`) values (11,'2021-04-27 10:58:51','用户1','123456','姓名1','http://localhost:8080/ssm9lg0k/upload/yonghu_touxiang1.jpg','男','13823888881',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`money`) values (12,'2021-04-27 10:58:51','用户2','123456','姓名2','http://localhost:8080/ssm9lg0k/upload/yonghu_touxiang2.jpg','男','13823888882',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`money`) values (13,'2021-04-27 10:58:51','用户3','123456','姓名3','http://localhost:8080/ssm9lg0k/upload/yonghu_touxiang3.jpg','男','13823888883',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`money`) values (14,'2021-04-27 10:58:51','用户4','123456','姓名4','http://localhost:8080/ssm9lg0k/upload/yonghu_touxiang4.jpg','男','13823888884',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`money`) values (15,'2021-04-27 10:58:52','用户5','123456','姓名5','http://localhost:8080/ssm9lg0k/upload/yonghu_touxiang5.jpg','男','13823888885',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`money`) values (16,'2021-04-27 10:58:52','用户6','123456','姓名6','http://localhost:8080/ssm9lg0k/upload/yonghu_touxiang6.jpg','男','13823888886',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`shouji`,`money`) values (1619493054393,'2021-04-27 11:10:54','2','22','陈一','http://localhost:8080/ssm9lg0k/upload/1619493068038.jpg','女','12312312312',1804);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
