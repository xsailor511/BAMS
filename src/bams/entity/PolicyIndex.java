package bams.entity;

public class PolicyIndex {

	private int id;//id
	private String tablename;//该保单所属table
	private String policyname;//保单名称
	private String username;//保单所属用户
	//保单的唯一标识
		private String tag;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTablename() {
		return tablename;
	}
	public void setTablename(String tablename) {
		this.tablename = tablename;
	}
	public String getPolicyname() {
		return policyname;
	}
	public void setPolicyname(String policyname) {
		this.policyname = policyname;
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
