package bams.entity;


public class EmployerDuty {

	/*
	 * 雇主责任保单
	 * @author xsailor
	 */
	//id
	private int id;
	//投保人名称
	private String toubaorenmingcheng;
	//投保人地址
	private String toubaorendizhi;
	//投保人联系人
	private String toubaorenlianxiren;
	//投保人联系电话
	private String toubaorendianhua;
	//被保险人名称
	private String beibaoxianrenmingcheng;
	//被保险人地址
	private String beibaoxianrendizhi;
	//营业性质
	private String yingyexingzhi;
	//被保险人组织机构代码证
	private String beizuzhijigoudaima;
	//是否参加社会（医疗、工伤）保险
	private boolean  canjiashehuibaoxian;
	//雇员工种（合并存储）
	private String guyuangongzhong;
	//估计雇员人数（合并存储）
	private String guyuanrenshu;
	//赔偿限额,死亡伤残（合并存储）
	private String peichangsiwang;
	//赔偿限额，医疗（合并存储）
	private String peichangyiliao;
	//保险费率
	private double baoxianfeilv;
	//保险费
	private double baoxianfei;
	//保险开始时间
	private String start_time;
	//保险结束时间
	private String end_time;
	//特别约定
	private String tebieyueding;
	//付费日期
	private String fufeiriqi;
	//司法管辖
	private String sifaguanxia;
	//争议处理（合并存储）
	private String zhengyichuli;
	//投保人签章
	private String toubaorenqianzhang;
	//投保日期
	private String toubaoriqi;
	//投保账户名称
	private String username;
	//保单的唯一标识
	private String tag;
	
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
	public String getBeibaoxianrenmingcheng() {
		return beibaoxianrenmingcheng;
	}
	public void setBeibaoxianrenmingcheng(String beibaoxianrenmingcheng) {
		this.beibaoxianrenmingcheng = beibaoxianrenmingcheng;
	}
	public String getBeibaoxianrendizhi() {
		return beibaoxianrendizhi;
	}
	public void setBeibaoxianrendizhi(String beibaoxianrendizhi) {
		this.beibaoxianrendizhi = beibaoxianrendizhi;
	}
	public String getYingyexingzhi() {
		return yingyexingzhi;
	}
	public void setYingyexingzhi(String yingyexingzhi) {
		this.yingyexingzhi = yingyexingzhi;
	}
	public String getBeizuzhijigoudaima() {
		return beizuzhijigoudaima;
	}
	public void setBeizuzhijigoudaima(String beizuzhijigoudaima) {
		this.beizuzhijigoudaima = beizuzhijigoudaima;
	}
	public boolean isCanjiashehuibaoxian() {
		return canjiashehuibaoxian;
	}
	public void setCanjiashehuibaoxian(boolean canjiashehuibaoxian) {
		this.canjiashehuibaoxian = canjiashehuibaoxian;
	}
	public String getGuyuangongzhong() {
		return guyuangongzhong;
	}
	public void setGuyuangongzhong(String guyuangongzhong) {
		this.guyuangongzhong = guyuangongzhong;
	}
	public String getGuyuanrenshu() {
		return guyuanrenshu;
	}
	public void setGuyuanrenshu(String guyuanrenshu) {
		this.guyuanrenshu = guyuanrenshu;
	}
	public String getPeichangsiwang() {
		return peichangsiwang;
	}
	public void setPeichangsiwang(String peichangsiwang) {
		this.peichangsiwang = peichangsiwang;
	}
	public String getPeichangyiliao() {
		return peichangyiliao;
	}
	public void setPeichangyiliao(String peichangyiliao) {
		this.peichangyiliao = peichangyiliao;
	}
	public double getBaoxianfeilv() {
		return baoxianfeilv;
	}
	public void setBaoxianfeilv(double baoxianfeilv) {
		this.baoxianfeilv = baoxianfeilv;
	}
	public double getBaoxianfei() {
		return baoxianfei;
	}
	public void setBaoxianfei(double baoxianfei) {
		this.baoxianfei = baoxianfei;
	}
	

	public String getTebieyueding() {
		return tebieyueding;
	}
	public void setTebieyueding(String tebieyueding) {
		this.tebieyueding = tebieyueding;
	}

	public String getSifaguanxia() {
		return sifaguanxia;
	}
	public void setSifaguanxia(String sifaguanxia) {
		this.sifaguanxia = sifaguanxia;
	}
	public String getZhengyichuli() {
		return zhengyichuli;
	}
	public void setZhengyichuli(String zhengyichuli) {
		this.zhengyichuli = zhengyichuli;
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
	public String getFufeiriqi() {
		return fufeiriqi;
	}
	public void setFufeiriqi(String fufeiriqi) {
		this.fufeiriqi = fufeiriqi;
	}
	public String getToubaoriqi() {
		return toubaoriqi;
	}
	public void setToubaoriqi(String toubaoriqi) {
		this.toubaoriqi = toubaoriqi;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	
}
