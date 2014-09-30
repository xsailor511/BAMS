package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bams.dao.FeilvDAO;
import bams.entity.Feilv;
import bams.util.Database;

public class FeilvDAOImpl implements FeilvDAO {

	private Connection connection;
	
	public FeilvDAOImpl() {
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
	public List<Feilv> listAllFeilv() {
		PreparedStatement ps = null;
		String sql = "select * from feilv";
		ResultSet rs = null;
		List<Feilv> feilvlist = new ArrayList<Feilv>();
		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				Feilv feilv = new Feilv();
				feilv.setId(rs.getInt("id"));
				feilv.setDescription(rs.getString("description"));
				feilv.setFeilv(rs.getDouble("feilv"));
				feilvlist.add(feilv);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return feilvlist;
	}

	@Override
	public boolean alertFeilv(int id,double feilv) {
		PreparedStatement ps = null;
		boolean mark = false;
		String sql = "update feilv set feilv=? where id=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setDouble(1, feilv);
			ps.setInt(2, id);
			ps.executeUpdate();
		    mark = true;
		} catch (SQLException e) {
			e.printStackTrace();
			mark = false;
		}finally{
			closeStatement(ps);
		}
		
		return mark;
	}

	@Override
	public double getFeilv(int id) {
		PreparedStatement ps = null;
		Feilv feilv = new Feilv();
		ResultSet rs = null;
		String sql = "select * from feilv where id =?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				feilv.setId(id);
				feilv.setDescription(rs.getString("description"));
				feilv.setFeilv(rs.getDouble("feilv"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			
		}
		return feilv.getFeilv();
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
	public List<String> getFamilyFeilv() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<String> feilvs = new ArrayList<String>();
		String sql = "SELECT feilv FROM bams.feilv ORDER BY id ASC LIMIT 3,5";
		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()){
				feilvs.add(rs.getDouble("feilv")+"");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return feilvs;
	}
}
