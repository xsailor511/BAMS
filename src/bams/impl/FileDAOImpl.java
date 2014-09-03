package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bams.dao.FileDAO;
import bams.entity.File;
import bams.util.Database;

public class FileDAOImpl implements FileDAO {

	private Connection connection;

	public FileDAOImpl() {
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	
	
	
	public Connection getConnection() {
		return connection;
	}



	public void setConnection(Connection connection) {
		this.connection = connection;
	}



	@Override
	public boolean addFile(File file) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into file(filename,fileurl) values(?,?)";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, file.getFilename());
			ps.setString(2, file.getFileurl());
			ps.executeUpdate();
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
			
			result = false;
		}finally{
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public boolean addFiles(List<File> filelist) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into file(filename,fileurl) values(?,?)";
		try {
			ps = connection.prepareStatement(sql);
			for(int i=0;i<filelist.size();i++){
				ps.setString(1, filelist.get(i).getFilename());
				ps.setString(2, filelist.get(i).getFileurl());
				ps.addBatch();
			}
			ps.executeBatch();
			result = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
			result = false;
		}finally{
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public List<File> listAllFiles() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from file";
		List<File> filelist = new ArrayList<File>();
		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				File file = new File();
				file.setFilename(rs.getString("filename"));
				file.setFileurl(rs.getString("fileurl"));
				file.setId(rs.getInt("id"));
				filelist.add(file);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return filelist;
	}

	@Override
	public boolean deleteFile(String filename) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "delete from file where filename=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, filename);
			ps.executeUpdate();
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
			result = false;
		}finally{
			closeStatement(ps);
		}
		
		return result;
	}

	public static void closeStatement(Statement st) {
		if (st != null) {
			try {
				st.close();
				st = null;
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
	}

	public static void closeResultSet(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
				rs = null;
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
	}

}
