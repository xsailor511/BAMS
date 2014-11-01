package bams.dao;

import java.sql.Connection;
import java.util.List;

import bams.entity.File;

public interface FileDAO {

	/*
	 * @author xsailor
	 * @date 2014-09-03
	 */
	public boolean addFile(File file);
	public boolean addFiles(List<File> filelist);
	public List<File> listAllFiles(int start);
	public boolean deleteFile(String filename);
	public List<File> searchFile(String key);
	public void setConnection(Connection connection);
	public Connection getConnection();
}
