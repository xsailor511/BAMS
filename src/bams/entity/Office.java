package bams.entity;


public class Office {

	/*
	 * 办公室综合保险投保单
	 * @author xsailor
	 */
	//id
	private int id ;
	//投保人名称
	private String toubaorenmingcheng;
	//投保人地址
	private String toubaorendizhi;
	//联系人/联系方式
	String lianxiren;
	//室内装潢
	double shineizhuanghuang;
	//办公家具及非消耗性用品用具
	double bangongjiaju;
	//办公用电子电器和计算机设备
	double bangongdianzi;
	//财产损失险增加保额
	private double caichansunshixianadd;
	//财产损失险增加保费
	private double caichansunshixianaddbaoe;
	//团体意外险增加人数
	private int tuantiyiwaixianzengjiarenshu;
	//团体意外险增加保费
	private double tuantiyiwaixianzengjiabaofei;
	//总保费
	private double zongbaofei;
	//投保人签章
	private String toubaorenqianzhang;
	//投保日期
	private String toubaoriqi;
	//团体意外伤害名单（合并存储）
	private String tuantiyiwaishanghaimingdan;
	//
	private String tuantiyiwaishanghaishenfenzheng;
	//高层意外伤害人名单（合并存储）
	private String gaocengchailvmingdan;
	//高层意外伤害人身份证号码（合并存储）
	private String gaocengchailvshenfengzheng;
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
	public double getCaichansunshixianadd() {
		return caichansunshixianadd;
	}
	public void setCaichansunshixianadd(double caichansunshixianadd) {
		this.caichansunshixianadd = caichansunshixianadd;
	}
	public double getCaichansunshixianaddbaoe() {
		return caichansunshixianaddbaoe;
	}
	public void setCaichansunshixianaddbaoe(double caichansunshixianaddbaoe) {
		this.caichansunshixianaddbaoe = caichansunshixianaddbaoe;
	}
	public int getTuantiyiwaixianzengjiarenshu() {
		return tuantiyiwaixianzengjiarenshu;
	}
	public void setTuantiyiwaixianzengjiarenshu(int tuantiyiwaixianzengjiarenshu) {
		this.tuantiyiwaixianzengjiarenshu = tuantiyiwaixianzengjiarenshu;
	}
	public double getTuantiyiwaixianzengjiabaofei() {
		return tuantiyiwaixianzengjiabaofei;
	}
	public void setTuantiyiwaixianzengjiabaofei(double tuantiyiwaixianzengjiabaofei) {
		this.tuantiyiwaixianzengjiabaofei = tuantiyiwaixianzengjiabaofei;
	}
	public double getZongbaofei() {
		return zongbaofei;
	}
	public void setZongbaofei(double zongbaofei) {
		this.zongbaofei = zongbaofei;
	}
	public String getToubaorenqianzhang() {
		return toubaorenqianzhang;
	}
	public void setToubaorenqianzhang(String toubaorenqianzhang) {
		this.toubaorenqianzhang = toubaorenqianzhang;
	}

	public String getToubaoriqi() {
		return toubaoriqi;
	}
	public void setToubaoriqi(String toubaoriqi) {
		this.toubaoriqi = toubaoriqi;
	}
	public String getTuantiyiwaishanghaimingdan() {
		return tuantiyiwaishanghaimingdan;
	}
	public void setTuantiyiwaishanghaimingdan(String tuantiyiwaishanghaimingdan) {
		this.tuantiyiwaishanghaimingdan = tuantiyiwaishanghaimingdan;
	}
	public String getTuantiyiwaishanghaishenfenzheng() {
		return tuantiyiwaishanghaishenfenzheng;
	}
	public void setTuantiyiwaishanghaishenfenzheng(
			String tuantiyiwaishanghaishenfenzheng) {
		this.tuantiyiwaishanghaishenfenzheng = tuantiyiwaishanghaishenfenzheng;
	}
	public String getGaocengchailvmingdan() {
		return gaocengchailvmingdan;
	}
	public void setGaocengchailvmingdan(String gaocengchailvmingdan) {
		this.gaocengchailvmingdan = gaocengchailvmingdan;
	}
	public String getGaocengchailvshenfengzheng() {
		return gaocengchailvshenfengzheng;
	}
	public void setGaocengchailvshenfengzheng(String gaocengchailvshenfengzheng) {
		this.gaocengchailvshenfengzheng = gaocengchailvshenfengzheng;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLianxiren() {
		return lianxiren;
	}
	public void setLianxiren(String lianxiren) {
		this.lianxiren = lianxiren;
	}
	public double getShineizhuanghuang() {
		return shineizhuanghuang;
	}
	public void setShineizhuanghuang(double shineizhuanghuang) {
		this.shineizhuanghuang = shineizhuanghuang;
	}
	public double getBangongjiaju() {
		return bangongjiaju;
	}
	public void setBangongjiaju(double bangongjiaju) {
		this.bangongjiaju = bangongjiaju;
	}
	public double getBangongdianzi() {
		return bangongdianzi;
	}
	public void setBangongdianzi(double bangongdianzi) {
		this.bangongdianzi = bangongdianzi;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	
}
