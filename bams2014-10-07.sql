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
  `tag` varchar(18) NOT NULL COMMENT '时间戳表示的保单唯一代号',
  PRIMARY KEY (`id`,`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `allproperty` */

insert  into `allproperty`(`toubaorenmingcheng`,`toubaorendizhi`,`toubaorendianhua`,`id`,`toubaorenzuzhijigou`,`beibaoxianrenmingcheng`,`beibaoxianrendizhi`,`beibaoxianrenzuzhijigou`,`beibaoxianrenyingyexingzhi`,`baoxiancaichandizhi`,`youzhengbianma`,`fangwujine`,`jiqishebeijine`,`qitajine`,`cunhuojine`,`feilv`,`baoxianfei`,`baoxianjinexiaoji`,`start_time`,`end_time`,`baoxianfeichina`,`jiaofeishijian`,`fujiatiaokuan`,`tebieyueding`,`zhengyichuli`,`toubaofujian`,`toubaofujianshuliang`,`shifoutouguo`,`lipeijilu`,`toubaorenqianzhang`,`toubaoriqi`,`username`,`tag`) values ('王三','江苏泗洪','12345678901',21,'234545','张氏','江苏宿迁','122334','商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,200,'壹万叁仟四百','2014-08-31','2014-10-10','三百四十五','2014信用卡','asdf','特别约定','zhongcai;泗洪法定仲裁','fengxianpinggu;qita;其他投保附件',3,'shi;1233253465','you;2014-09-30;123;我方;大傻瓜','王三','2014-09-02','xsailor','20140913220528188'),('王三','江苏泗洪','12345678901',22,'234545','张氏','江苏宿迁','122334','商务','江苏宿迁','223456',20001,2343,2345,1233,NULL,345,'壹万叁仟四百','2014-09-02','2014-09-23','三百四十五','2014信用卡','附加条款','特别约定','susong','caicanjine;none',3,'fou;none','you;2014-10-07;123;我方;大傻瓜','王三','2014-10-09','test1','20140913223651346');

/*Table structure for table `answer` */

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
  `id` int(64) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `reply` tinytext COMMENT '问题回答',
  `question_id` int(16) DEFAULT NULL COMMENT '问题id',
  `username` varchar(64) DEFAULT NULL COMMENT '回答给哪个用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `answer` */

insert  into `answer`(`id`,`reply`,`question_id`,`username`) values (15,'反垃圾可舒服',12,'xsailor'),(16,'阿迪锅',13,'xsailor'),(17,'色号',14,'xsailor'),(18,'说大佛告诉',15,'xsailor'),(19,'的撒个',16,'xsailor'),(20,'搜狗',17,'xsailor'),(21,'阿双方的空间',18,'xsailor'),(22,'马克思',19,'xsailor'),(23,'金戈铁马',20,'xsailor'),(25,'的发顺丰',22,'xsailor'),(26,'巨化股份尽快',21,'xsailor'),(27,'讲话稿',24,'test1'),(28,'阿克苏的返回',23,'test1');

/*Table structure for table `case` */

DROP TABLE IF EXISTS `case`;

CREATE TABLE `case` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `baoxiandanhao` varchar(64) NOT NULL COMMENT '保险单号',
  `shigujingguo` tinytext NOT NULL COMMENT '事故经过',
  `username` varchar(64) NOT NULL COMMENT '用户姓名',
  `tel` char(11) NOT NULL COMMENT '联系电话',
  `mark` tinyint(1) DEFAULT '0' COMMENT '是否受理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `case` */

insert  into `case`(`id`,`baoxiandanhao`,`shigujingguo`,`username`,`tel`,`mark`) values (9,'12343253400u945','大海多好','xsailor','12345678911',1),(10,'12343253400u94','啊；顺路快递发','xsailor','12345678911',1),(11,'dfgdghdfghdfg','asfsdfjalfdsasdfa饭卡涉及到快乐飞','xsailor','12345678955',1),(14,'37435645675467','阿斯顿福建法拉克四季度非','xsailor','12345678956',1),(15,'3454756','阿雷克斯的减肥','xsailor','12345678945',1),(16,'13548643584','拉开金士顿风口浪尖；爱上','xsailor','12345678955',1),(17,'154885435465','撒范德萨双方','xsailor','12345678955',1),(18,'132156498745','虽然他是大法官吧','xsailor','12345676545',1),(19,'235346546456','阿什顿发j678ufgnc','xsailor','12345676545',1),(20,'534546546','圣达菲规范化','xsailor','12345678955',1),(21,'365686775','3456547给双方将规划','xsailor','12345678945',1),(22,'154882345435','asdfasdf346ertgdfgdgxcfv','xsailor','12345676545',0);

/*Table structure for table `casedeal` */

DROP TABLE IF EXISTS `casedeal`;

CREATE TABLE `casedeal` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `policyname` varchar(64) DEFAULT NULL COMMENT '保单名',
  `policynum` varchar(64) DEFAULT NULL COMMENT '保单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `casedeal` */

insert  into `casedeal`(`id`,`username`,`policyname`,`policynum`) values (4,'xsailor','按时交付的','3213567879'),(6,'xsailor','凯乐科技','123'),(7,'test1','他为为','256'),(8,'xsailor','qweere','258'),(9,'xsailor','ertetttruyt7ui','269'),(10,'xsailor','bhye','2546'),(11,'xsailor','23436546567','26574'),(12,'xsailor','sdfasdf','2548978'),(13,'xsailor','强大的中国','25478963'),(14,'xsailor','skjifgaljsdflg','896457'),(16,'xsailor','你养','2547896324'),(17,'xsailor','大是大非','156487');

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
  `tag` varchar(18) NOT NULL COMMENT '时间戳表示的保单唯一代号',
  PRIMARY KEY (`id`,`tag`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `employerduty` */

insert  into `employerduty`(`id`,`toubaorenmingcheng`,`toubaorendizhi`,`toubaorenlianxiren`,`toubaorendianhua`,`beibaoxianrenmingcheng`,`beibaoxianrendizhi`,`yingyexingzhi`,`beizuzhijigoudaima`,`canjiashehuibaoxian`,`guyuangongzhong`,`guyuanrenshu`,`peichangsiwang`,`peichangyiliao`,`baoxianfeilv`,`baoxianfei`,`start_time`,`end_time`,`tebieyueding`,`fufeiriqi`,`sifaguanxia`,`zhengyichuli`,`toubaorenqianzhang`,`toubaoriqi`,`username`,`tag`) values (5,'王三','江苏泗洪','山大','12345678901','张氏','江苏宿迁','商务','hgfjhgfj',1,'职员;职员2;职员3;职员4;职员5;','35;23;34;45;56;','10000;23435;57567;435435;34654;','1223;4324;4545;6565;6787;',NULL,345,'2014-09-01','2014-09-17','特别约定','2014-10-07','司法管辖','zhongcai;泗洪法定仲裁','王三','2014-09-30','xsailor','20140913221640474');

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
  `tag` varchar(18) NOT NULL COMMENT '时间戳表示的保单唯一代号',
  PRIMARY KEY (`id`,`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `enterprisepackage` */

insert  into `enterprisepackage`(`id`,`weituoren`,`dianhua`,`lianxiren`,`enddate`,`startdate`,`kexuanxianzhong`,`baoxiangongsi`,`weituorenzhucedizhi`,`weituorenfadingdaibiaoren`,`shoutuorenzhucedizhi`,`shoutuorenfadingdaibiao`,`weituorenqianzhang`,`tianbiaoriqi`,`username`,`tag`) values (25,'大哥','12212345678','阿道夫','2014-09-02','2014-09-30',' 雇主责任保险;雇员忠诚保险;','华泰','济南市高新区舜华路1500号','的萨菲','济南市高新区舜华路1500号','人员','大哥','2014-09-19','xsailor','20140913222036475');

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
  `tag` varchar(18) NOT NULL COMMENT '时间戳表示的保单唯一代号',
  PRIMARY KEY (`id`,`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `family` */

insert  into `family`(`id`,`baoxiancaichandizhi`,`caichanzonghebaoxian`,`quantijiatingchengyuan`,`jiatingchengyuanleixing`,`yiwaiyiliaobaoxianheji`,`yiwaishanghaiyiliao`,`chucichamingzhongji`,`menjizhen`,`jibingzhuyuan`,`startdate`,`enddate`,`baoxianfeizongji`,`username`,`baoxianfeizongjichina`,`tag`) values (10,'江苏宿迁',1,1,'fuqi',1000,1,0,0,0,'2014-09-23','2014-10-09',1150,'xsailor','四万八千','20140913215115802'),(11,'江苏宿迁',1,1,'fuqi',1000,1,1,1,1,'2014-09-23','2014-10-09',1150,'xsailor','四万八千','20140913220256994'),(12,'江苏宿迁',1,1,'fuqi',800,1,1,0,1,'2014-09-23','2014-10-09',950,'xsailor','四万八千','20140913220342566');

/*Table structure for table `feilv` */

DROP TABLE IF EXISTS `feilv`;

CREATE TABLE `feilv` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `description` varchar(64) NOT NULL COMMENT '费率所属保单',
  `feilv` int(11) NOT NULL COMMENT '费率（千分制整数）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `feilv` */

insert  into `feilv`(`id`,`description`,`feilv`) values (1,'财产险投保单费率',67),(2,'货物运输保险投保单费率',70),(3,'雇主责任险投保单费率',68),(4,'(全家)意外伤害费率',54),(5,'(全家)意外伤害医疗费率',35),(6,'(全家)投保后初次查明重疾费率',45),(7,'(全家)门急诊费率',20),(8,'(全家)疾病住院费率',66);

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `filename` varchar(128) NOT NULL COMMENT '上传的文件名称',
  `fileurl` varchar(256) NOT NULL COMMENT '文件URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

/*Data for the table `file` */

insert  into `file`(`id`,`filename`,`fileurl`) values (50,'车险投保流程.doc','http://localhost:8080/BAMS/file/manager/files/车险投保流程.doc'),(51,'机动车投保单.docx','http://localhost:8080/BAMS/file/manager/files/机动车投保单.docx'),(52,'家庭无忧保险投保流程.doc','http://localhost:8080/BAMS/file/manager/files/家庭无忧保险投保流程.doc'),(53,'全家无忧投保单(共享).doc','http://localhost:8080/BAMS/file/manager/files/全家无忧投保单(共享).doc'),(55,'办公室综合保险投保流程.doc','http://localhost:8080/BAMS/file/manager/files/办公室综合保险投保流程.doc'),(56,'财产险类投保流程.doc','http://localhost:8080/BAMS/file/manager/files/财产险类投保流程.doc'),(57,'财产一切险投保单（共享）.doc','http://localhost:8080/BAMS/file/manager/files/财产一切险投保单（共享）.doc'),(58,'雇主责任险投保流程.doc','http://localhost:8080/BAMS/file/manager/files/雇主责任险投保流程.doc'),(60,'货运险投保单.doc','http://localhost:8080/BAMS/file/manager/files/货运险投保单.doc'),(62,'中小企业一揽子保险委托书.doc','http://localhost:8080/BAMS/file/manager/files/中小企业一揽子保险委托书.doc'),(63,'ZEALER问答牛人推荐模版.docx','http://localhost:8080/BAMS/file/manager/files/ZEALER问答牛人推荐模版.docx');

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
  `tag` varchar(18) NOT NULL COMMENT '时间戳表示的保单唯一代号',
  PRIMARY KEY (`id`,`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `freight` */

insert  into `freight`(`id`,`fax_from`,`fax_to`,`beibaoxianren`,`fapiaohao`,`fapiaoriqi`,`jinkouhetonghao`,`xinyongzhenghao`,`baozhuangshuliang`,`baoxianhuowumingcheng`,`biaoji`,`jiagetiaojian`,`fapiaojine`,`baoxianjine`,`feilv`,`baoxianfei`,`chuanming`,`jianzaonianfen`,`chuanqi`,`qiyunriqi`,`qiyungang`,`via`,`mudigang`,`chengbaoxianbie`,`note`,`toubaorenqianzhang`,`tianbiaoriqi`,`username`,`tag`) values (6,'0634—6192778','0634—6192779','林夕','NO 02995606','2014-09-01','NO 12132432','20 DOCUMENTARY CREDIT NUMBER',34,'苹果手机','易碎品','无',1345,100000,NULL,200,'江苏号','1987','中国','2014-09-01','青岛港','福建港','西班牙马德里港','货运商业险','好样的','王三','2014-09-22','xsailor','20140913221359579');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `description` varchar(256) NOT NULL COMMENT '商品描述',
  `value` int(8) NOT NULL COMMENT '商品价值',
  `imageURL` varchar(256) NOT NULL COMMENT '图片链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`id`,`description`,`value`,`imageURL`) values (101,'苹果',23,'http://localhost:8080/BAMS/file/manager/image/20141003112231067.jpg'),(102,'香蕉',3,'http://localhost:8080/BAMS/file/manager/image/20141003112231075.jpg'),(103,'鼠标',5,'http://localhost:8080/BAMS/file/manager/image/20141003112231082.jpg'),(105,'电脑',346,'http://localhost:8080/BAMS/file/manager/image/20141003112424955.jpg'),(109,'本子',53,'http://localhost:8080/BAMS/file/manager/image/20141003113524286.jpg'),(112,'窗帘',6,'http://localhost:8080/BAMS/file/manager/image/20141003114828431.jpg'),(113,'门',45,'http://localhost:8080/BAMS/file/manager/image/20141003114828440.jpg'),(114,'螃蟹',8,'http://localhost:8080/BAMS/file/manager/image/20141003114828445.jpg'),(115,'花生',23,'http://localhost:8080/BAMS/file/manager/image/20141003114935183.jpg'),(116,'小麦',34,'http://localhost:8080/BAMS/file/manager/image/20141003114935191.jpg'),(117,'水稻',45,'http://localhost:8080/BAMS/file/manager/image/20141003114935199.jpg'),(118,'吉他',4,'http://localhost:8080/BAMS/file/manager/image/20141003120330673.jpg'),(119,'123',12,'http://localhost:8080/BAMS/file/manager/image/20141003141336851.jpg'),(120,'236',25,'http://localhost:8080/BAMS/file/manager/image/20141003141352759.jpg'),(121,'789',123,'http://localhost:8080/BAMS/file/manager/image/20141003145610505.jpg'),(123,'插座',3,'http://localhost:8080/BAMS/file/manager/image/20141005164606132.jpg'),(124,'小米1',333,'http://localhost:8080/BAMS/file/manager/image/20141005164729692.jpg'),(125,'小米2',444,'http://localhost:8080/BAMS/file/manager/image/20141005164729704.jpg'),(126,'小米3',555,'http://localhost:8080/BAMS/file/manager/image/20141005164729709.jpg'),(127,'房顶上个',22,'http://localhost:8080/BAMS/file/manager/image/20141005174246203.jpg'),(128,'2',24,'http://localhost:8080/BAMS/file/manager/image/20141005174428457.jpg');

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
  `tag` varchar(18) NOT NULL COMMENT '时间戳表示的保单唯一代号',
  PRIMARY KEY (`id`,`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `office` */

insert  into `office`(`id`,`toubaorenmingcheng`,`toubaorendizhi`,`lianxiren`,`shineizhuanghuang`,`bangongjiaju`,`bangongdianzi`,`caichansunshixianadd`,`caichansunshixianaddbaoe`,`tuantiyiwaixianzengjiarenshu`,`tuantiyiwaixianzengjiabaofei`,`zongbaofei`,`toubaorenqianzhang`,`toubaoriqi`,`tuantiyiwaishanghaimingdan`,`tuantiyiwaishanghaishenfenzheng`,`gaocengchailvmingdan`,`gaocengchailvshenfengzheng`,`username`,`tag`) values (19,'王三','江苏泗洪','阿道夫',8,7,5,10,100,12,480,1030,'王三','2014-09-05','大海;大海2;大海3;大海4;大海5;大海6;大海7;大海8;大海9;大海10;','123456111111111111;123456111111111111;123456111111111112;123456111111111115;123456111111111117;123456111111144111;123456111111111167;123456111117811111;123456111111111111;123456111111111111;','阿什顿飞;阿什顿飞2;','111122223333333333;111122226733333333;','xsailor','20140913221921554');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `address` varchar(256) NOT NULL COMMENT '订单发往地址',
  `goods_id` int(16) NOT NULL COMMENT '订单中的商品编号',
  `username` varchar(64) NOT NULL COMMENT '订单用户名',
  `code` varchar(64) NOT NULL COMMENT '订单编号',
  `mark` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否受理0未，1已',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`id`,`address`,`goods_id`,`username`,`code`,`mark`) values (2,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',103,'xsailor','9420141003120844019',0),(3,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',113,'xsailor','6720141003122037936',1),(5,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',112,'test1','9120141006125858624',1),(6,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',103,'test1','8620141006165059133',1),(7,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',102,'test1','7620141006165214337',1),(8,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',101,'test1','3620141006165221063',1),(9,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',112,'test1','9220141006165227528',1),(10,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',109,'test1','9220141006165234095',1),(11,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',105,'test1','1220141006165242669',1),(12,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',115,'test1','3620141006165248918',1),(13,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',114,'test1','3120141006165256929',1),(14,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',113,'test1','1520141006165307545',1),(15,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',118,'test1','3620141006165315343',0),(16,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',123,'test1','1220141006165321667',1),(17,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',123,'test1','6720141006165514011',1),(18,'江苏省宿迁市泗洪县双沟镇汤南小区二期9号楼4单元201',103,'xsailor','9020141006181024503',0);

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `picture_url` varchar(128) NOT NULL COMMENT '图片url',
  `picture_owner` varchar(64) NOT NULL COMMENT '图片所属用户',
  `picture_name` varchar(128) NOT NULL COMMENT '图片名称',
  `description` tinytext COMMENT '图片说明',
  `baoxiandanhao` varchar(64) DEFAULT NULL COMMENT '保险单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

insert  into `picture`(`id`,`picture_url`,`picture_owner`,`picture_name`,`description`,`baoxiandanhao`) values (35,'http://localhost:8080/BAMS/file/user/upload_image/20140930133012051.jpg','xsailor','20140930133012051.jpg','泛光灯','123'),(39,'http://localhost:8080/BAMS/file/user/upload_image/20141005133739141.jpg','xsailor','20141005133739141.jpg','大三房','3213567879'),(41,'http://localhost:8080/BAMS/file/user/upload_image/20141005144122990.jpg','xsailor','20141005144122990.jpg','地方','123'),(42,'http://localhost:8080/BAMS/file/user/upload_image/20141005144206976.jpg','test1','20141005144206976.jpg','苹果','256'),(43,'http://localhost:8080/BAMS/file/user/upload_image/20141005144227768.jpg','xsailor','20141005144227768.jpg','阿道夫','258'),(44,'http://localhost:8080/BAMS/file/user/upload_image/20141005144309352.jpg','xsailor','20141005144309352.jpg','打的费','269'),(45,'http://localhost:8080/BAMS/file/user/upload_image/20141005144309356.jpg','xsailor','20141005144309356.jpg','dasgsdf','269'),(46,'http://localhost:8080/BAMS/file/user/upload_image/20141005144402515.jpg','xsailor','20141005144402515.jpg','lpoiuy','2546'),(47,'http://localhost:8080/BAMS/file/user/upload_image/20141005144402523.jpg','xsailor','20141005144402523.jpg','阿道夫fdg','2546'),(48,'http://localhost:8080/BAMS/file/user/upload_image/20141005144402530.jpg','xsailor','20141005144402530.jpg','asdfasgd','2546'),(49,'http://localhost:8080/BAMS/file/user/upload_image/20141005144426000.jpg','xsailor','20141005144426000.jpg','bgyu','26574'),(50,'http://localhost:8080/BAMS/file/user/upload_image/20141005144459102.jpg','xsailor','20141005144459102.jpg','阿道夫','2548978'),(51,'http://localhost:8080/BAMS/file/user/upload_image/20141005144547102.jpg','xsailor','20141005144547102.jpg','大沙发','25478963'),(52,'http://localhost:8080/BAMS/file/user/upload_image/20141005144610103.jpg','xsailor','20141005144610103.jpg','sdfasdfd大大','896457'),(54,'http://localhost:8080/BAMS/file/user/upload_image/20141005144656706.jpg','xsailor','20141005144656706.jpg','苹果','2547896324'),(55,'http://localhost:8080/BAMS/file/user/upload_image/20141005145204468.jpg','xsailor','20141005145204468.jpg','牙膏','156487'),(56,'http://localhost:8080/BAMS/file/user/upload_image/20141005171529250.jpg','xsailor','20141005171529250.jpg','的说法是','12343253400u94'),(57,'http://localhost:8080/BAMS/file/user/upload_image/20141007104607766.jpg','xsailor','20141007104607766.jpg','阿什顿飞','dfgdghdfghdfg'),(58,'http://localhost:8080/BAMS/file/user/upload_image/20141007110643439.jpg','xsailor','20141007110643439.jpg','泛光灯','87364872345'),(59,'http://localhost:8080/BAMS/file/user/upload_image/20141007110733495.jpg','xsailor','20141007110733495.jpg','的说法是大沙发','83746583645'),(60,'http://localhost:8080/BAMS/file/user/upload_image/20141007112149120.jpg','xsailor','20141007112149120.jpg','阿斯顿发生大','37435645675467'),(61,'http://localhost:8080/BAMS/file/user/upload_image/20141007114731510.jpg','xsailor','20141007114731510.jpg','雕刻','3454756'),(62,'http://localhost:8080/BAMS/file/user/upload_image/20141007114753257.jpg','xsailor','20141007114753257.jpg','234543','13548643584'),(63,'http://localhost:8080/BAMS/file/user/upload_image/20141007114814105.jpg','xsailor','20141007114814105.jpg','圣达菲','154885435465'),(64,'http://localhost:8080/BAMS/file/user/upload_image/20141007114848327.jpg','xsailor','20141007114848327.jpg','桃源居','132156498745'),(65,'http://localhost:8080/BAMS/file/user/upload_image/20141007114914765.jpg','xsailor','20141007114914765.jpg','的说法是大沙发','235346546456'),(66,'http://localhost:8080/BAMS/file/user/upload_image/20141007114948934.jpg','xsailor','20141007114948934.jpg','圣达菲','534546546'),(67,'http://localhost:8080/BAMS/file/user/upload_image/20141007115005387.jpg','xsailor','20141007115005387.jpg','234543','365686775'),(68,'http://localhost:8080/BAMS/file/user/upload_image/20141007115327072.jpg','xsailor','20141007115327072.jpg','圣达菲','154882345435');

/*Table structure for table `policyindex` */

DROP TABLE IF EXISTS `policyindex`;

CREATE TABLE `policyindex` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `tablename` varchar(64) NOT NULL COMMENT '具体内容所在表格',
  `policyname` varchar(256) NOT NULL COMMENT '保单名称',
  `username` varchar(64) NOT NULL COMMENT '保单所属用户',
  `tag` varchar(18) NOT NULL COMMENT '时间戳表示的保单唯一代号',
  PRIMARY KEY (`id`,`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `policyindex` */

insert  into `policyindex`(`id`,`tablename`,`policyname`,`username`,`tag`) values (27,'vehicle','xsailor_机动车投保单_20140913214433657','xsailor','20140913214433657'),(28,'family','xsailor_全家无忧投保单_20140913215115802','xsailor','20140913215115802'),(29,'family','xsailor_全家无忧投保单_20140913220256994','xsailor','20140913220256994'),(30,'family','xsailor_全家无忧投保单_20140913220342566','xsailor','20140913220342566'),(31,'allproperty','xsailor_财产一切险投保单_20140913220528188','xsailor','20140913220528188'),(32,'freight','xsailor_货运险投保单_20140913221359579','xsailor','20140913221359579'),(33,'employerduty','xsailor_雇主责任险投保单_20140913221640474','xsailor','20140913221640474'),(34,'office','xsailor_办公室综合保险投保单_20140913221921554','xsailor','20140913221921554'),(35,'enterprisepackage','xsailor_中小企业一揽子保险委托书_20140913222036475','xsailor','20140913222036475'),(36,'allproperty','test1_财产一切险投保单_20140913223651346','test1','20140913223651346');

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `company` varchar(256) DEFAULT NULL COMMENT '单位名称',
  `people` varchar(64) DEFAULT NULL COMMENT '联系人',
  `tel` char(11) DEFAULT NULL COMMENT '电话',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `content` tinytext COMMENT '问题内容',
  `mark` tinyint(1) DEFAULT '0' COMMENT '是否已经回答',
  `username` varchar(64) DEFAULT NULL COMMENT '提问者',
  `title` varchar(64) DEFAULT NULL COMMENT '标题',
  `fax` varchar(64) DEFAULT NULL COMMENT '传真',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `question` */

insert  into `question`(`id`,`company`,`people`,`tel`,`email`,`content`,`mark`,`username`,`title`,`fax`) values (12,'江苏思思洪','小二','12345678911','xsailpor@135.com','了开始将对方',1,'xsailor','汽车保险','234324-45354'),(13,'爱使股份','苦厄','12345678911','xsailr@135.com','奥斯卡就四大金刚阿斯顿发生大发',1,'xsailor','去哦诶','234324-45354'),(14,'半年报','二人','12345678955','xsailpor@135.com','阿空加瓜是大法官ib',1,'xsailor','一抬头','234324-45354'),(15,'大发光火','形成v牛逼酷热他','12345678956','xsailpvvr@135.com','地方该功能，细节威尔科技',1,'xsailor','鹅肉圆通','21548787-9976'),(16,'宿迁包装长','张明','12345678956','xsailpor@135.com','新疆岩土体育',1,'xsailor','大海','大沙发'),(17,'按时发生地方','表现出v吧','12345676545','xsailpor@135.com','萨菲工程\r\n算快乐的房间了开始地方',1,'xsailor','很大','21548787-9976'),(18,'你很好，但是我不知打','圣达菲','12345678911','xsailpvvr@135.com','什么都不要所',1,'xsailor','所过的话一定算数','21548787-9976'),(19,'富士康','嘻嘻','12345676545','xsailpor@135.com','深刻的减肥给快乐',1,'xsailor','资本','21548787-9976'),(20,'啊了开始将对方','按时间段开房间阿','12345678956','xsailpor@135.com','玩而她居然还能对数据库了覆盖',1,'xsailor','想当年','21548787-9976'),(21,'美帝','奥巴马','12345676545','xsailpor@135.com','美帝国主义',1,'xsailor','盟主','234324-4535435'),(22,'俄罗斯联邦','普京','12345678956','xsailpor@135.com','白杨-M弹道导弹核潜艇',1,'xsailor','俄罗斯','21548787-9976'),(23,'丹甫股份','奥巴马','12345678955','xsailpvvr@135.com','课本上的',1,'test1','啥地方尽快','234324-4535435'),(24,'聚会呀','撒旦额','12345678956','xsailpvvr@135.com','旅客及时答复按揉',1,'test1','俄罗斯','21548787-9976'),(25,'丹甫股份','嘻嘻','12345678956','xsailpvvr@135.com','是否更换',0,'test1','俄罗斯','234324-4535435');

/*Table structure for table `replycase` */

DROP TABLE IF EXISTS `replycase`;

CREATE TABLE `replycase` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `case_id` int(16) NOT NULL COMMENT '事故id',
  `content` tinytext NOT NULL COMMENT '回复内容',
  `username` varchar(64) NOT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `replycase` */

insert  into `replycase`(`id`,`case_id`,`content`,`username`) values (10,9,'艾丝凡','xsailor'),(11,10,'该死的风格','xsailor'),(12,11,'给说大佛告诉','xsailor'),(13,14,'唯一让团队呀','xsailor'),(14,15,'色让他感受到更划算的法规和','xsailor'),(15,16,'水调歌头是大法官','xsailor'),(16,17,'阿双方大厦等法定是','xsailor'),(17,18,'啊沙发上反复','xsailor'),(18,19,'额度已建成附睾结核','xsailor'),(19,20,'色影合同费用','xsailor'),(20,21,'呻吟号法规和','xsailor');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `role_name` varchar(32) NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`role_id`,`role_name`) values (1,'enterprise_gold'),(2,'bank'),(3,'financial'),(4,'agent'),(6,'enterprise_mail');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`name`,`role`,`id`,`password`,`phone`,`realname`,`socialid`,`email`,`goal`) values ('alice',3,3,'111111','18769780002','王二','123456789123456789','shit@163.com',8),('xsailor',4,5,'111111','18769780004','吴克','123456789123456789','shit@163.com',41),('test1',1,6,'111111','18769788016','大海','123456789123456789','sddskfj@156.com',701),('test6',1,11,'111111','12345678934','王二麻子','123456789543245678','198@168.com',34),('test9',4,14,'111111','12345678934','王二麻子','123456789543245678','198@168.com',56),('test14',2,19,'111111','12345678934','王二麻子','123456789543245678','198@168.com',22),('test15',2,20,'111111','12345678934','王二麻子','123456789543245678','198@168.com',36),('test26',2,31,'111111','12345678934','王二麻子','123456789543245678','198@168.com',22),('test32',2,37,'111111','12345678934','王二麻子','123456789543245678','198@168.com',25),('tom',6,38,'111111','12345678987','daf','123456789987654321','123@145.com',258),('Friend',4,39,'111111','12345678767','大哥','122222222222223333','xsailor51@345.com',23),('shang',6,40,'111111','18765437680','易中天','234567654567898789','sdf@165.com',89),('xsailor2',4,41,'111111','12345678954','dasdfa','321321321312250213','xsailpvvr@135.com',NULL);

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
  `tag` varchar(18) NOT NULL COMMENT '时间戳表示的保单唯一代号',
  PRIMARY KEY (`id`,`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `vehicle` */

insert  into `vehicle`(`id`,`beibaoxianrenmingcheng`,`beibaoxianrenzhengjianhaoma`,`beibaoxianrentongxundizhi`,`beibaoxianrenyoubian`,`beibaoxianlianxiren`,`beibaoxianrendianhua`,`beibaoxianrenbangongdianhua`,`beibaoxianrenemail`,`toubaorenmingcheng`,`toubaorenzhengjianhaoma`,`toubaorentongxundizhi`,`toubaorenyoubian`,`toubaorenlianxiren`,`toubaorendianhua`,`toubaorenbangongdianhua`,`toubaorenemail`,`xingshizhengchezhu`,`changpaixinghao`,`hedingzaike`,`haopaihaoma`,`chucidengjiriqi`,`shibiedaima`,`fadongjixinghao`,`xinchejiage`,`zhengbeizhiliang`,`paiqiliang`,`shangnianjiaoqiangxian`,`jiaoqiangxianbaodanhao`,`shangnianshangyexian`,`shangyexianbaodanhao`,`shangyexianxiane`,`baoxianfeixiaoji`,`shangyebaoxianfeiheji`,`chechuanshui`,`heji`,`shangyebaoxianstartdate`,`shangyebaoxianenddate`,`jiaoqiangbaoxianstartdate`,`jiaoqiangbaoxianenddate`,`zhengyijiejue`,`jiashiyuanxinxi`,`username`,`tag`) values (18,'张氏','111111111111112222','江苏思思洪','223456','王思','18767899098','88765432','1234@163.com','王三','181736453629304920','湖南长沙','345678','山大','12345678901','45678923','45@qq.com','我的','hkdalda',23,'苏kn345','2014-09-02','12434356','alkjs4345',123445,5600,20,'中国平安','asdf123','中国人保','23zasdf','1454;3456;zero;zero;zero;zero;zero;zero;zero;zero;zero;zero;','454;676;zero;zero;zero;zero;zero;zero;zero;zero;zero;zero;',6000,3456,46565,'2014-09-29','2014-10-02','2014-10-07','2014-10-08','法院处理','驾驶员信息','xsailor','20140913214433657');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
