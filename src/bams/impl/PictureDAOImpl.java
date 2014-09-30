package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bams.dao.PictureDAO;
import bams.entity.Case;
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

	@Override
	public boolean addPictures(List<Picture> picturelist) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into picture(picture_url,picture_owner,picture_name,description,baoxiandanhao) values(?,?,?,?,?)";
		try {
			ps = connection.prepareStatement(sql);
			for(int i=0;i<picturelist.size();i++){
				ps.setString(1, picturelist.get(i).getPicture_url());
				ps.setString(2, picturelist.get(i).getPicture_owner());
				ps.setString(3, picturelist.get(i).getPicture_name());
				ps.setString(4, picturelist.get(i).getDescription());
				ps.setString(5, picturelist.get(i).getBaodanhao());
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

	@Override
	public boolean addCase(Case mycase) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into bams.case(baoxiandanhao,shigujingguo,username,tel) values(?,?,?,?)";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, mycase.getBaoxiandanhao());
			ps.setString(2, mycase.getShigujingguo());
			ps.setString(3, mycase.getUsername());
			ps.setString(4, mycase.getTel());
			System.out.println(ps.toString());
			ps.executeUpdate();
			
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeStatement(ps);
		}
		
		return result;
	}

	@Override
	public List<Case> listAllCase(int start) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Case> caselist = new ArrayList<Case>();
		String sql = "select * from bams.case limit ?,10";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, start);
			rs = ps.executeQuery();
			
			while(rs.next()){
				Case c = new Case();
				c.setBaoxiandanhao(rs.getString("baoxiandanhao"));
				c.setId(rs.getInt("id"));
				c.setMark(rs.getInt("mark"));
				c.setUsername(rs.getString("username"));
				c.setTel(rs.getString("tel"));
				c.setShigujingguo(rs.getString("shigujingguo"));
				caselist.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeResultSet(rs);
			closeStatement(ps);
		}
		return caselist;
	}

	@Override
	public List<Case> queryCaseByShigu(String shigu) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from bams.case where shigujingguo like '%"+shigu+"%'";
		List<Case> caselist = new ArrayList<Case>();
		try {
			ps = connection.prepareStatement(sql);
			//ps.setString(1, shigu);
			System.out.println(ps.toString());
			rs = ps.executeQuery();
			while(rs.next()){
				Case c = new Case();
				c.setBaoxiandanhao(rs.getString("baoxiandanhao"));
				c.setId(rs.getInt("id"));
				c.setMark(rs.getInt("mark"));
				c.setUsername(rs.getString("username"));
				c.setTel(rs.getString("tel"));
				c.setShigujingguo(rs.getString("shigujingguo"));
				caselist.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeResultSet(rs);
			closeStatement(ps);
		}
		
		return caselist;
	}

	@Override
	public boolean markCase(int id) {
		PreparedStatement ps = null;
		String sql = "update bams.case set mark = 1 where id=?";
		boolean result = false;
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public Case getCase(int id) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Case c = new Case();
		String sql = "select * from bams.case where id=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				c.setBaoxiandanhao(rs.getString("baoxiandanhao"));
				c.setId(rs.getInt("id"));
				c.setMark(rs.getInt("mark"));
				c.setUsername(rs.getString("username"));
				c.setTel(rs.getString("tel"));
				c.setShigujingguo(rs.getString("shigujingguo"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeResultSet(rs);
			closeStatement(ps);
		}
		return c;
	}

	@Override
	public boolean unmarkCase(int id) {
		PreparedStatement ps = null;
		String sql = "update bams.case set mark = 0 where id=?";
		boolean result = false;
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeStatement(ps);
		}
		return result;
	}

	
}
