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
  `beibaoxianrenmingcheng` varchar(64) DEFAULT NULL COMMENT '被保险人名称',
  `beibaoxianrendizhi` varchar(256) DEFAULT NULL COMMENT '被保险人地址',
  `beibaoxianrenzuzhijigou` varchar(16) DEFAULT NULL COMMENT '被保险人组织机构代码',
  `beibaoxianrenyingyexingzhi` varchar(64) DEFAULT NULL COMMENT '被保险人营业性质',
  `baoxiancaichandizhi` varchar(256) DEFAULT NULL COMMENT '保险财产地址',
  `youzhengbianma` char(6) NOT NULL DEFAULT '000000' COMMENT '被保险财产邮政编码',
  `fangwujine` double DEFAULT NULL COMMENT '房屋建筑保险金额',
  `jiqishebeijine` double DEFAULT NULL COMMENT '机器设备保险金额',
  `qitajine` double DEFAULT NULL COMMENT '其他金额',
  `cunhuojine` double DEFAULT NULL COMMENT '存货保险金额',
  `feilv` double DEFAULT NULL COMMENT '费率',
  `baoxianfei` double DEFAULT NULL COMMENT '保险费',
  `baoxianjinexiaoji` varchar(128) DEFAULT NULL COMMENT '保险金额小计(大写)',
  `start_time` char(10) DEFAULT NULL COMMENT '保险开始时间',
  `end_time` char(10) DEFAULT NULL COMMENT '保险结束时间',
  `baoxianfeichina` varchar(128) DEFAULT NULL COMMENT '保险费大写',
  `jiaofeishijian` varchar(128) DEFAULT NULL COMMENT '缴费时间/缴费方式',
  `fujiatiaokuan` varchar(256) DEFAULT NULL COMMENT '附加条款',
  `tebieyueding` varchar(128) DEFAULT NULL COMMENT '特别约定',
  `zhengyichuli` varchar(128) DEFAULT NULL COMMENT '争议处理（合并存储）',
  `toubaofujian` varchar(128) DEFAULT NULL COMMENT '投保附件（合并存储）',
  `toubaofujianshuliang` tinyint(4) DEFAULT NULL COMMENT '投保附件数量',
  `shifoutouguo` varchar(32) DEFAULT NULL COMMENT '是否已经投过类似保险（合并存储）',
  `lipeijilu` varchar(256) DEFAULT NULL COMMENT '理赔记录（合并存储）',
  `toubaorenqianzhang` varchar(32) DEFAULT NULL COMMENT '投保人签章',
  `toubaoriqi` char(10) DEFAULT NULL COMMENT '投保日期',
  `username` varchar(64) DEFAULT NULL COMMENT '投保账户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `allproperty` */

