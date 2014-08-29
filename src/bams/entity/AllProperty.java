package bams.entity;



public class AllProperty {

	/*
	 * 财产一切险保单
	 * @author xsailor
	 */
	//id
	private int id;
	//投保人名称
	private String toubaorenmingcheng;
	//投保人地址
	private String toubaorendizhi;
	//投保人电话
	private String toubaorendianhua;
	//投保人组织机构代码
	private String toubaorenzuzhijigou;
	//被保险人名称
	private String beibaoxianrenmingchen;
	//被保险人地址
	private String beibaoxianrendizhi;
	//被保险人营业性质
	private String beibaoxianrenyingyexingzhi;
	//保险财产地址
	private String baoxiancaichandizhi;
	//被保险财产邮政编码
	private String youzhengbianma;
	//承保标的项目合并存储
	private String chengbaobiaoxiangmu;
	//	房屋建筑保险金额
	private double fangwujine;
	//机器设备保险金额
	private double jiqishebeijine;
	//其他金额
	private double qitajine;
	//存货保险金额
	private double cunhuojine;
	//费率
	private double feilv;
	//保险费
	private double baoxianfei;
	//保险金额小计(大写中文数字)
	private String baoxianjinexiaoji;
	//保险开始时间
	private String start_time;
	//保险结束时间
	private String end_time;
	//保险费大写
	private String baoxianfeichina;
	//缴费时间
	private String jiaofeishijian;
	//缴费方式
	private String jiaofeifangshi;
	//附加条款
	private String fujiatiaokuan;
	//特别约定
	private String tebieyueding;
	//争议处理（合并存储）
	private String zhengyichuli;
	//投保附件（合并存储）
	private String toubaofujian;
	//投保附件数量
	private int toubaofujianshuliang;
	//是否已经投过类似保险（合并存储）
	private String shifoutouguo;
	//理赔记录（合并存储）
	private String lipeijilu;
	//投保人签章
	private String toubaorenqianzhang;
	//投保日期
	private String toubaoriqi;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getToubaorenmingcheng() {
		return toubaorenmingcheng;
	}
	public void setToubaorenmingcheng(String toubaorenmingcheng) {
		this.toubaorenmingcheng = toubaorenmingcheng;
	}
	public String getToubaorendizhi() {
		return toubaorendizhi;
	}
	public void setToubaorendizhi(String toubaorendizhi) {
		this.toubaorendizhi = toubaorendizhi;
	}
	public String getToubaorendianhua() {
		return toubaorendianhua;
	}
	public void setToubaorendianhua(String toubaorendianhua) {
		this.toubaorendianhua = toubaorendianhua;
	}
	public String getToubaorenzuzhijigou() {
		return toubaorenzuzhijigou;
	}
	public void setToubaorenzuzhijigou(String toubaorenzuzhijigou) {
		this.toubaorenzuzhijigou = toubaorenzuzhijigou;
	}
	public String getBeibaoxianrenmingchen() {
		return beibaoxianrenmingchen;
	}
	public void setBeibaoxianrenmingchen(String beibaoxianrenmingchen) {
		this.beibaoxianrenmingchen = beibaoxianrenmingchen;
	}
	public String getBeibaoxianrendizhi() {
		return beibaoxianrendizhi;
	}
	public void setBeibaoxianrendizhi(String beibaoxianrendizhi) {
		this.beibaoxianrendizhi = beibaoxianrendizhi;
	}
	public String getBeibaoxianrenyingyexingzhi() {
		return beibaoxianrenyingyexingzhi;
	}
	public void setBeibaoxianrenyingyexingzhi(String beibaoxianrenyingyexingzhi) {
		this.beibaoxianrenyingyexingzhi = beibaoxianrenyingyexingzhi;
	}
	public String getBaoxiancaichandizhi() {
		return baoxiancaichandizhi;
	}
	public void setBaoxiancaichandizhi(String baoxiancaichandizhi) {
		this.baoxiancaichandizhi = baoxiancaichandizhi;
	}
	public String getYouzhengbianma() {
		return youzhengbianma;
	}
	public void setYouzhengbianma(String youzhengbianma) {
		this.youzhengbianma = youzhengbianma;
	}
	public String getChengbaobiaoxiangmu() {
		return chengbaobiaoxiangmu;
	}
	public void setChengbaobiaoxiangmu(String chengbaobiaoxiangmu) {
		this.chengbaobiaoxiangmu = chengbaobiaoxiangmu;
	}
	public double getFangwujine() {
		return fangwujine;
	}
	public void setFangwujine(double fangwujine) {
		this.fangwujine = fangwujine;
	}
	public double getJiqishebeijine() {
		return jiqishebeijine;
	}
	public void setJiqishebeijine(double jiqishebeijine) {
		this.jiqishebeijine = jiqishebeijine;
	}
	public double getQitajine() {
		return qitajine;
	}
	public void setQitajine(double qitajine) {
		this.qitajine = qitajine;
	}
	public double getCunhuojine() {
		return cunhuojine;
	}
	public void setCunhuojine(double cunhuojine) {
		this.cunhuojine = cunhuojine;
	}
	public double getFeilv() {
		return feilv;
	}
	public void setFeilv(double feilv) {
		this.feilv = feilv;
	}
	public double getBaoxianfei() {
		return baoxianfei;
	}
	public void setBaoxianfei(double baoxianfei) {
		this.baoxianfei = baoxianfei;
	}
	public String getBaoxianjinexiaoji() {
		return baoxianjinexiaoji;
	}
	public void setBaoxianjinexiaoji(String baoxianjinexiaoji) {
		this.baoxianjinexiaoji = baoxianjinexiaoji;
	}
	

