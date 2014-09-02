package bams.entity;

public class Picture {

	private int id;//id
	private String picture_url;//图片url
	private String picture_owner;//图片所有者
	private String picture_name;//图片名称
	private String description;//图片说明
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPicture_url() {
		return picture_url;
	}
	public void setPicture_url(String picture_url) {
		this.picture_url = picture_url;
	}
	public String getPicture_owner() {
		return picture_owner;
	}
	public void setPicture_owner(String picture_owner) {
		this.picture_owner = picture_owner;
	}
	public String getPicture_name() {
		return picture_name;
	}
	public void setPicture_name(String picture_name) {
		this.picture_name = picture_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}