insert  into `allproperty`(`toubaorenmingcheng`,`toubaorendizhi`,`toubaorendianhua`,`id`,`toubaorenzuzhijigou`,`beibaoxianrenmingcheng`,`beibaoxianrendizhi`,`beibaoxianrenzuzhijigou`,`beibaoxianrenyingyexingzhi`,`baoxiancaichandizhi`,`youzhengbianma`,`fangwujine`,`jiqishebeijine`,`qitajine`,`cunhuojine`,`feilv`,`baoxianfei`,`baoxianjinexiaoji`,`start_time`,`end_time`,`baoxianfeichina`,`jiaofeishijian`,`fujiatiaokuan`,`tebieyueding`,`zhengyichuli`,`toubaofujian`,`toubaofujianshuliang`,`shifoutouguo`,`lipeijilu`,`toubaorenqianzhang`,`toubaoriqi`,`username`) values ('王三','江苏泗洪','12345678901',9,'234545','张氏','江苏宿迁',NULL,'商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,345,'壹万叁仟四百','2014-09-01','2014-09-25','三百四十五','2014信用卡','爱的色放','是的','zhongcai;泗洪法定仲裁',';qita;none',0,'shi;1233253465','you;2014-09-09;123;我方;大傻瓜','爱使股份','2014-10-01','xsailor'),('王三','江苏泗洪','12345678901',10,'234545','张氏','江苏宿迁','122334','商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,345,'壹万叁仟四百','2014-09-02','2014-09-27','三百四十五','2014信用卡','爱的色放','是的','zhongcai;泗洪法定仲裁',';qita;none',0,'shi;1233253465','you;2014-09-09;123;我方;大傻瓜','爱使股份','2014-09-16','xsailor'),('王三','江苏泗洪','12345678901',11,'234545','张氏','江苏宿迁','122334','商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,345,'壹万叁仟四百','2014-09-03','2014-09-10','三百四十五','2014信用卡','附加条款','特别约定','zhongcai;争议处理',';qita;其他投保附件',3,'shi;1233253465','you;2014-09-16;123;我方;大傻瓜','爱使股份','2014-09-09','xsailor'),('çä¸','æ±èæ³æ´ª','12345678901',12,'234545','å¼ æ°','æ±èå®¿è¿','122334','åå¡','æ±èå®¿è¿','223456',20001,2343,2345,1233,NULL,345,'å£¹ä¸åä»åç¾','2014-09-01','2014-10-02','ä¸ç¾ååäº','2014ä¿¡ç¨å¡','éå æ¡æ¬¾','ç¹å«çº¦å®','susong','',0,'shi;12435445','wu;none;none;none;none','ç±ä½¿è¡ä»½','2014-09-17','xsailor'),('王三','江苏泗洪','12345678901',13,'234545','张氏','江苏宿迁','122334','商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,345,'壹万叁仟四百','2014-09-09','2014-10-04','三百四十五','2014信用卡','附加条款','特别约定','susong',';zichanfuzai;none',0,'fou;none','wu;none;none;none;none','爱使股份','2014-09-08','xsailor'),('王三','江苏泗洪','12345678901',14,'234545','张氏','江苏宿迁','122334','商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,345,'壹万叁仟四百','2014-09-09','2014-10-04','三百四十五','2014信用卡','附加条款','特别约定','susong',';zichanfuzai;none',0,'fou;none','wu;none;none;none;none','爱使股份','2014-09-08','xsailor'),('王三','江苏泗洪','12345678901',15,'234545','张氏','江苏宿迁','122334','商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,345,'壹万叁仟四百','2014-09-09','2014-10-04','三百四十五','2014信用卡','附加条款','特别约定','susong',';zichanfuzai;none',0,'fou;none','wu;none;none;none;none','爱使股份','2014-09-08','xsailor'),('王三','江苏泗洪','12345678901',16,'234545','张氏','江苏宿迁','122334','商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,345,'壹万叁仟四百','2014-09-09','2014-10-04','三百四十五','2014信用卡','附加条款','特别约定','susong',';zichanfuzai;none',0,'fou;none','wu;none;none;none;none','爱使股份','2014-09-08','xsailor'),('王三','江苏泗洪','12345678901',17,'234545','张氏','江苏宿迁','122334','商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,345,'壹万叁仟四百','2014-09-09','2014-10-04','三百四十五','2014信用卡','附加条款','特别约定','susong',';zichanfuzai;none',0,'fou;none','wu;none;none;none;none','爱使股份','2014-09-08','xsailor'),('王三','江苏泗洪','12345678901',18,'234545','张氏','江苏宿迁','122334','商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,345,'壹万叁仟四百','2014-09-09','2014-10-04','三百四十五','2014信用卡','附加条款','特别约定','susong',';zichanfuzai;none',0,'fou;none','wu;none;none;none;none','爱使股份','2014-09-08','xsailor');

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
  `start_time` char(10) DEFAULT NULL COMMENT '保险开始时间',
  `end_time` char(10) DEFAULT NULL COMMENT '保险结束时间',
  `tebieyueding` varchar(256) DEFAULT NULL COMMENT '特别约定',
  `fufeiriqi` char(10) DEFAULT NULL COMMENT '付费日期',
  `sifaguanxia` varchar(256) DEFAULT NULL COMMENT '司法管辖',
  `zhengyichuli` varchar(256) DEFAULT NULL COMMENT '争议处理（合并存储）',
  `toubaorenqianzhang` varchar(64) DEFAULT NULL COMMENT '投保人签章',
  `toubaoriqi` char(10) DEFAULT NULL COMMENT '投保日期',
  `username` varchar(64) DEFAULT NULL COMMENT '投保账户名称',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `employerduty` */

insert  into `employerduty`(`id`,`toubaorenmingcheng`,`toubaorendizhi`,`toubaorenlianxiren`,`toubaorendianhua`,`beibaoxianrenmingcheng`,`beibaoxianrendizhi`,`yingyexingzhi`,`beizuzhijigoudaima`,`canjiashehuibaoxian`,`guyuangongzhong`,`guyuanrenshu`,`peichangsiwang`,`peichangyiliao`,`baoxianfeilv`,`baoxianfei`,`start_time`,`end_time`,`tebieyueding`,`fufeiriqi`,`sifaguanxia`,`zhengyichuli`,`toubaorenqianzhang`,`toubaoriqi`,`username`) values (1,'王三','江苏泗洪','山大','12345678901','张氏','江苏宿迁','商务','hgfjhgfj',1,';职员;none;none;none;none',';35;none;none;none;none',';10000;none;none;none;none',';20000;none;none;none;none',NULL,345,'2014-09-01','2014-09-24','特别约定','2014-09-08','司法管辖','zhogncai','王三','2014-09-08','xsailor'),(2,'王三','江苏泗洪','山大','12345678901','张氏','江苏宿迁','商务','hgfjhgfj',1,';职员;none;none;none;none',';35;none;none;none;none',';10000;none;none;none;none',';20000;none;none;none;none',NULL,345,'2014-09-01','2014-09-25','特别约定','2014-09-08','司法管辖','zhongcai;泗洪法定仲裁','王三','2014-10-01','xsailor'),(3,'王三','江苏泗洪','山大','12345678901','张氏','江苏宿迁','商务','hgfjhgfj',1,';职员;none;none;none;none',';35;none;none;none;none',';10000;none;none;none;none',';20000;none;none;none;none',NULL,345,'2014-09-01','2014-09-24','特别约定','2014-09-08','司法管辖','zhongcai;泗洪法定仲裁','王三','2014-09-23','xsailor');

/*Table structure for table `enterprisepackage` */

DROP TABLE IF EXISTS `enterprisepackage`;

CREATE TABLE `enterprisepackage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `weituoren` varchar(64) DEFAULT NULL COMMENT '委托人',
  `dianhua` varchar(11) DEFAULT NULL COMMENT '电话',
  `lianxiren` varchar(64) DEFAULT NULL COMMENT '联系人',
  `enddate` char(10) DEFAULT NULL COMMENT '保险到期日期',
  `startdate` char(10) DEFAULT NULL COMMENT '开始日期',
  `kexuanxianzhong` varchar(256) DEFAULT NULL COMMENT '可选险种（合并存储）',
  `baoxiangongsi` varchar(32) DEFAULT NULL COMMENT '保险公司',
  `weituorenzhucedizhi` varchar(256) DEFAULT NULL COMMENT '委托人注册地址',
  `weituorenfadingdaibiaoren` varchar(64) DEFAULT NULL COMMENT '委托人法定代表人',
  `shoutuorenzhucedizhi` varchar(256) DEFAULT NULL COMMENT '受托人注册地址',
  `shoutuorenfadingdaibiao` varchar(64) DEFAULT NULL COMMENT '受托人法定代表',
  `weituorenqianzhang` varchar(64) DEFAULT NULL COMMENT '委托人签章',
  `tianbiaoriqi` char(10) DEFAULT NULL COMMENT '填表日期',
  `username` varchar(64) DEFAULT NULL COMMENT '投保账户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `enterprisepackage` */

insert  into `enterprisepackage`(`id`,`weituoren`,`dianhua`,`lianxiren`,`enddate`,`startdate`,`kexuanxianzhong`,`baoxiangongsi`,`weituorenzhucedizhi`,`weituorenfadingdaibiaoren`,`shoutuorenzhucedizhi`,`shoutuorenfadingdaibiao`,`weituorenqianzhang`,`tianbiaoriqi`,`username`) values (1,'å¤§å¥','12212345678','é¿éå¤«','2014-10-10',NULL,NULL,'tongyi;','é¿ä»é¡¿é£é¿ä»é¡¿é£','çè¨è²','é¿ä»é¡¿é£è¡æèå','äººå','å¤§å¥','2014-09-22',NULL),(2,'å¤§å¥','12212345678','é¿éå¤«','2014-10-10',NULL,'buchonggongshang;buchongyanglao;','tongyi','é¿ä»é¡¿é£é¿ä»é¡¿é£','çè¨è²','é¿ä»é¡¿é£è¡æèå','äººå','å¤§å¥','2014-09-22',NULL),(3,'å¤§å¥','12212345678','é¿éå¤«','2014-10-10',NULL,'buchonggongshang;buchongyanglao;','tongyi','é¿ä»é¡¿é£é¿ä»é¡¿é£','çè¨è²','é¿ä»é¡¿é£è¡æèå','äººå','å¤§å¥','2014-09-22',NULL),(4,'å¤§å¥','12212345678','é¿éå¤«','2014-10-10',NULL,'buchonggongshang;buchongyanglao;','tongyi','é¿ä»é¡¿é£é¿ä»é¡¿é£','çè¨è²','é¿ä»é¡¿é£è¡æèå','äººå','å¤§å¥','2014-09-22',NULL),(5,'å¤§å¥','12212345678','é¿éå¤«','2014-10-10',NULL,'buchonggongshang;buchongyanglao;','tongyi','é¿ä»é¡¿é£é¿ä»é¡¿é£','çè¨è²','é¿ä»é¡¿é£è¡æèå','äººå','å¤§å¥','2014-09-22',NULL),(6,'��','12212345678','������','2014-10-10',NULL,'buchonggongshang;buchongyanglao;','tongyi','��ʲ�ٷɰ�ʲ�ٷ�','����','��ʲ�ٷ������','��Ա','��','2014-09-22',NULL),(7,'大哥','12212345678','阿道夫','2014-10-10',NULL,'buchonggongshang;buchongyanglao;','tongyi','阿什顿飞阿什顿飞','的萨菲','阿什顿飞行情而后','人员','大哥','2014-09-22',NULL),(8,'澶у�','12212345678','�块�澶�','2014-10-10',NULL,'buchonggongshang;buchongyanglao;','tongyi','�夸�椤块��夸�椤块�','�����','�夸�椤块�琛�����','浜哄�','澶у�','2014-09-22',NULL),(9,'澶у�','12212345678','�块�澶�','2014-10-10',NULL,'buchonggongshang;buchongyanglao;','tongyi','�夸�椤块��夸�椤块�','�����','�夸�椤块�琛�����','浜哄�','澶у�','2014-09-22',NULL),(10,'大哥','12212345678','阿道夫','2014-10-10',NULL,'shigongjiju;qiyenianjin;','yongan','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-24',NULL),(11,'大哥','12212345678','阿道夫','2014-10-10',NULL,'shigongjiju;qiyenianjin;','yongan','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-24',NULL),(12,'大哥','12212345678','阿道夫','2014-10-11',NULL,'补充医疗保险;安全生产责任险;','tongyi','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-05','alice'),(13,'大哥','12212345678','阿道夫','2014-10-11',NULL,'雇员忠诚保险;补充医疗保险;','长城','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-10-09','alice'),(14,'大哥','12212345678','阿道夫','2014-10-11',NULL,'雇员忠诚保险;补充医疗保险;','长城','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-10-09','alice'),(15,'大哥','12212345678','阿道夫','2014-09-09',NULL,'补充工伤保险;补充养老保险;','太平','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-25','xsailor'),(16,'大哥','12212345678','阿道夫','2014-09-02','2014-10-08','补充工伤保险;','永安','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-09','xsailor'),(17,'大哥','12212345678','阿道夫','2014-09-02','2014-10-08','补充工伤保险;','人保','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-09','xsailor'),(18,'大哥','12212345678','阿道夫','2014-09-02','2014-10-08','补充工伤保险;','大众','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-09','xsailor'),(19,'大哥','12212345678','阿道夫','2014-09-02','2014-10-08','补充工伤保险;','永安','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-09','xsailor'),(20,'大哥','12212345678','阿道夫','2014-09-02','2014-10-08','补充工伤保险;','太平','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-09','xsailor'),(21,'大哥','12212345678','阿道夫','2014-09-02','2014-10-08','补充工伤保险;意外伤害保险;','华泰','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-09','xsailor'),(22,'大哥','12212345678','阿道夫','2014-09-02','2014-10-08','补充工伤保险;意外伤害保险;','tongyi','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-09','xsailor'),(23,'大哥','12212345678','阿道夫','2014-09-17','2014-10-08',' 污染责任保险;雇员忠诚保险;','tongyi','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-30','xsailor');

/*Table structure for table `family` */

DROP TABLE IF EXISTS `family`;

CREATE TABLE `family` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `baoxiancaichandizhi` varchar(256) DEFAULT NULL COMMENT '保险财产地址',
  `caichanzonghebaoxian` tinyint(1) DEFAULT NULL COMMENT '家庭财产综合保险',
  `quantijiatingchengyuan` tinyint(1) DEFAULT NULL COMMENT '全体家庭成员（0-75岁）意外及医疗保险',
  `jiatingchengyuanleixing` varchar(16) DEFAULT NULL COMMENT '家庭成员类型',
  `yiwaiyiliaobaoxianheji` double DEFAULT NULL COMMENT '意外医疗保险合计',
  `yiwaishanghaiyiliao` tinyint(1) DEFAULT NULL COMMENT '意外伤害医疗',
  `chucichamingzhongji` tinyint(1) DEFAULT NULL COMMENT '投保后初次查明重疾',
  `menjizhen` tinyint(1) DEFAULT NULL COMMENT '门急诊',
  `jibingzhuyuan` tinyint(1) DEFAULT NULL COMMENT '疾病住院',
  `startdate` char(10) DEFAULT NULL COMMENT '保险开始时间',
  `enddate` char(10) DEFAULT NULL COMMENT '保险结束时间',
  `baoxianfeizongji` double DEFAULT NULL COMMENT '保险费总计',
  `username` varchar(64) DEFAULT NULL COMMENT '投保账户名称',
  `baoxianfeizongjichina` varchar(128) DEFAULT NULL COMMENT '保险费总计大写',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `family` */

insert  into `family`(`id`,`baoxiancaichandizhi`,`caichanzonghebaoxian`,`quantijiatingchengyuan`,`jiatingchengyuanleixing`,`yiwaiyiliaobaoxianheji`,`yiwaishanghaiyiliao`,`chucichamingzhongji`,`menjizhen`,`jibingzhuyuan`,`startdate`,`enddate`,`baoxianfeizongji`,`username`,`baoxianfeizongjichina`) values (1,'江苏宿迁',1,0,NULL,1000,0,0,0,0,'2014-10-01','2014-10-11',1150,'xsailor',NULL),(2,'江苏宿迁',1,1,NULL,1000,1,1,1,1,'2014-10-01','2014-10-11',1150,'xsailor','阿凡达'),(3,'江苏宿迁',1,0,NULL,0,0,0,0,0,'2014-10-01','2014-10-11',150,'xsailor','四万八千'),(4,'江苏宿迁',1,1,'on',400,1,0,0,0,'2014-10-01','2014-10-11',550,'xsailor','四万八千'),(5,'江苏宿迁',1,1,'fuqi',400,1,0,0,0,'2014-09-09','2014-10-11',550,'xsailor','四万八千');

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `filename` varchar(128) NOT NULL COMMENT '上传的文件名称',
  `fileurl` varchar(256) NOT NULL COMMENT '文件URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `file` */

insert  into `file`(`id`,`filename`,`fileurl`) values (1,'java2word整理文档.doc','F:\\Program Files\\apache-tomcat-7.0.55\\webapps\\BAMS\\file\\managerjava2word整理文档.doc'),(2,'JAVA动态生成word和pdf.doc','F:\\Program Files\\apache-tomcat-7.0.55\\webapps\\BAMS\\file\\managerJAVA动态生成word和pdf.doc'),(9,'家庭无忧保险投保流程.doc','http://localhost:8080/BAMS/file/manager/家庭无忧保险投保流程.doc');

/*Table structure for table `freight` */

DROP TABLE IF EXISTS `freight`;

CREATE TABLE `freight` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `fax_from` varchar(64) DEFAULT NULL COMMENT 'fax from',
  `fax_to` varchar(64) DEFAULT NULL COMMENT 'fax to',
  `beibaoxianren` varchar(64) DEFAULT NULL COMMENT '被保险人',
  `fapiaohao` varchar(32) DEFAULT NULL COMMENT '发票号',
  `fapiaoriqi` char(10) DEFAULT NULL COMMENT '发票日期',
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
  `qiyunriqi` char(10) DEFAULT NULL COMMENT '起运日期',
  `qiyungang` varchar(64) DEFAULT NULL COMMENT '起运港',
  `via` varchar(64) DEFAULT NULL COMMENT '经由',
  `mudigang` varchar(64) DEFAULT NULL COMMENT '目的港',
  `chengbaoxianbie` varchar(32) DEFAULT NULL COMMENT '承保险别',
  `note` varchar(256) DEFAULT NULL COMMENT '备注',
  `toubaorenqianzhang` varchar(64) DEFAULT NULL COMMENT '投保人签章',
  `tianbiaoriqi` char(10) DEFAULT NULL COMMENT '投保填单日期',
  `username` varchar(64) DEFAULT NULL COMMENT '投保账户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `freight` */

insert  into `freight`(`id`,`fax_from`,`fax_to`,`beibaoxianren`,`fapiaohao`,`fapiaoriqi`,`jinkouhetonghao`,`xinyongzhenghao`,`baozhuangshuliang`,`baoxianhuowumingcheng`,`biaoji`,`jiagetiaojian`,`fapiaojine`,`baoxianjine`,`feilv`,`baoxianfei`,`chuanming`,`jianzaonianfen`,`chuanqi`,`qiyunriqi`,`qiyungang`,`via`,`mudigang`,`chengbaoxianbie`,`note`,`toubaorenqianzhang`,`tianbiaoriqi`,`username`) values (1,'0634â6192778','0634â6192779','æå¤','NO 02995606','2014-09-09','NO 12132432','20 DOCUMENTARY CREDIT NUMBER',34,'è¹æææº','æç¢å','æ ',1345,100000,NULL,1000,'æ±èå·','1987','ä¸­å½','2014-09-11','éå²æ¸¯','ç¦å»ºæ¸¯','è¥¿ç­çé©¬å¾·éæ¸¯','è´§è¿åä¸é©','å¥½æ ·ç',NULL,'2014-09-08','xsailor'),(2,'0634—6192778','0634—6192779','林夕','NO 02995606','2014-09-08','NO 12132432','20 DOCUMENTARY CREDIT NUMBER',34,'苹果手机','易碎品','无',1345,100000,NULL,345,'江苏号','1987','中国','2014-09-08','青岛港','福建港','西班牙马德里港','货运商业险','好样的','王三','2014-09-08','xsailor'),(3,'0634—6192778','0634—6192779','林夕','NO 02995606','2014-09-09','NO 12132432','20 DOCUMENTARY CREDIT NUMBER',34,'苹果手机','易碎品','无',1345,100000,NULL,345,'江苏号','198','中国','2014-09-09','青岛港','福建港','西班牙马德里港','货运商业险','好样的','王三','2014-09-09','xsailor'),(4,'0634—6192778','0634—6192779','林夕','NO 02995606','2014-09-09','NO 12132432','20 DOCUMENTARY CREDIT NUMBER',34,'苹果手机','易碎品','无',1345,100000,NULL,345,'江苏号','1987','中国','2014-09-08','青岛港','福建港','西班牙马德里港','货运商业险','好样的','王三','2014-09-09','xsailor');

/*Table structure for table `office` */

DROP TABLE IF EXISTS `office`;

CREATE TABLE `office` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `toubaorenmingcheng` varchar(64) DEFAULT NULL COMMENT '投保人名称',
  `toubaorendizhi` varchar(256) DEFAULT NULL COMMENT '投保人地址',
  `lianxiren` varchar(128) DEFAULT NULL COMMENT '联系人/联系方式',
  `shineizhuanghuang` double DEFAULT NULL COMMENT '室内装潢',
  `bangongjiaju` double DEFAULT NULL COMMENT '办公家具及非消耗性用品用具',
  `bangongdianzi` double DEFAULT NULL COMMENT '办公用电子电器和计算机设备',
  `caichansunshixianadd` double DEFAULT NULL COMMENT '财产损失险增加保额',
  `caichansunshixianaddbaoe` double DEFAULT NULL COMMENT '财产损失险增加保费',
  `tuantiyiwaixianzengjiarenshu` tinyint(4) DEFAULT NULL COMMENT '团体意外险增加人数',
  `tuantiyiwaixianzengjiabaofei` double DEFAULT NULL COMMENT '团体意外险增加保费',
  `zongbaofei` double DEFAULT NULL COMMENT '总保费',
  `toubaorenqianzhang` varchar(64) DEFAULT NULL COMMENT '投保人签章',
  `toubaoriqi` char(10) DEFAULT NULL COMMENT '投保日期',
  `tuantiyiwaishanghaimingdan` varchar(256) DEFAULT NULL COMMENT '团体意外伤害名单（合并存储）',
  `tuantiyiwaishanghaishenfenzheng` varchar(256) DEFAULT NULL COMMENT '团体意外伤害人身份证（合并存储）',
  `gaocengchailvmingdan` varchar(256) DEFAULT NULL COMMENT '高层意外伤害人名单（合并存储）',
  `gaocengchailvshenfengzheng` varchar(256) DEFAULT NULL COMMENT '高层意外伤害人身份证号码（合并存储）',
  `username` varchar(64) DEFAULT NULL COMMENT '投保账户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `office` */

insert  into `office`(`id`,`toubaorenmingcheng`,`toubaorendizhi`,`lianxiren`,`shineizhuanghuang`,`bangongjiaju`,`bangongdianzi`,`caichansunshixianadd`,`caichansunshixianaddbaoe`,`tuantiyiwaixianzengjiarenshu`,`tuantiyiwaixianzengjiabaofei`,`zongbaofei`,`toubaorenqianzhang`,`toubaoriqi`,`tuantiyiwaishanghaimingdan`,`tuantiyiwaishanghaishenfenzheng`,`gaocengchailvmingdan`,`gaocengchailvshenfengzheng`,`username`) values (1,'çä¸','æ±èæ³æ´ª','é¿éå¤«',4,580,4,10,100,12,480,580,'çä¸','2014-09-08',';none;none;none;none;none;none;none;none;none;none',';none;none;none;none;none;none;none;none;none;none',';none;none',';none;none','xsailor'),(2,'çä¸','æ±èæ³æ´ª','é¿éå¤«',4,580,4,10,100,12,480,580,'çä¸','2014-09-10',';none;none;none;none;none;none;none;none;none;none',';none;none;none;none;none;none;none;none;none;none',';none;none',';none;none','xsailor'),(3,'çä¸','æ±èæ³æ´ª','é¿éå¤«',4,580,4,10,100,12,480,580,'çä¸','2014-09-24',';none;none;none;none;none;none;none;none;none;none',';none;none;none;none;none;none;none;none;none;none',';none;none',';none;none','xsailor'),(4,'çä¸','æ±èæ³æ´ª','é¿éå¤«',4,580,4,10,100,12,480,580,'çä¸','2014-10-01',';none;none;none;none;none;none;none;none;none;none',';none;none;none;none;none;none;none;none;none;none',';none;none',';none;none','xsailor'),(5,'çä¸','æ±èæ³æ´ª','é¿éå¤«',4,580,4,10,100,12,480,580,'çä¸','2014-09-08',';none;none;none;none;none;none;none;none;none;none',';none;none;none;none;none;none;none;none;none;none',';none;none',';none;none','xsailor'),(6,'çä¸','æ±èæ³æ´ª','é¿éå¤«',4,580,4,10,100,12,480,580,'çä¸','2014-09-08',';none;none;none;none;none;none;none;none;none;none',';none;none;none;none;none;none;none;none;none;none',';none;none',';none;none','xsailor'),(7,'çä¸','æ±èæ³æ´ª','é¿éå¤«',4,580,4,10,100,12,480,580,'çä¸','2014-09-10',';none;none;none;none;none;none;none;none;none;none',';none;none;none;none;none;none;none;none;none;none',';none;none',';none;none','xsailor'),(8,'çä¸','æ±èæ³æ´ª','é¿éå¤«',4,580,4,10,100,12,480,580,'çä¸','2014-10-03',';none;none;none;none;none;none;none;none;none;none',';none;none;none;none;none;none;none;none;none;none',';none;none',';none;none','xsailor'),(9,'çä¸','æ±èæ³æ´ª','é¿éå¤«',4,580,4,10,100,12,480,580,'çä¸','2014-09-10',';å¤§æµ·;none;none;none;none;none;none;none;none;none',';123456111111111111;none;none;none;none;none;none;none;none;none',';é¿ä»é¡¿é£;none',';111122223333333333;none','xsailor'),(10,'çä¸','æ±èæ³æ´ª','é¿éå¤«',4,580,4,10,100,11,440,580,'çä¸','2014-09-10',';å¤§æµ·;none;none;none;none;none;none;none;none;none',';123456111111111111;none;none;none;none;none;none;none;none;none',';é¿ä»é¡¿é£;none',';111122223333333333;none','xsailor'),(11,'çä¸','æ±èæ³æ´ª','é¿éå¤«',7,580,5,10,100,11,440,580,'çä¸','2014-09-10',';å¤§æµ·;none;none;none;none;none;none;none;none;none',';123456111111111111;none;none;none;none;none;none;none;none;none',';é¿ä»é¡¿é£;none',';111122223333333333;none','xsailor'),(12,'çä¸','æ±èæ³æ´ª','é¿éå¤«',7,540,5,10,100,11,440,540,'çä¸','2014-09-10',';å¤§æµ·;none;none;none;none;none;none;none;none;none',';123456111111111111;none;none;none;none;none;none;none;none;none',';é¿ä»é¡¿é£;none',';111122223333333333;none','xsailor'),(13,'çä¸','æ±èæ³æ´ª','é¿éå¤«',8,7,5,10,100,11,440,540,'çä¸','2014-09-10',';å¤§æµ·;none;none;none;none;none;none;none;none;none',';123456111111111111;none;none;none;none;none;none;none;none;none',';é¿ä»é¡¿é£;none',';111122223333333333;none','xsailor'),(14,'王三','江苏泗洪','阿道夫',8,7,5,10,100,11,440,540,'王三','2014-09-10',';大海;none;none;none;none;none;none;none;none;none',';123456111111111111;none;none;none;none;none;none;none;none;none',';阿什顿飞;none',';111122223333333333;none','xsailor'),(15,'王三','江苏泗洪','阿道夫',8,7,5,10,100,12,480,1030,'王三','2014-09-10',';大海;none;none;none;none;none;none;none;none;none',';123456111111111111;none;none;none;none;none;none;none;none;none',';阿什顿飞;none',';111122223333333333;none','xsailor'),(16,'王三','江苏泗洪','阿道夫',8,7,5,10,100,11,440,990,'王三','2014-09-10',';大海;none;none;none;none;none;none;none;none;none',';123456111111111111;none;none;none;none;none;none;none;none;none',';阿什顿飞;none',';111122223333333333;none','xsailor'),(17,'王三','江苏泗洪','阿道夫',8,7,5,10,100,12,480,1030,'王三','2014-09-10',';大海;none;none;none;none;none;none;none;none;none',';123456111111111111;none;none;none;none;none;none;none;none;none',';阿什顿飞;none',';111122223333333333;none','xsailor');

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `picture_url` varchar(128) NOT NULL COMMENT '图片url',
  `picture_owner` varchar(64) NOT NULL COMMENT '图片所属用户',
  `picture_name` varchar(128) NOT NULL COMMENT '图片名称',
  `description` tinytext COMMENT '图片说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

insert  into `picture`(`id`,`picture_url`,`picture_owner`,`picture_name`,`description`) values (25,'http://localhost:8080/BAMS/file/user/upload_image/test1_20140905165446838.jpg','test1','test1_20140905165446838.jpg','打点滴'),(26,'http://localhost:8080/BAMS/file/user/upload_image/test1_20140905165553694.jpg','test1','test1_20140905165553694.jpg','哈哈'),(27,'http://localhost:8080/BAMS/file/user/upload_image/test1_20140905165630306.jpg','test1','test1_20140905165630306.jpg','阿凡达'),(28,'http://localhost:8080/BAMS/file/user/upload_image/test1_20140905165630309.jpg','test1','test1_20140905165630309.jpg','阿什顿飞');

/*Table structure for table `policyindex` */

DROP TABLE IF EXISTS `policyindex`;

CREATE TABLE `policyindex` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tablename` varchar(64) NOT NULL COMMENT '具体内容所在表格',
  `policyname` varchar(256) NOT NULL COMMENT '保单名称',
  `username` varchar(64) NOT NULL COMMENT '保单所属用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `policyindex` */

insert  into `policyindex`(`id`,`tablename`,`policyname`,`username`) values (2,'allproperty','xsailor_财产一切险投保单_20140909174635456','xsailor'),(3,'allproperty','xsailor_财产一切险投保单_20140909175425903','xsailor'),(4,'allproperty','xsailor_机动车投保单_20140909175440516','xsailor'),(5,'allproperty','xsailor_货运险投保单_20140909175539110','xsailor'),(6,'allproperty','xsailor_中小企业一揽子保险委托书_20140909175624095','xsailor'),(7,'allproperty','xsailor_财产一切险投保单_20140909175713697','xsailor'),(8,'allproperty','xsailor_雇主责任险投保单_20140909175805242','xsailor'),(9,'allproperty','xsailor_办公室综合保险投保单_20140909180011391','xsailor');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `role_name` varchar(32) NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`role_id`,`role_name`) values (1,'enterprise_gold'),(2,'bank'),(3,'financial'),(4,'agent'),(5,'manager'),(6,'enterprise_mail');

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
  `goal` int(5) DEFAULT NULL COMMENT '用户积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`name`,`role`,`id`,`password`,`phone`,`realname`,`socialid`,`email`,`goal`) values ('alice',3,3,'111111','18769780002','王二','123456789123456789','shit@163.com',11),('richard',5,4,'111111','18769780003','彰武','123456789123456789','shit@163.com',9),('xsailor',4,5,'111111','18769780004','吴克','123456789123456789','shit@163.com',22),('test1',1,6,'111111','18769788016','大海','123456789123456789','sddskfj@156.com',NULL),('test6',1,11,'111111','12345678934','王二麻子','123456789543245678','198@168.com',NULL),('test9',4,14,'111111','12345678934','王二麻子','123456789543245678','198@168.com',NULL),('test14',2,19,'111111','12345678934','王二麻子','123456789543245678','198@168.com',NULL),('test15',2,20,'111111','12345678934','王二麻子','123456789543245678','198@168.com',NULL),('test26',2,31,'111111','12345678934','王二麻子','123456789543245678','198@168.com',NULL),('test27',2,32,'111111','12345678934','王二麻子','123456789543245678','198@168.com',NULL),('test31',2,36,'111111','12345678934','王二麻子','123456789543245678','198@168.com',NULL),('test32',2,37,'111111','12345678934','王二麻子','123456789543245678','198@168.com',NULL),('tom',6,38,'111111','12345678987','daf','123456789987654321','123@145.com',NULL);

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
  `chucidengjiriqi` char(10) DEFAULT NULL COMMENT '（车辆）初次登记日期',
  `shibiedaima` varchar(16) DEFAULT NULL COMMENT '（车辆）识别代码',
  `fadongjixinghao` varchar(16) DEFAULT NULL COMMENT '（车辆）发动机型号',
  `xinchejiage` double DEFAULT NULL COMMENT '（车辆）新车购置价格',
  `zhengbeizhiliang` double DEFAULT NULL COMMENT '（车辆）整备质量',
  `paiqiliang` double DEFAULT NULL COMMENT '（车辆）排气量',
  `shangnianjiaoqiangxian` varchar(64) DEFAULT NULL COMMENT '上年交强险投保公司',
  `jiaoqiangxianbaodanhao` varchar(32) DEFAULT NULL COMMENT '上年交强险保单号',
  `shangnianshangyexian` varchar(64) DEFAULT NULL COMMENT '上年商业险投保公司',
  `shangyexianbaodanhao` varchar(32) DEFAULT NULL COMMENT '上年商业险保单号',
  `shangyexianxiane` varchar(256) DEFAULT NULL COMMENT '商业险责任限额（合并存储）',
  `baoxianfeixiaoji` varchar(256) DEFAULT NULL COMMENT '保险费小计（合并存储）',
  `shangyebaoxianfeiheji` double DEFAULT NULL COMMENT '商业保险费合计',
  `chechuanshui` double DEFAULT NULL COMMENT '车船税',
  `heji` double DEFAULT NULL COMMENT '合计',
  `shangyebaoxianstartdate` char(10) DEFAULT NULL COMMENT '商业保险开始时间',
  `shangyebaoxianenddate` char(10) DEFAULT NULL COMMENT '商业保险结束时间',
  `jiaoqiangbaoxianstartdate` char(10) DEFAULT NULL COMMENT '交强保险开始时间',
  `jiaoqiangbaoxianenddate` char(10) DEFAULT NULL COMMENT '交强保险结束时间',
  `zhengyijiejue` varchar(128) DEFAULT NULL COMMENT '争议解决方式',
  `jiashiyuanxinxi` varchar(256) DEFAULT NULL COMMENT '驾驶员信息',
  `username` varchar(64) DEFAULT NULL COMMENT '投保账户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `vehicle` */

