package bams.entity;


public class Freight {

	/*
	 * 货运险投保单
	 * @author xsailor
	 */
	//id
	private int id;
	//fax from
	private String fax_from;
	//fax to
	private String fax_to;
	//被保险人
	private String beibaoxianren;
	//发票号
	private String fapiaohao;
	//发票日期
	private String fapiaoriqi;
	//进口合同号
	private String jinkouhetonghao;
	//信用证号
	private String xinyongzhenghao;
	//包装数量
	private int baozhuangshuliang;
	//保险货物名称
	private String baoxianhuowumingcheng;
	//标记
	private String biaoji;
	//价格条件
	private String jiagetiaojian;
	//发票金额
	private double fapiaojine;
	//保险金额
	private double baoxianjine;
	//费率
	private double feilv;
	//保险费
	private double baoxianfei;
	//船名
	private String chuanming;
	//建造年份
	private String jianzaonianfen;
	//船旗
	private String chuanqi;
	//起运日期
	private String qiyunriqi;
	//起运港
	private String qiyungang;
	//经由
	private String via;
	//目的港
	private String mudigang;
	//承保险别
	private String chengbaoxianbie;
	//备注
	private String note;
	//投保人签章
	private String toubaorenqianzhang;
	//投保填单日期
	private String tianbiaoriqi;
	//投保账户名称
	private String username;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFax_from() {
		return fax_from;
	}
	public void setFax_from(String fax_from) {
		this.fax_from = fax_from;
	}
	public String getFax_to() {
		return fax_to;
	}
	public void setFax_to(String fax_to) {
		this.fax_to = fax_to;
	}
	public String getBeibaoxianren() {
		return beibaoxianren;
	}
	public void setBeibaoxianren(String beibaoxianren) {
		this.beibaoxianren = beibaoxianren;
	}
	public String getFapiaohao() {
		return fapiaohao;
	}
	public void setFapiaohao(String fapiaohao) {
		this.fapiaohao = fapiaohao;
	}
	
	public String getJinkouhetonghao() {
		return jinkouhetonghao;
	}
	public void setJinkouhetonghao(String jinkouhetonghao) {
		this.jinkouhetonghao = jinkouhetonghao;
	}
	public String getXinyongzhenghao() {
		return xinyongzhenghao;
	}
	public void setXinyongzhenghao(String xinyongzhenghao) {
		this.xinyongzhenghao = xinyongzhenghao;
	}
	public int getBaozhuangshuliang() {
		return baozhuangshuliang;
	}
	public void setBaozhuangshuliang(int baozhuangshuliang) {
		this.baozhuangshuliang = baozhuangshuliang;
	}
	public String getBaoxianhuowumingcheng() {
		return baoxianhuowumingcheng;
	}
	public void setBaoxianhuowumingcheng(String baoxianhuowumingcheng) {
		this.baoxianhuowumingcheng = baoxianhuowumingcheng;
	}
	public String getBiaoji() {
		return biaoji;
	}
	public void setBiaoji(String biaoji) {
		this.biaoji = biaoji;
	}
	public String getJiagetiaojian() {
		return jiagetiaojian;
	}
	public void setJiagetiaojian(String jiagetiaojian) {
		this.jiagetiaojian = jiagetiaojian;
	}
	public double getFapiaojine() {
		return fapiaojine;
	}
	public void setFapiaojine(double fapiaojine) {
		this.fapiaojine = fapiaojine;
	}
	public double getBaoxianjine() {
		return baoxianjine;
	}
	public void setBaoxianjine(double baoxianjine) {
		this.baoxianjine = baoxianjine;
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
	public String getChuanming() {
		return chuanming;
	}
	public void setChuanming(String chuanming) {
		this.chuanming = chuanming;
	}
	public String getJianzaonianfen() {
		return jianzaonianfen;
	}
	public void setJianzaonianfen(String jianzaonianfen) {
		this.jianzaonianfen = jianzaonianfen;
	}
	public String getChuanqi() {
		return chuanqi;
	}
	public void setChuanqi(String chuanqi) {
		this.chuanqi = chuanqi;
	}
	
	public String getQiyungang() {
		return qiyungang;
	}
	public void setQiyungang(String qiyungang) {
		this.qiyungang = qiyungang;
	}
	public String getVia() {
		return via;
	}
	public void setVia(String via) {
		this.via = via;
	}
	public String getMudigang() {
		return mudigang;
	}
	public void setMudigang(String mudigang) {
		this.mudigang = mudigang;
	}
	public String getChengbaoxianbie() {
		return chengbaoxianbie;
	}
	public void setChengbaoxianbie(String chengbaoxianbie) {
		this.chengbaoxianbie = chengbaoxianbie;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getToubaorenqianzhang() {
		return toubaorenqianzhang;
	}
	public void setToubaorenqianzhang(String toubaorenqianzhang) {
		this.toubaorenqianzhang = toubaorenqianzhang;
	}
	public String getFapiaoriqi() {
		return fapiaoriqi;
	}
	public void setFapiaoriqi(String fapiaoriqi) {
		this.fapiaoriqi = fapiaoriqi;
	}
	public String getQiyunriqi() {
		return qiyunriqi;
	}
	public void setQiyunriqi(String qiyunriqi) {
		this.qiyunriqi = qiyunriqi;
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
