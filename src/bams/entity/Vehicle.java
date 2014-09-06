package bams.entity;


public class Vehicle {

	/*
	 * 机动车投保单
	 * @author xsailor
	 */
	//id
	private int id;
	//被保险人名称
	private String beibaoxianrenmingcheng;
	//身份证号码
	private String beibaoxianrenzhengjianhaoma;
	//被保险人通讯地址
	private String beibaoxianrentongxundizhi;
	//被保险人邮政编码
	private String beibaoxianrenyoubian;
	//被保险人联系人名称
	private String beibaoxianlianxiren;
	//被保险人联系人手机
	private String beibaoxianrendianhua;
	//被保险人联系人办公电话
	private String beibaoxianrenbangongdianhua;
	//被保险人联系人邮箱
	private String beibaoxianrenemail;
	//投保人名称
	private String toubaorenmingcheng;
	//投保人身份证号码
	private String toubaorenzhengjianhaoma;
	//投保人通讯地址
	private String toubaorentongxundizhi;
	//投保人邮政编码
	private String toubaorenyoubian;
	//投保人联系人名称
	private String toubaorenlianxiren;
	//投保人联系人手机
	private String toubaorendianhua;
	//投保人联系人办公电话
	private String toubaorenbangongdianhua;
	//投保人联系人邮箱
	private String toubaorenemail;
	//行驶证车主
	private String xingshizhengchezhu;
	//（车辆）厂牌型号
	private String changpaixinghao;
	//（车辆）核定载客
	private int hedingzaike;
	//（车辆）号牌号码
	private String haopaihaoma;
	//（车辆）初次登记日期
	private String chucidengjiriqi;
	//（车辆）识别代码
	private String shibiedaima;
	//（车辆）发动机型号
	private String fadongjixinghao;
	//（车辆）新车购置价格
	private double xinchejiage;
	//（车辆）整备质量
	private double zhengbeizhiliang;
	//（车辆）排气量
	private double paiqiliang;
	//上年交强险投保公司
	private String shangnianjiaoqiangxian;
	//上年交强险保单号
	private String jiaoqiangxianbaodanhao;
	//上年商业险投保公司
	private String shangnianshangyexian;
	//上年商业险保单号
	private String shangyexianbaodanhao;
	//商业险责任限额（合并存储）
	private String shangyexianxiane;
	//保险费小计
	private String baoxianfeixiaoji;
	//商业保险费合计
	private double shangyebaoxianfeiheji;
	//车船税
	private double chechuanshui;
	//合计
	private double heji;

