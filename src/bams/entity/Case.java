package bams.entity;

public class Case {

	private int id;
	private String baoxiandanhao;
	private String username;
	private String tel;
	private boolean mark;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBaoxiandanhao() {
		return baoxiandanhao;
	}
	public void setBaoxiandanhao(String baoxiandanhao) {
		this.baoxiandanhao = baoxiandanhao;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public boolean isMark() {
		return mark;
	}
	public void setMark(boolean mark) {
		this.mark = mark;
	}
	
}
