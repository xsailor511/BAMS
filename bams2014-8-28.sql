/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.55-community : Database - bams
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bams` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bams`;

/*Table structure for table `allproperty` */

DROP TABLE IF EXISTS `allproperty`;

CREATE TABLE `allproperty` (
  `toubaorenmingcheng` varchar(64) DEFAULT NULL COMMENT '投保人名称',
  `toubaorendizhi` varchar(256) DEFAULT NULL COMMENT '投保人地址',
  `toubaorendianhua` char(11) DEFAULT NULL COMMENT '投保人电话',
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `toubaorenzuzhijigou` varchar(16) DEFAULT NULL COMMENT '投保人组织机构代码',
  `beibaoxianrenmingchen` varchar(64) DEFAULT NULL COMMENT '被保险人名称',
  `beibaoxianrendizhi` varchar(256) DEFAULT NULL COMMENT '被保险人地址',
  `beibaoxianrenyingyexingzhi` varchar(64) DEFAULT NULL COMMENT '被保险人营业性质',
  `baoxiancaichandizhi` varchar(256) DEFAULT NULL COMMENT '保险财产地址',
  `youzhengbianma` char(6) NOT NULL DEFAULT '000000' COMMENT '被保险财产邮政编码',
  `chengbaobiaoxiangmu` char(4) NOT NULL DEFAULT '0000' COMMENT '承保标的项目合并存储',
  `fangwujine` double DEFAULT NULL COMMENT '房屋建筑保险金额',
  `jiqishebeijine` double DEFAULT NULL COMMENT '机器设备保险金额',
  `qitajine` double DEFAULT NULL COMMENT '其他金额',
  `cunhuojine` double DEFAULT NULL COMMENT '存货保险金额',
  `feilv` double DEFAULT NULL COMMENT '费率',
  `baoxianfei` double DEFAULT NULL COMMENT '保险费',
  `baoxianjinexiaoji` varchar(128) DEFAULT NULL COMMENT '保险金额小计',
  `start_time` date DEFAULT NULL COMMENT '保险开始时间',
  `end_time` date DEFAULT NULL COMMENT '保险结束时间',
  `baoxianfeichina` varchar(128) DEFAULT NULL COMMENT '保险费大写',
  `jiaofeishijian` date DEFAULT NULL COMMENT '缴费时间',
  `jiaofeifangshi` varchar(64) DEFAULT NULL COMMENT '缴费方式',
  `fujiatiaokuan` tinytext COMMENT '附加条款',
  `tebieyueding` tinytext COMMENT '特别约定',
  `zhengyichuli` varchar(128) DEFAULT NULL COMMENT '争议处理（合并存储）',
  `toubaofujian` tinytext COMMENT '投保附件（合并存储）',
  `toubaofujianshuliang` tinyint(4) DEFAULT NULL COMMENT '投保附件数量',
  `shifoutouguo` varchar(32) DEFAULT NULL COMMENT '是否已经投过类似保险（合并存储）',
  `lipeijilu` tinytext COMMENT '理赔记录（合并存储）',
  `toubaorenqianzhang` varchar(32) DEFAULT NULL COMMENT '投保人签章',
  `toubaoriqi` date DEFAULT NULL COMMENT '投保日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `allproperty` */

/*Table structure for table `employerduty` */

DROP TABLE IF EXISTS `employerduty`;

CREATE TABLE `employerduty` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `toubaorenmingcheng` varchar(64) DEFAULT NULL COMMENT '投保人名称',
  `toubaorendizhi` varchar(256) DEFAULT NULL COMMENT '投保人地址',
  `toubaorenlianxiren` varchar(64) DEFAULT NULL COMMENT '投保人联系人',
  `toubaorendianhua` char(11) DEFAULT NULL COMMENT '投保人联系电话',
  `beibaoxianrenmingcheng` varchar(64) DEFAULT NULL COMMENT '被保险人名称',
  `beibaoxianrendizhi` varchar(256) DEFAULT NULL COMMENT '被保险人地址',
  `yingyexingzhi` varchar(64) DEFAULT NULL COMMENT '营业性质',
  `beizuzhijigoudaima` varchar(32) DEFAULT NULL COMMENT '被保险人组织机构代码证',
  `canjiashehuibaoxian` tinyint(1) DEFAULT NULL COMMENT '是否参加社会（医疗、工伤）保险',
  `guyuangongzhong` varchar(256) DEFAULT NULL COMMENT '雇员工种（合并存储）',
  `guyuanrenshu` varchar(64) DEFAULT NULL COMMENT '估计雇员人数（合并存储）',
  `peichangsiwang` varchar(256) DEFAULT NULL COMMENT '赔偿限额,死亡伤残（合并存储）',
  `peichangyiliao` varchar(256) DEFAULT NULL COMMENT '赔偿限额，医疗（合并存储）',
  `baoxianfeilv` double DEFAULT NULL COMMENT '保险费率',
  `baoxianfei` double DEFAULT NULL COMMENT '保险费',
  `start_time` date DEFAULT NULL COMMENT '保险开始时间',
  `end_time` date DEFAULT NULL COMMENT '保险结束时间',
  `tebieyueding` varchar(256) DEFAULT NULL COMMENT '特别约定',
  `fufeiriqi` date DEFAULT NULL COMMENT '付费日期',
  `sifaguanxia` varchar(256) DEFAULT NULL COMMENT '司法管辖',
  `zhengyichuli` varchar(256) DEFAULT NULL COMMENT '争议处理（合并存储）',
  `toubaorenqianzhang` varchar(64) DEFAULT NULL COMMENT '投保人签章',
  `toubaoriqi` date DEFAULT NULL COMMENT '投保日期',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employerduty` */

/*Table structure for table `enterprisepackage` */

DROP TABLE IF EXISTS `enterprisepackage`;

CREATE TABLE `enterprisepackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `weituoren` varchar(64) DEFAULT NULL COMMENT '委托人',
  `dianhua` varchar(11) DEFAULT NULL COMMENT '电话',
  `lianxiren` varchar(64) DEFAULT NULL COMMENT '联系人',
  `enddate` date DEFAULT NULL COMMENT '保险到期日期',
  `kexuanxianzhong` varchar(256) DEFAULT NULL COMMENT '可选险种（合并存储）',
  `baoxiangongsi` varchar(32) DEFAULT NULL COMMENT '保险公司',
  `weituorenzhucedizhi` varchar(256) DEFAULT NULL COMMENT '委托人注册地址',
  `weituorenfadingdaibiaoren` varchar(64) DEFAULT NULL COMMENT '委托人法定代表人',
  `shoutuorenzhucedizhi` varchar(256) DEFAULT NULL COMMENT '受托人注册地址',
  `shoutuorenfadingdaibiao` varchar(64) DEFAULT NULL COMMENT '受托人法定代表',
  `weituorenqianzhang` varchar(64) DEFAULT NULL COMMENT '委托人签章',
  `tianbiaoriqi` date DEFAULT NULL COMMENT '填表日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `enterprisepackage` */

/*Table structure for table `family` */

DROP TABLE IF EXISTS `family`;

CREATE TABLE `family` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `baoxiancaichandizhi` varchar(256) DEFAULT NULL COMMENT '保险财产地址',
  `caichanzonghebaoxian` tinyint(1) DEFAULT NULL COMMENT '家庭财产综合保险',
  `yiwaiyiliaobaoxian` double DEFAULT NULL COMMENT '意外医疗保险合计',
  `yiwaishanghaiyiliao` tinyint(1) DEFAULT NULL COMMENT '意外伤害医疗',
  `chucichamingzhongji` tinyint(1) DEFAULT NULL COMMENT '投保后 初次查明重疾',
  `menjizhen` tinyint(1) DEFAULT NULL COMMENT '门急诊',
  `jibingzhuyuan` tinyint(1) DEFAULT NULL COMMENT '疾病住院',
  `startdate` date DEFAULT NULL COMMENT '保险开始时间',
  `enddate` date DEFAULT NULL COMMENT '保险结束时间',
  `baoxianfeizongji` double DEFAULT NULL COMMENT '保险费总计',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `family` */

/*Table structure for table `freight` */

DROP TABLE IF EXISTS `freight`;

CREATE TABLE `freight` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `fax_from` varchar(64) DEFAULT NULL COMMENT 'fax from',
  `fax_to` varchar(64) DEFAULT NULL COMMENT 'fax to',
  `beibaoxianren` varchar(64) DEFAULT NULL COMMENT '被保险人',
  `fapiaohao` varchar(32) DEFAULT NULL COMMENT '发票号',
  `fapiaoriqi` date DEFAULT NULL COMMENT '发票日期',
  `jinkouhetonghao` varchar(32) DEFAULT NULL COMMENT '进口合同号',
  `xinyongzhenghao` varchar(32) DEFAULT NULL COMMENT '信用证号',
  `baozhuangshuliang` int(11) DEFAULT NULL COMMENT '包装数量',
  `baoxianhuowumingcheng` varchar(256) DEFAULT NULL COMMENT '保险货物名称',
  `biaoji` varchar(64) DEFAULT NULL COMMENT '标记',
  `jiagetiaojian` varchar(64) DEFAULT NULL COMMENT '价格条件',
  `fapiaojine` double DEFAULT NULL COMMENT '发票金额',
  `baoxianjine` double DEFAULT NULL COMMENT '保险金额',
  `feilv` double DEFAULT NULL COMMENT '费率',
  `baoxianfei` double DEFAULT NULL COMMENT '保险费',
  `chuanming` varchar(64) DEFAULT NULL COMMENT '船名',
  `jianzaonianfen` char(4) DEFAULT NULL COMMENT '建造年份',
  `chuanqi` varchar(32) DEFAULT NULL COMMENT '船旗',
  `qiyunriqi` date DEFAULT NULL COMMENT '起运日期',
  `qiyungang` varchar(64) DEFAULT NULL COMMENT '起运港',
  `via` varchar(64) DEFAULT NULL COMMENT '经由',
  `mudigang` varchar(64) DEFAULT NULL COMMENT '目的港',
  `chengbaoxianbie` varchar(32) DEFAULT NULL COMMENT '承保险别',
  `note` varchar(256) DEFAULT NULL COMMENT '备注',
  `toubaorenqiangzhang` varchar(64) DEFAULT NULL COMMENT '投保人签章',
  `tianbiaoriqi` date DEFAULT NULL COMMENT '投保填单日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `freight` */

/*Table structure for table `office` */

DROP TABLE IF EXISTS `office`;

CREATE TABLE `office` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `toubaorenmingcheng` varchar(64) DEFAULT NULL COMMENT '投保人名称',
  `toubaorendizhi` varchar(256) DEFAULT NULL COMMENT '投保人地址',
  `caichansunshixianadd` double DEFAULT NULL COMMENT '财产损失险增加保额',
  `caichansunshixianaddbaoe` double DEFAULT NULL COMMENT '财产损失险增加保费',
  `tuantiyiwaixianzengjiarenshu` tinyint(4) DEFAULT NULL COMMENT '团体意外险增加人数',
  `tuantiyiwaixianzengjiabaofei` double DEFAULT NULL COMMENT '团体意外险增加保费',
  `zongbaofei` double DEFAULT NULL COMMENT '总保费',
  `toubaorenqianzhang` varchar(64) DEFAULT NULL COMMENT '投保人签章',
  `toubaoriqi` date DEFAULT NULL COMMENT '投保日期',
  `tuantiyiwaishanghaimingdan` varchar(256) DEFAULT NULL COMMENT '团体意外伤害名单（合并存储）',
  `tuantiyiwaishanghaishenfenzheng` varchar(256) DEFAULT NULL COMMENT '团体意外伤害人身份证（合并存储）',
  `gaocengchailvmingdan` varchar(256) DEFAULT NULL COMMENT '高层意外伤害人名单（合并存储）',
  `gaocengchailvshenfengzheng` varchar(256) DEFAULT NULL COMMENT '高层意外伤害人身份证号码（合并存储）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `office` */

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `picture_url` varchar(128) NOT NULL COMMENT '图片url',
  `picture_owner` varchar(64) NOT NULL COMMENT '图片所属用户',
  `picture_name` varchar(128) NOT NULL COMMENT '图片名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

/*Table structure for table `policyindex` */

DROP TABLE IF EXISTS `policyindex`;

CREATE TABLE `policyindex` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tablename` varchar(64) NOT NULL COMMENT '具体内容所在表格',
  `policyname` varchar(256) NOT NULL COMMENT '保单名称',
  `username` varchar(64) NOT NULL COMMENT '保单所属用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `policyindex` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `role_name` varchar(32) NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`role_id`,`role_name`) values (1,'enterprise'),(2,'bank'),(3,'financial'),(4,'agent'),(5,'manager');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `name` varchar(64) NOT NULL COMMENT '用户名',
  `role` tinyint(4) NOT NULL COMMENT '角色号码',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号，自增',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `phone` varchar(13) NOT NULL COMMENT '电话号码',
  `realname` varchar(64) NOT NULL COMMENT '真实姓名',
  `socialid` char(18) NOT NULL COMMENT '身份证号码',
  `email` varchar(64) NOT NULL COMMENT '邮箱',
  `goal` int(5) DEFAULT '0' COMMENT '用户积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`name`,`role`,`id`,`password`,`phone`,`realname`,`socialid`,`email`,`goal`) values ('jack',1,1,'111111','18769780000','张三','123456789123456789','shit@163.com',0),('tom',2,2,'111111','18769780001','李四','123456789123456789','shit@163.com',0),('alice',3,3,'111111','18769780002','王二','123456789123456789','shit@163.com',0),('richard',5,4,'111111','18769780003','彰武','123456789123456789','shit@163.com',0),('xsailor',4,5,'111111','18769780004','吴克','123456789123456789','shit@163.com',0),('jakern',1,6,'222222','12345678900','请问','123456789987654321','xsailor511@163.com',0);

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `beibaoxianrenmingcheng` varchar(64) DEFAULT NULL COMMENT '被保险人名称',
  `beibaoxianrenzhengjianhaoma` char(18) DEFAULT NULL COMMENT '身份证号码',
  `beibaoxianrentongxundizhi` varchar(256) DEFAULT NULL COMMENT '被保险人通讯地址',
  `beibaoxianrenyoubian` char(6) DEFAULT NULL COMMENT '被保险人邮政编码',
  `beibaoxianlianxiren` varchar(64) DEFAULT NULL COMMENT '被保险人联系人名称',
  `beibaoxianrendianhua` char(11) DEFAULT NULL COMMENT '被保险人联系人手机',
  `beibaoxianrenbangongdianhua` varchar(13) DEFAULT NULL COMMENT '被保险人联系人办公电话',
  `beibaoxianrenemail` varchar(64) DEFAULT NULL COMMENT '被保险人联系人邮箱',
  `toubaorenmingcheng` varchar(64) DEFAULT NULL COMMENT '投保人名称',
  `toubaorenzhengjianhaoma` char(18) DEFAULT NULL COMMENT '投保人身份证号码',
  `toubaorentongxundizhi` varchar(64) DEFAULT NULL COMMENT '投保人通讯地址',
  `toubaorenyoubian` char(6) DEFAULT NULL COMMENT '投保人邮政编码',
  `toubaorenlianxiren` varchar(64) DEFAULT NULL COMMENT '投保人联系人名称',
  `toubaorendianhua` char(11) DEFAULT NULL COMMENT '投保人联系人手机',
  `toubaorenbangongdianhua` varchar(13) DEFAULT NULL COMMENT '投保人联系人办公电话',
  `toubaorenemail` varchar(64) DEFAULT NULL COMMENT '投保人联系人邮箱',
  `xingshizhengchezhu` varchar(64) DEFAULT NULL COMMENT '行驶证车主',
  `changpaixinghao` varchar(32) DEFAULT NULL COMMENT '（车辆）厂牌型号',
  `hedingzaike` tinyint(4) DEFAULT NULL COMMENT '（车辆）核定载客',
  `haopaihaoma` varchar(16) DEFAULT NULL COMMENT '（车辆）号牌号码',
  `chucidengjiriqi` date DEFAULT NULL COMMENT '（车辆）初次登记日期',
  `shibiedaima` varchar(16) DEFAULT NULL COMMENT '（车辆）识别代码',
  `fadongjixinghao` varchar(16) DEFAULT NULL COMMENT '（车辆）发动机型号',
  `xinchejiage` double DEFAULT NULL COMMENT '（车辆）新车购置价格',
  `zhengbeizhiliang` varchar(32) DEFAULT NULL COMMENT '（车辆）整备质量',
  `paiqiliang` double DEFAULT NULL COMMENT '（车辆）排气量',
  `shangnianjiaoqiangxian` varchar(64) DEFAULT NULL COMMENT '上年交强险投保公司',
  `jiaoqiangxianbaodanhao` varchar(32) DEFAULT NULL COMMENT '上年交强险保单号',
  `shangnianshangyexian` varchar(64) DEFAULT NULL COMMENT '上年商业险投保公司',
  `shangyexianbaodanhao` varchar(32) DEFAULT NULL COMMENT '上年商业险保单号',
  `shangyexianxiane` varchar(256) DEFAULT NULL COMMENT '商业险责任限额（合并存储）',
  `shangyebaoxianfeiheji` double DEFAULT NULL COMMENT '商业保险费合计',
  `chechuanshui` double DEFAULT NULL COMMENT '车船税',
  `heji` double DEFAULT NULL COMMENT '合计',
  `shangyebaoxianstartdate` date DEFAULT NULL COMMENT '商业保险开始时间',
  `shangyebaoxianenddate` date DEFAULT NULL COMMENT '商业保险结束时间',
  `jiaoqiangbaoxianstartdate` date DEFAULT NULL COMMENT '交强保险开始时间',
  `jiaoqiangbaoxianenddate` date DEFAULT NULL COMMENT '交强保险结束时间',
  `zhengyijiejue` varchar(128) DEFAULT NULL COMMENT '争议解决方式',
  `jiashiyuanxinxi` varchar(256) DEFAULT NULL COMMENT '驾驶员信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vehicle` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;