	//商业保险开始时间
	private String shangyebaoxianstartdate;
	//商业保险结束时间
	private String shangyebaoxianenddate;
	//交强保险开始时间
	private String jiaoqiangbaoxianstartdate;
	//交强保险结束时间
	private String jiaoqiangbaoxianenddate;
	//争议解决方式
	private String zhengyijiejue;
	//驾驶员信息
	private String jiashiyuanxinxi;
	//投保账户名称
	private String username;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBeibaoxianrenmingcheng() {
		return beibaoxianrenmingcheng;
	}
	public void setBeibaoxianrenmingcheng(String beibaoxianrenmingcheng) {
		this.beibaoxianrenmingcheng = beibaoxianrenmingcheng;
	}
	public String getBeibaoxianrenzhengjianhaoma() {
		return beibaoxianrenzhengjianhaoma;
	}
	public void setBeibaoxianrenzhengjianhaoma(String beibaoxianrenzhengjianhaoma) {
		this.beibaoxianrenzhengjianhaoma = beibaoxianrenzhengjianhaoma;
	}
	public String getBeibaoxianrentongxundizhi() {
		return beibaoxianrentongxundizhi;
	}
	public void setBeibaoxianrentongxundizhi(String beibaoxianrentongxundizhi) {
		this.beibaoxianrentongxundizhi = beibaoxianrentongxundizhi;
	}
	public String getBeibaoxianrenyoubian() {
		return beibaoxianrenyoubian;
	}
	public void setBeibaoxianrenyoubian(String beibaoxianrenyoubian) {
		this.beibaoxianrenyoubian = beibaoxianrenyoubian;
	}
	public String getBeibaoxianlianxiren() {
		return beibaoxianlianxiren;
	}
	public void setBeibaoxianlianxiren(String beibaoxianlianxiren) {
		this.beibaoxianlianxiren = beibaoxianlianxiren;
	}
	public String getBeibaoxianrendianhua() {
		return beibaoxianrendianhua;
	}
	public void setBeibaoxianrendianhua(String beibaoxianrendianhua) {
		this.beibaoxianrendianhua = beibaoxianrendianhua;
	}
	public String getBeibaoxianrenbangongdianhua() {
		return beibaoxianrenbangongdianhua;
	}
	public void setBeibaoxianrenbangongdianhua(String beibaoxianrenbangongdianhua) {
		this.beibaoxianrenbangongdianhua = beibaoxianrenbangongdianhua;
	}
	public String getBeibaoxianrenemail() {
		return beibaoxianrenemail;
	}
	public void setBeibaoxianrenemail(String beibaoxianrenemail) {
		this.beibaoxianrenemail = beibaoxianrenemail;
	}
	public String getToubaorenmingcheng() {
		return toubaorenmingcheng;
	}
	public void setToubaorenmingcheng(String toubaorenmingcheng) {
		this.toubaorenmingcheng = toubaorenmingcheng;
	}
	public String getToubaorenzhengjianhaoma() {
		return toubaorenzhengjianhaoma;
	}
	public void setToubaorenzhengjianhaoma(String toubaorenzhengjianhaoma) {
		this.toubaorenzhengjianhaoma = toubaorenzhengjianhaoma;
	}
	public String getToubaorentongxundizhi() {
		return toubaorentongxundizhi;
	}
	public void setToubaorentongxundizhi(String toubaorentongxundizhi) {
		this.toubaorentongxundizhi = toubaorentongxundizhi;
	}
	public String getToubaorenyoubian() {
		return toubaorenyoubian;
	}
	public void setToubaorenyoubian(String toubaorenyoubian) {
		this.toubaorenyoubian = toubaorenyoubian;
	}
	public String getToubaorenlianxiren() {
		return toubaorenlianxiren;
	}
	public void setToubaorenlianxiren(String toubaorenlianxiren) {
		this.toubaorenlianxiren = toubaorenlianxiren;
	}
	public String getToubaorendianhua() {
		return toubaorendianhua;
	}
	public void setToubaorendianhua(String toubaorendianhua) {
		this.toubaorendianhua = toubaorendianhua;
	}
	public String getToubaorenbangongdianhua() {
		return toubaorenbangongdianhua;
	}
	public void setToubaorenbangongdianhua(String toubaorenbangongdianhua) {
		this.toubaorenbangongdianhua = toubaorenbangongdianhua;
	}
	public String getToubaorenemail() {
		return toubaorenemail;
	}
	public void setToubaorenemail(String toubaorenemail) {
		this.toubaorenemail = toubaorenemail;
	}
	public String getXingshizhengchezhu() {
		return xingshizhengchezhu;
	}
	public void setXingshizhengchezhu(String xingshizhengchezhu) {
		this.xingshizhengchezhu = xingshizhengchezhu;
	}
	public String getChangpaixinghao() {
		return changpaixinghao;
	}
	public void setChangpaixinghao(String changpaixinghao) {
		this.changpaixinghao = changpaixinghao;
	}
	public int getHedingzaike() {
		return hedingzaike;
	}
	public void setHedingzaike(int hedingzaike) {
		this.hedingzaike = hedingzaike;
	}
	public String getHaopaihaoma() {
		return haopaihaoma;
	}
	public void setHaopaihaoma(String haopaihaoma) {
		this.haopaihaoma = haopaihaoma;
	}
	
	public String getShibiedaima() {
		return shibiedaima;
	}
	public void setShibiedaima(String shibiedaima) {
		this.shibiedaima = shibiedaima;
	}
	public String getFadongjixinghao() {
		return fadongjixinghao;
	}
	public void setFadongjixinghao(String fadongjixinghao) {
		this.fadongjixinghao = fadongjixinghao;
	}
	public double getXinchejiage() {
		return xinchejiage;
	}
	public void setXinchejiage(double xinchejiage) {
		this.xinchejiage = xinchejiage;
	}
	