	public String getBaoxianfeichina() {
		return baoxianfeichina;
	}
	public void setBaoxianfeichina(String baoxianfeichina) {
		this.baoxianfeichina = baoxianfeichina;
	}
	
	public String getJiaofeifangshi() {
		return jiaofeifangshi;
	}
	public void setJiaofeifangshi(String jiaofeifangshi) {
		this.jiaofeifangshi = jiaofeifangshi;
	}
	public String getFujiatiaokuan() {
		return fujiatiaokuan;
	}
	public void setFujiatiaokuan(String fujiatiaokuan) {
		this.fujiatiaokuan = fujiatiaokuan;
	}
	public String getTebieyueding() {
		return tebieyueding;
	}
	public void setTebieyueding(String tebieyueding) {
		this.tebieyueding = tebieyueding;
	}
	public String getZhengyichuli() {
		return zhengyichuli;
	}
	public void setZhengyichuli(String zhengyichuli) {
		this.zhengyichuli = zhengyichuli;
	}
	public String getToubaofujian() {
		return toubaofujian;
	}
	public void setToubaofujian(String toubaofujian) {
		this.toubaofujian = toubaofujian;
	}
	public int getToubaofujianshuliang() {
		return toubaofujianshuliang;
	}
	public void setToubaofujianshuliang(int toubaofujianshuliang) {
		this.toubaofujianshuliang = toubaofujianshuliang;
	}
	public String getShifoutouguo() {
		return shifoutouguo;
	}
	public void setShifoutouguo(String shifoutouguo) {
		this.shifoutouguo = shifoutouguo;
	}
	public String getLipeijilu() {
		return lipeijilu;
	}
	public void setLipeijilu(String lipeijilu) {
		this.lipeijilu = lipeijilu;
	}
	public String getToubaorenqianzhang() {
		return toubaorenqianzhang;
	}
	public void setToubaorenqianzhang(String toubaorenqianzhang) {
		this.toubaorenqianzhang = toubaorenqianzhang;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getJiaofeishijian() {
		return jiaofeishijian;
	}
	public void setJiaofeishijian(String jiaofeishijian) {
		this.jiaofeishijian = jiaofeishijian;
	}
	public String getToubaoriqi() {
		return toubaoriqi;
	}
	public void setToubaoriqi(String toubaoriqi) {
		this.toubaoriqi = toubaoriqi;
	}
	
	
	
}
