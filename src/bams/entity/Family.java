package bams.entity;


public class Family {

	/*
	 * 全家无忧投保单
	 * @author xsailor
	 * 
	 */
	//id
	private int id;
	//保险财产地址
	private String baoxiancaichandizhi;
	//家庭财产综合保险
	private boolean caichanzonghebaoxian;
	//全体家庭成员（0-75岁）意外及医疗保险
	private boolean quantijiatingchengyuan;
	//意外医疗保险合计
	private double yiwaiyiliaobaoxianheji;
	//意外伤害医疗
	private boolean yiwaishanghaiyiliao;
	//投保后 初次查明重疾
	private boolean chucichamingzhongji;
	//门急诊
	private boolean menjizhen;
	//疾病住院
	private boolean jibingzhuyuan ;
	//保险开始时间
	private String startdate;
	//保险结束时间
	private String enddate;
	//保险费总计
	private double baoxianfeizongji;
	//投保账户名称
	private String username;
	//保险费总计大写
	private String baoxianfeizongjichina;
	//家庭成员类型
	private String jiatingchengyuanleixing;
	//保单的唯一标识
	private String tag;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBaoxiancaichandizhi() {
		return baoxiancaichandizhi;
	}
	public void setBaoxiancaichandizhi(String baoxiancaichandizhi) {
		this.baoxiancaichandizhi = baoxiancaichandizhi;
	}
	public boolean isCaichanzonghebaoxian() {
		return caichanzonghebaoxian;
	}
	public void setCaichanzonghebaoxian(boolean caichanzonghebaoxian) {
		this.caichanzonghebaoxian = caichanzonghebaoxian;
	}
	public double getYiwaiyiliaobaoxianheji() {
		return yiwaiyiliaobaoxianheji;
	}
	
	
	public boolean isQuantijiatingchengyuan() {
		return quantijiatingchengyuan;
	}
	public void setQuantijiatingchengyuan(boolean quantijiatingchengyuan) {
		this.quantijiatingchengyuan = quantijiatingchengyuan;
	}
	public void setYiwaiyiliaobaoxianheji(double yiwaiyiliaobaoxianheji) {
		this.yiwaiyiliaobaoxianheji = yiwaiyiliaobaoxianheji;
	}
	public boolean isYiwaishanghaiyiliao() {
		return yiwaishanghaiyiliao;
	}
	public void setYiwaishanghaiyiliao(boolean yiwaishanghaiyiliao) {
		this.yiwaishanghaiyiliao = yiwaishanghaiyiliao;
	}
	public boolean isChucichamingzhongji() {
		return chucichamingzhongji;
	}
	public void setChucichamingzhongji(boolean chucichamingzhongji) {
		this.chucichamingzhongji = chucichamingzhongji;
	}
	public boolean isMenjizhen() {
		return menjizhen;
	}
	public void setMenjizhen(boolean menjizhen) {
		this.menjizhen = menjizhen;
	}
	public boolean isJibingzhuyuan() {
		return jibingzhuyuan;
	}
	public void setJibingzhuyuan(boolean jibingzhuyuan) {
		this.jibingzhuyuan = jibingzhuyuan;
	}
	
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public double getBaoxianfeizongji() {
		return baoxianfeizongji;
	}
	public void setBaoxianfeizongji(double baoxianfeizongji) {
		this.baoxianfeizongji = baoxianfeizongji;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBaoxianfeizongjichina() {
		return baoxianfeizongjichina;
	}
	public void setBaoxianfeizongjichina(String baoxianfeizongjichina) {
		this.baoxianfeizongjichina = baoxianfeizongjichina;
	}
	public String getJiatingchengyuanleixing() {
		return jiatingchengyuanleixing;
	}
	public void setJiatingchengyuanleixing(String jiatingchengyuanleixing) {
		this.jiatingchengyuanleixing = jiatingchengyuanleixing;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	
	
}
