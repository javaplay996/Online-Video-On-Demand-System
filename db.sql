/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zaixianshipindianbo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zaixianshipindianbo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zaixianshipindianbo`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/zaixianshipindianbo/upload/1617604143670.jpg'),(2,'picture2','http://localhost:8080/zaixianshipindianbo/upload/1617604152327.jpg'),(3,'picture3','http://localhost:8080/zaixianshipindianbo/upload/1617604160410.jpg'),(6,'homepage','http://localhost:8080/zaixianshipindianbo/upload/1617604168199.jpg');

/*Table structure for table `dianying` */

DROP TABLE IF EXISTS `dianying`;

CREATE TABLE `dianying` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_name` varchar(255) DEFAULT NULL COMMENT '电影名称 Search111',
  `dianying_zhuyan` varchar(255) DEFAULT NULL COMMENT '电影主演',
  `dianying_photo` varchar(255) DEFAULT NULL COMMENT '电影海报',
  `dianying_video` varchar(255) DEFAULT NULL COMMENT '电影',
  `voting` int(255) DEFAULT '0' COMMENT '票数',
  `leix_types` int(11) DEFAULT NULL COMMENT '电影类型名称 Search111',
  `dianying_content` text COMMENT '项目具体内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='电影';

/*Data for the table `dianying` */

insert  into `dianying`(`id`,`dianying_name`,`dianying_zhuyan`,`dianying_photo`,`dianying_video`,`voting`,`leix_types`,`dianying_content`,`create_time`) values (1,'电影名称1','电影主演1','http://localhost:8080/zaixianshipindianbo/file/download?fileName=1617603351822.jpg','http://localhost:8080/zaixianshipindianbo/file/download?fileName=1620791136263.mp4',2,2,'项目具体内容1\r\n','2021-05-12 14:15:57'),(2,'电影名称2','电影主演2','http://localhost:8080/zaixianshipindianbo/file/download?fileName=1617627082692.jpg','http://localhost:8080/zaixianshipindianbo/file/download?fileName=1620791125420.mp4',1,1,'项目具体内容2\r\n','2021-05-12 20:51:29'),(3,'蜡笔小新','小新','http://localhost:8080/zaixianshipindianbo/file/download?fileName=1617629594882.jpg','http://localhost:8080/zaixianshipindianbo/file/download?fileName=1620791115699.mp4',2,4,'项目具体内容1223\r\n','2021-05-12 21:33:29'),(4,'柯南','柯南','http://localhost:8080/zaixianshipindianbo/file/download?fileName=1620800009885.jpg','http://localhost:8080/zaixianshipindianbo/file/download?fileName=1620800014269.mp4',1,3,'项目具体内容1\r\n','2021-05-12 14:13:50');

/*Table structure for table `dianying_collection` */

DROP TABLE IF EXISTS `dianying_collection`;

CREATE TABLE `dianying_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '电影id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='电影收藏';

/*Data for the table `dianying_collection` */

insert  into `dianying_collection`(`id`,`dianying_id`,`yonghu_id`,`insert_time`,`create_time`) values (3,3,3,'2021-05-12 14:19:24','2021-05-12 14:19:24'),(4,4,1,'2021-05-12 14:35:42','2021-05-12 14:35:42'),(5,1,1,'2021-05-12 14:35:47','2021-05-12 14:35:47');

/*Table structure for table `dianying_commentback` */

DROP TABLE IF EXISTS `dianying_commentback`;

CREATE TABLE `dianying_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '评论电影',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '评论人',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `dianying_commentback_content` text COMMENT '评论内容',
  `commentback_types` int(11) DEFAULT NULL COMMENT '类型',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='电影评论';

/*Data for the table `dianying_commentback` */

