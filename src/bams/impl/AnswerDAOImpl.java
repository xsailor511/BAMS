package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bams.dao.AnswerDAO;
import bams.entity.Answer;
import bams.util.Database;

public class AnswerDAOImpl implements AnswerDAO {

	private Connection connection;

	public AnswerDAOImpl() {
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	
	
	@Override
	public boolean addAnswer(Answer answer) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into bams.answer(reply,question_id,username) values(?,?,?)";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, answer.getReply());
			ps.setInt(2, answer.getQuestion_id());
			ps.setString(3, answer.getUsername());
			ps.executeUpdate();
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeStatement(ps);
		}
		
		
		return result;
	}

	@Override
	public Answer getAnswer(int id) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from bams.answer where question_id=?";
		Answer answer = new Answer();
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				answer.setId(rs.getInt("id"));
				answer.setQuestion_id(rs.getInt("question_id"));
				answer.setReply(rs.getString("reply"));
				answer.setUsername(rs.getString("username"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeResultSet(rs);
			closeStatement(ps);
		}
		return answer;
	}

	@Override
	public boolean deleteAnswer(int id) {
		PreparedStatement ps = null;
		String sql = "delete from bams.answer where question_id=?";
		boolean result = false;
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			System.out.println(i);
			result = true;
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

	@Override
	public Connection getConnection() {
		
		return connection;
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
