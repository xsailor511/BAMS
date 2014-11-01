package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bams.dao.ReplyCaseDAO;
import bams.entity.ReplyCase;
import bams.util.Database;

public class ReplyCaseDAOImpl implements ReplyCaseDAO {

	private Connection connection;

	public ReplyCaseDAOImpl() {
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	@Override
	public boolean addReplyCase(ReplyCase replycase) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into bams.replycase(username,case_id,content) values(?,?,?)";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, replycase.getUsername());
			ps.setInt(2, replycase.getCase_id());
			ps.setString(3, replycase.getContent());
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
	public ReplyCase getReplyCase(int id) {
		PreparedStatement ps = null;
		String sql = "select * from bams.replycase where id=?";
		ResultSet rs = null;
		ReplyCase rc = new ReplyCase();
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				rc.setCase_id(rs.getInt("case_id"));
				rc.setContent(rs.getString("content"));
				rc.setId(rs.getInt("id"));
				rc.setUsername(rs.getString("username"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeResultSet(rs);
			closeStatement(ps);
		}
		
		return rc;
	}

	@Override
	public boolean deleteReplyCase(int id) {
		PreparedStatement ps = null;
		String sql = "delete from bams.replycase where case_id=?";
		boolean result = false;
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if(i==1){
				result = true;
			}else{
				result = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeStatement(ps);
		}
		
		return result;
	}

	@Override
	public void setConnection(Connection connection) {
		this.connection = connection;

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