insert  into `dianying_commentback`(`id`,`dianying_id`,`yonghu_id`,`insert_time`,`dianying_commentback_content`,`commentback_types`,`create_time`) values (1,1,1,'2021-05-12 14:58:18','评论内容1评论内容1\r\n',1,'2021-05-12 14:58:18'),(4,1,1,'2021-05-12 18:29:19','回复1回复1',2,'2021-05-12 18:29:33'),(5,1,1,'2021-05-12 14:58:18','评论内容2评论内容2\r\n',1,'2021-05-12 14:58:18'),(6,5,1,'2021-05-12 18:29:19','回复2回复2',2,'2021-05-12 18:29:33'),(7,5,1,'2021-05-12 18:29:19','回复2.1回复2.1',2,'2021-05-12 18:29:33'),(11,5,1,'2021-05-12 20:29:32','123123',2,'2021-05-12 20:29:32'),(12,1,1,'2021-05-12 20:29:44','1231',2,'2021-05-12 20:29:44'),(13,5,2,'2021-05-12 20:32:28','123123',2,'2021-05-12 20:32:28'),(14,2,2,'2021-05-12 21:14:14','评论内容',1,'2021-05-12 21:14:14'),(16,14,2,'2021-05-12 21:20:06','我是回复',2,'2021-05-12 21:20:06'),(17,2,1,'2021-05-12 21:20:36','这电影还不错',1,'2021-05-12 21:20:36'),(19,14,1,'2021-05-12 21:20:57','123',2,'2021-05-12 21:20:57'),(20,3,1,'2021-05-12 21:37:26','蜡笔小新很不错',1,'2021-05-12 21:37:26'),(21,20,2,'2021-05-12 21:39:26','赞同',2,'2021-05-12 21:39:26'),(22,3,1,'2021-05-12 13:21:47','123',1,'2021-05-12 13:21:47'),(23,20,1,'2021-05-12 13:28:19','赞同',2,'2021-05-12 13:28:19'),(24,2,3,'2021-05-12 14:36:18','这个视频挺不错\n',1,'2021-05-12 14:36:18'),(25,4,1,'2021-05-12 14:47:49','111111',1,'2021-05-12 14:47:49'),(26,25,3,'2021-05-12 14:48:22','22222222',2,'2021-05-12 14:48:22'),(27,4,3,'2021-05-12 14:48:31','112312312',1,'2021-05-12 14:48:31');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-12 13:53:07'),(2,'sex_types','性别',2,'女',NULL,'2021-05-12 13:53:07'),(3,'commentback_types','类型',1,'评论',NULL,'2021-05-12 13:53:07'),(4,'commentback_types','类型',2,'回复',NULL,'2021-05-12 13:53:07'),(5,'leix_types','电影类型名称',1,'恐怖',NULL,'2021-05-12 13:53:07'),(6,'leix_types','电影类型名称',2,'喜剧',NULL,'2021-05-12 13:53:07'),(7,'leix_types','电影类型名称',3,'爱情',NULL,'2021-05-12 13:53:07'),(8,'news_types','动态类型名称',1,'日常动态',NULL,'2021-05-12 13:53:07'),(9,'news_types','动态类型名称',2,'娱乐动态',NULL,'2021-05-12 13:53:07'),(10,'leix_types','电影类型名称',4,'动画',NULL,'2021-05-12 21:34:34');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` int(20) DEFAULT NULL COMMENT '父节点id',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '动态名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '动态类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '动态图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '动态时间',
  `news_content` text COMMENT '动态详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='电影动态';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'动态1',2,'http://localhost:8080/zaixianshipindianbo/file/download?fileName=1617606243381.jpg','2021-05-12 15:04:06','动态详情1\r\n','2021-05-12 15:04:06'),(2,'动态2',2,'http://localhost:8080/zaixianshipindianbo/file/download?fileName=1617606296001.jpg','2021-05-12 15:04:59','动态详情2\r\n','2021-05-12 15:04:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1,'111','yonghu','用户','y286onr7095se3h11e44y2eay1uhr12y','2021-05-12 14:30:33','2021-05-12 15:46:57'),(6,3,'123','yonghu','用户','3ovk99oggki7ngjt5txphzf24112di35','2021-05-12 14:35:58','2021-05-12 15:48:02'),(7,1,'admin','users','管理员','t2zh7e54anttj9z0a6az2brabjx27xyi','2021-05-12 15:05:20','2021-05-12 16:05:20');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `voting` */

DROP TABLE IF EXISTS `voting`;

CREATE TABLE `voting` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dianying_id` int(11) DEFAULT NULL COMMENT '投票电影  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '投票人',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投票时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='投票';

/*Data for the table `voting` */

insert  into `voting`(`id`,`dianying_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,1,1,'2021-05-12 15:54:01','2021-05-12 15:54:01'),(3,2,2,'2021-05-12 20:51:58','2021-05-12 20:51:58'),(4,3,1,'2021-05-12 21:37:15','2021-05-12 21:37:15');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',1,'410882199912121211','17785566454','http://localhost:8080/zaixianshipindianbo/file/download?fileName=1617603299257.jpg','2021-05-12 13:52:43'),(2,'222','123456','用户2',2,'123123123123123123','12312312312','http://localhost:8080/zaixianshipindianbo/upload/1617627111822.jpg',NULL),(3,'123','123456','用户3',2,'410882188912114143','13515544613','http://localhost:8080/zaixianshipindianbo/file/download?fileName=1620799786349.jpg','2021-05-12 14:09:47');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
