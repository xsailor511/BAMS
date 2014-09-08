package bams.entity;


public class EnterprisePackage {

	/*
	 * 中小企业一揽子保险委托书
	 * @author xsailor
	 */
	//id
	private int id;
	//委托人
	private String weituoren;
	//电话
	private String dianhua;
	//联系人
	private String lianxiren;
	//保险到期日期
	private String enddate;
	//开始日期
	private String startdate;
	//可选险种（合并存储）
	private String kexuanxianzhong;
	//保险公司
	private String baoxiangongsi;
	//委托人注册地址
	private String weituorenzhucedizhi;
	//委托人法定代表人
	private String weituorenfadingdaibiaoren;
	//受托人注册地址
	private String shoutuorenzhucedizhi;
	//受托人法定代表
	private String shoutuorenfadingdaibiao;
	//委托人签章
	private String weituorenqianzhang;
	//填表日期
	private String tianbiaoriqi;
	//投保账户名称
	private String username;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWeituoren() {
		return weituoren;
	}
	public void setWeituoren(String weituoren) {
		this.weituoren = weituoren;
	}
	public String getDianhua() {
		return dianhua;
	}
	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}
	public String getLianxiren() {
		return lianxiren;
	}
	public void setLianxiren(String lianxiren) {
		this.lianxiren = lianxiren;
	}

	public String getKexuanxianzhong() {
		return kexuanxianzhong;
	}
	public void setKexuanxianzhong(String kexuanxianzhong) {
		this.kexuanxianzhong = kexuanxianzhong;
	}
	public String getBaoxiangongsi() {
		return baoxiangongsi;
	}
	public void setBaoxiangongsi(String baoxiangongsi) {
		this.baoxiangongsi = baoxiangongsi;
	}
	public String getWeituorenzhucedizhi() {
		return weituorenzhucedizhi;
	}
	public void setWeituorenzhucedizhi(String weituorenzhucedizhi) {
		this.weituorenzhucedizhi = weituorenzhucedizhi;
	}
	public String getWeituorenfadingdaibiaoren() {
		return weituorenfadingdaibiaoren;
	}
	public void setWeituorenfadingdaibiaoren(String weituorenfadingdaibiaoren) {
		this.weituorenfadingdaibiaoren = weituorenfadingdaibiaoren;
	}
	public String getShoutuorenzhucedizhi() {
		return shoutuorenzhucedizhi;
	}
	public void setShoutuorenzhucedizhi(String shoutuorenzhucedizhi) {
		this.shoutuorenzhucedizhi = shoutuorenzhucedizhi;
	}
	public String getShoutuorenfadingdaibiao() {
		return shoutuorenfadingdaibiao;
	}
	public void setShoutuorenfadingdaibiao(String shoutuorenfadingdaibiao) {
		this.shoutuorenfadingdaibiao = shoutuorenfadingdaibiao;
	}
	public String getWeituorenqianzhang() {
		return weituorenqianzhang;
	}
	public void setWeituorenqianzhang(String weituorenqianzhang) {
		this.weituorenqianzhang = weituorenqianzhang;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	
	
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getTianbiaoriqi() {
		return tianbiaoriqi;
	}
	public void setTianbiaoriqi(String tianbiaoriqi) {
		this.tianbiaoriqi = tianbiaoriqi;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	
	
}
