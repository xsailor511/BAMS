package bams.entity;

public class File {

	/*
	 * @author xsailor
	 */
	//id
	private int id;
	//文件名
	private String filename;
	//文件URL
	private String fileurl;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFileurl() {
		return fileurl;
	}
	public void setFileurl(String fileurl) {
		this.fileurl = fileurl;
	}
	
}
