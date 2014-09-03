package bams.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import bams.dao.FileDAO;
import bams.entity.File;
import bams.impl.FileDAOImpl;
import bams.util.Database;

public class FileService {

	/*
	 * @author xsailor
	 * @date 2014-09-03
	 */
	FileDAO fileDAO = new FileDAOImpl();
	
	public boolean addFile(File file){
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			fileDAO.setConnection(connection);
			result = fileDAO.addFile(file);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	public boolean addFiles(List<File> filelist){
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			fileDAO.setConnection(connection);
			result = fileDAO.addFiles(filelist);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally {
			Database.releaseConnection(connection);
		}
		return result;
		
	}
	public List<File> listAllFiles(){
		Connection connection = null;
		List<File> filelist = null;
		try {
			connection = Database.getConnection();
			fileDAO.setConnection(connection);
			filelist = fileDAO.listAllFiles();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		return filelist;
		
	}
	public boolean deleteFile(String filename){
		Connection connection = null;
		boolean result = false;
		
		try {
			connection = Database.getConnection();
			fileDAO.setConnection(connection);
			result = fileDAO.deleteFile(filename);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			result = false;
			Database.rollback();
		}finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	
}