	public double getPaiqiliang() {
		return paiqiliang;
	}
	public void setPaiqiliang(double paiqiliang) {
		this.paiqiliang = paiqiliang;
	}
	public String getShangnianjiaoqiangxian() {
		return shangnianjiaoqiangxian;
	}
	public void setShangnianjiaoqiangxian(String shangnianjiaoqiangxian) {
		this.shangnianjiaoqiangxian = shangnianjiaoqiangxian;
	}
	public String getJiaoqiangxianbaodanhao() {
		return jiaoqiangxianbaodanhao;
	}
	public void setJiaoqiangxianbaodanhao(String jiaoqiangxianbaodanhao) {
		this.jiaoqiangxianbaodanhao = jiaoqiangxianbaodanhao;
	}
	public String getShangnianshangyexian() {
		return shangnianshangyexian;
	}
	public void setShangnianshangyexian(String shangnianshangyexian) {
		this.shangnianshangyexian = shangnianshangyexian;
	}
	public String getShangyexianbaodanhao() {
		return shangyexianbaodanhao;
	}
	public void setShangyexianbaodanhao(String shangyexianbaodanhao) {
		this.shangyexianbaodanhao = shangyexianbaodanhao;
	}
	public String getShangyexianxiane() {
		return shangyexianxiane;
	}
	public void setShangyexianxiane(String shangyexianxiane) {
		this.shangyexianxiane = shangyexianxiane;
	}
	public double getShangyebaoxianfeiheji() {
		return shangyebaoxianfeiheji;
	}
	public void setShangyebaoxianfeiheji(double shangyebaoxianfeiheji) {
		this.shangyebaoxianfeiheji = shangyebaoxianfeiheji;
	}
	public double getChechuanshui() {
		return chechuanshui;
	}
	public void setChechuanshui(double chechuanshui) {
		this.chechuanshui = chechuanshui;
	}
	public double getHeji() {
		return heji;
	}
	public void setHeji(double heji) {
		this.heji = heji;
	}
	
	public String getZhengyijiejue() {
		return zhengyijiejue;
	}
	public void setZhengyijiejue(String zhengyijiejue) {
		this.zhengyijiejue = zhengyijiejue;
	}
	public String getJiashiyuanxinxi() {
		return jiashiyuanxinxi;
	}
	public void setJiashiyuanxinxi(String jiashiyuanxinxi) {
		this.jiashiyuanxinxi = jiashiyuanxinxi;
	}
	public String getChucidengjiriqi() {
		return chucidengjiriqi;
	}
	public void setChucidengjiriqi(String chucidengjiriqi) {
		this.chucidengjiriqi = chucidengjiriqi;
	}
	public double getZhengbeizhiliang() {
		return zhengbeizhiliang;
	}
	public void setZhengbeizhiliang(double zhengbeizhiliang) {
		this.zhengbeizhiliang = zhengbeizhiliang;
	}
	public String getShangyebaoxianstartdate() {
		return shangyebaoxianstartdate;
	}
	public void setShangyebaoxianstartdate(String shangyebaoxianstartdate) {
		this.shangyebaoxianstartdate = shangyebaoxianstartdate;
	}
	public String getShangyebaoxianenddate() {
		return shangyebaoxianenddate;
	}
	public void setShangyebaoxianenddate(String shangyebaoxianenddate) {
		this.shangyebaoxianenddate = shangyebaoxianenddate;
	}
	public String getJiaoqiangbaoxianstartdate() {
		return jiaoqiangbaoxianstartdate;
	}
	public void setJiaoqiangbaoxianstartdate(String jiaoqiangbaoxianstartdate) {
		this.jiaoqiangbaoxianstartdate = jiaoqiangbaoxianstartdate;
	}
	public String getJiaoqiangbaoxianenddate() {
		return jiaoqiangbaoxianenddate;
	}
	public void setJiaoqiangbaoxianenddate(String jiaoqiangbaoxianenddate) {
		this.jiaoqiangbaoxianenddate = jiaoqiangbaoxianenddate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBaoxianfeixiaoji() {
		return baoxianfeixiaoji;
	}
	public void setBaoxianfeixiaoji(String baoxianfeixiaoji) {
		this.baoxianfeixiaoji = baoxianfeixiaoji;
	}

	
}
