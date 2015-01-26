package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bams.dao.CaseDealDAO;
import bams.entity.CaseDeal;
import bams.util.Database;

public class CaseDealDAOImpl implements CaseDealDAO {

	private Connection connection;

	public CaseDealDAOImpl() {
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	/**
	 * @param connection
	 *            The connection to set.
	 */
	public void setConnection(Connection connection) {
		this.connection = connection;
	}

	
	@Override
	public boolean addCaseDeal(CaseDeal deal) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into bams.casedeal(username,policyname,policynum) values(?,?,?)";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, deal.getUsername());
			ps.setString(2, deal.getPolicyname());
			ps.setString(3, deal.getPolicynum());
			int a = ps.executeUpdate();
			if(a==1){
				result = true;
			}else{
				result = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public CaseDeal getCaseDeal(int id) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from bams.casedeal where id=?";
		CaseDeal deal = new CaseDeal();
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				deal.setId(rs.getInt("id"));
				deal.setPolicyname(rs.getString("policyname"));
				deal.setPolicynum(rs.getString("policynum"));
				deal.setUsername(rs.getString("username"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return deal;
	}

	@Override
	public boolean deleteCaseDeal(int id) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "delete from bams.casedeal where id=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			int a = ps.executeUpdate();
			if(a==1){
				result = true;
			}else{
				result = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public List<CaseDeal> listCaseDealByUser(String username, int start) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<CaseDeal> deallist = new ArrayList<CaseDeal>();
		String sql = "select * from bams.casedeal where username=? limit ?,10";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			ps.setInt(2, start);
			rs = ps.executeQuery();
			while(rs.next()){
				CaseDeal deal = new CaseDeal();
				deal.setId(rs.getInt("id"));
				deal.setPolicyname(rs.getString("policyname"));
				deal.setPolicynum(rs.getString("policynum"));
				deal.setUsername(rs.getString("username"));
				deallist.add(deal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return deallist;
	}

	@Override
	public List<CaseDeal> listAllCaseDeal(int start) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<CaseDeal> deallist = new ArrayList<CaseDeal>();
		String sql = "select * from bams.casedeal limit ?,15";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, start);
			rs = ps.executeQuery();
			while(rs.next()){
				CaseDeal deal = new CaseDeal();
				deal.setId(rs.getInt("id"));
				deal.setPolicyname(rs.getString("policyname"));
				deal.setPolicynum(rs.getString("policynum"));
				deal.setUsername(rs.getString("username"));
				deallist.add(deal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return deallist;
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
	public boolean checkBao(String baoxiandanhao) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean result = false;
		String sql = "select * from bams.casedeal where policynum=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1,baoxiandanhao);
			rs = ps.executeQuery();
			if(rs.next())
				result = true;
			else
				result = false;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		
		return result;
	}
	@Override
	public CaseDeal searchCaseDeal(String username, String baoxiandanhao,String keytype) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from bams.casedeal where username=? and policynum=?";
		CaseDeal cd = new CaseDeal();
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, baoxiandanhao);
			rs = ps.executeQuery();
			if(rs.next()){
				cd.setId(rs.getInt("id"));
				cd.setPolicyname(rs.getString("policyname"));
				cd.setPolicynum(rs.getString("policynum"));
				cd.setUsername(username);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		
		return cd;
	}
}