insert  into `vehicle`(`id`,`beibaoxianrenmingcheng`,`beibaoxianrenzhengjianhaoma`,`beibaoxianrentongxundizhi`,`beibaoxianrenyoubian`,`beibaoxianlianxiren`,`beibaoxianrendianhua`,`beibaoxianrenbangongdianhua`,`beibaoxianrenemail`,`toubaorenmingcheng`,`toubaorenzhengjianhaoma`,`toubaorentongxundizhi`,`toubaorenyoubian`,`toubaorenlianxiren`,`toubaorendianhua`,`toubaorenbangongdianhua`,`toubaorenemail`,`xingshizhengchezhu`,`changpaixinghao`,`hedingzaike`,`haopaihaoma`,`chucidengjiriqi`,`shibiedaima`,`fadongjixinghao`,`xinchejiage`,`zhengbeizhiliang`,`paiqiliang`,`shangnianjiaoqiangxian`,`jiaoqiangxianbaodanhao`,`shangnianshangyexian`,`shangyexianbaodanhao`,`shangyexianxiane`,`baoxianfeixiaoji`,`shangyebaoxianfeiheji`,`chechuanshui`,`heji`,`shangyebaoxianstartdate`,`shangyebaoxianenddate`,`jiaoqiangbaoxianstartdate`,`jiaoqiangbaoxianenddate`,`zhengyijiejue`,`jiashiyuanxinxi`,`username`) values (1,'张氏','123456789987654321','江苏思思洪','223456','王思','18767899098','88765432','1234@163.com','王三','181736453629304920','湖南长沙','345678','山大','12345678901','45678923','45@qq.com','我的','hkdalda',23,'苏kn345','2014-09-09','12434356','alkjs4345',123445,5600,20,'中国平安','asdf123','中国人保','23zasdf',';1223',';12',600,200,1220,'2014-09-09','2014-09-15','alkjs4345','2014-10-22','法院处理','驾驶员信息','xsailor'),(2,'张氏','123456789987654321','江苏思思洪','223456','王思','18767899098','88765432','1234@163.com','王三','181736453629304920','湖南长沙','345678','山大','12345678901','45678923','45@qq.com','我的','hkdalda',23,'苏kn345','2014-09-09','12434356','alkjs4345',123445,5600,20,'中国平安','asdf123','中国人保','23zasdf',';1223',';12',600,200,1220,'2014-09-09','2014-09-15','2014-09-30','2014-10-22','法院处理','驾驶员信息','xsailor'),(3,'张氏','123456789987654321','江苏思思洪','223456','王思','18767899098','88765432','1234@163.com','王三','181736453629304920','湖南长沙','345678','山大','12345678901','45678923','45@qq.com','我的','hkdalda',23,'苏kn345','2014-09-09','12434356','alkjs4345',123445,5600,20,'中国平安','asdf123','中国人保','23zasdf',';1223',';12',600,200,1220,'2014-09-09','2014-09-15','2014-09-30','2014-10-22','法院处理','驾驶员信息','xsailor'),(4,'张氏','123456789987654321','江苏思思洪','223456','王思','18767899098','88765432','1234@163.com','王三','181736453629304920','湖南长沙','345678','山大','12345678901','45678923','45@qq.com','我的','hkdalda',23,'苏kn345','2014-09-09','12434356','alkjs4345',123445,5600,20,'中国平安','asdf123','中国人保','23zasdf',';1223',';12',600,200,1220,'2014-09-09','2014-09-15','2014-09-30','2014-10-22','法院处理','驾驶员信息','xsailor'),(5,'张氏','123456789987654321','江苏思思洪','223456','王思','18767899098','88765432','1234@163.com','王三','181736453629304920','湖南长沙','345678','山大','12345678901','45678923','45@qq.com','我的','hkdalda',23,'苏kn345','2014-09-09','12434356','alkjs4345',123445,5600,20,'中国平安','asdf123','中国人保','23zasdf',';1223',';12',600,200,1220,'2014-09-09','2014-09-15','2014-09-30','2014-10-22','法院处理','驾驶员信息','xsailor'),(6,'张氏','123456789987654321','江苏思思洪','223456','王思','18767899098','88765432','1234@163.com','王三','181736453629304920','湖南长沙','345678','山大','12345678901','45678923','45@qq.com','我的','hkdalda',23,'苏kn345','2014-09-09','12434356','alkjs4345',123445,5600,20,'中国平安','asdf123','中国人保','23zasdf',';1223',';12',600,200,1220,'2014-09-09','2014-09-15','2014-09-30','2014-10-22','法院处理','驾驶员信息','xsailor'),(7,'张氏','123456789987654321','江苏思思洪','223456','王思','18767899098','88765432','1234@163.com','王三','181736453629304920','湖南长沙','345678','山大','12345678901','45678923','45@qq.com','我的','hkdalda',23,'苏kn345','2014-09-09','12434356','alkjs4345',123445,5600,20,'中国平安','asdf123','中国人保','23zasdf',';1223',';12',600,200,1220,'2014-09-09','2014-09-15','2014-09-30','2014-10-22','法院处理','驾驶员信息','xsailor'),(8,'张氏','123456789987654321','江苏思思洪','223456','王思','18767899098','88765432','1234@163.com','王三','181736453629304920','湖南长沙','345678','山大','12345678901','45678923','45@qq.com','我的','hkdalda',23,'苏kn345','2014-09-09','12434356','alkjs4345',123445,5600,20,'中国平安','asdf123','中国人保','23zasdf',';1223',';12',600,200,1220,'2014-09-09','2014-09-15','2014-09-30','2014-10-22','法院处理','驾驶员信息','xsailor'),(9,'张氏','123456789987654321','江苏思思洪','223456','王思','18767899098','88765432','1234@163.com','王三','181736453629304920','湖南长沙','345678','山大','12345678901','45678923','45@qq.com','我的','hkdalda',23,'苏kn345','2014-09-09','12434356','alkjs4345',123445,5600,20,'中国平安','asdf123','中国人保','23zasdf',';1223',';12',600,200,1220,'2014-09-09','2014-09-15','2014-09-30','2014-10-22','法院处理','驾驶员信息','xsailor');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
