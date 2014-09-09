package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bams.dao.PolicyIndexDAO;
import bams.entity.PolicyIndex;
import bams.util.Database;

public class PolicyIndexDAOImpl implements PolicyIndexDAO {

	private Connection connection;
	
	public PolicyIndexDAOImpl(){
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
	public boolean addPolicyIndex(PolicyIndex policyIndex) throws Exception {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into policyindex(tablename,policyname,username) values(?,?,?)";
		ps = connection.prepareStatement(sql);
		try {
			ps.setString(1, policyIndex.getTablename());
			ps.setString(2, policyIndex.getPolicyname());
			ps.setString(3, policyIndex.getUsername());
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
	public List<PolicyIndex> getPolicyIndexByUserName(String username) throws Exception {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<PolicyIndex> policylist = new ArrayList<PolicyIndex>();
		String sql = "select * from policyindex where username=?";
		
		ps = connection.prepareStatement(sql);
		ps.setString(1, username);
		System.out.println(ps.toString());
		rs = ps.executeQuery();
		while(rs.next()){
			PolicyIndex policyindex = new PolicyIndex();
			policyindex.setId(rs.getInt("id"));
			policyindex.setPolicyname(rs.getString("policyname"));
			policyindex.setTablename(rs.getString("tablename"));
			policyindex.setUsername(rs.getString("username"));
			policylist.add(policyindex);
		}
		return policylist;
	}

	@Override
	public List<PolicyIndex> listAllPolicyIndex() throws Exception {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<PolicyIndex> policylist = new ArrayList<PolicyIndex>();
		String sql = "select * from policyindex ";
		
		ps = connection.prepareStatement(sql);
		rs = ps.executeQuery();
		while(rs.next()){
			PolicyIndex policyindex = new PolicyIndex();
			policyindex.setId(rs.getInt("id"));
			policyindex.setPolicyname(rs.getString("policyname"));
			policyindex.setTablename(rs.getString("tablename"));
			policyindex.setUsername(rs.getString("username"));
			policylist.add(policyindex);
		}
		return policylist;
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
