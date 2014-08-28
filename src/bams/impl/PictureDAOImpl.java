package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bams.dao.PictureDAO;
import bams.entity.Picture;
import bams.util.Database;

public class PictureDAOImpl implements PictureDAO {
	private Connection connection;
	public PictureDAOImpl(){
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	
	@Override
	public Connection getConnection() throws Exception {
		return connection;
	}

	@Override
	public void setConnection(Connection connection) throws Exception {
		this.connection = connection;
	}

	
	@Override
	public boolean addPicture(Picture picture) throws Exception {
		PreparedStatement ps = null;
		boolean result = false;
		try {
			ps = connection
					.prepareStatement("Insert into user(picture_name,picture_url,picture_owner) values(?,?,?)");
			ps.setString(1, picture.getPicture_name());
			ps.setString(2, picture.getPicture_url());
			ps.setString(3, picture.getPicture_owner());
			ps.executeUpdate();
			result = true;
		} catch (Exception e) {
			result = false;
			e.printStackTrace();
		}finally{
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public Picture getPicture(String picture_name) throws Exception {
		Picture picture= new Picture();
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
			String sql = "select * from picture where picture_name=?";
			
			ps = connection.prepareStatement(sql);
			ps.setString(1, picture_name);
			rs = ps.executeQuery();
			if(rs.next()){
				picture.setPicture_name(rs.getString("picture_name"));
				picture.setPicture_owner(rs.getString("picture_owner"));
				picture.setPicture_url(rs.getString("picture_url"));
				picture.setId(rs.getInt("id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}finally{
			closeResultSet(rs);
			closeStatement(ps);
		}
		
		return picture;
	}

	@Override
	public List<Picture> listPictureByUser(String username) throws Exception {
		String sql = "select * from picture where picture_owner=?";
		ResultSet rs = null;
		PreparedStatement ps = null;
		List<Picture> pictures= new ArrayList<Picture>();
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			while(rs.next()){
				Picture picture = new Picture();
				picture.setId(rs.getInt("id"));
				picture.setPicture_name(rs.getString("picture_name"));
				picture.setPicture_owner("picture_owner");
				picture.setPicture_url(rs.getString("picture_url"));
				pictures.add(picture);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeResultSet(rs);
			closeStatement(ps);
		}
		
		
		return pictures;
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