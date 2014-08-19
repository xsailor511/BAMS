
package bams.entity;

/**
 * @author xsailor
 */
public class User {
	//编号
	private int id;
	//用户名
	private String name;
	//密码
	private String password;
	//真实姓名
	private String realname;
	//电子邮件
	private String email;
	//身份证号码
	private String socialid;
	//电话号码
	private String phone;
	//用户类型
	private int role;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSocialid() {
		return socialid;
	}
	public void setSocialid(String socialid) {
		this.socialid = socialid;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}

	

}
