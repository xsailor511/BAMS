package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bams.dao.QuestionDAO;
import bams.entity.Question;
import bams.util.Database;

public class QuestionDAOImpl implements QuestionDAO {

	private Connection connection;

	public QuestionDAOImpl() {
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	@Override
	public boolean addQuestion(Question question) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into bams.question(company,people,tel,email,content,username,title,fax) values(?,?,?,?,?,?,?,?)";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, question.getCompany());
			ps.setString(2, question.getPeople());
			ps.setString(3, question.getTel());
			ps.setString(4, question.getEmail());
			ps.setString(5, question.getContent());
			ps.setString(6, question.getUsername());
			ps.setString(7, question.getTitle());
			ps.setString(8, question.getFax());
			ps.executeUpdate();
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeStatement(ps);
		}
		
		return result;
	}

	@Override
	public Question getQuestion(int id) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from bams.question where id=?";
		Question question = new Question();
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				question.setCompany(rs.getString("company"));
				question.setContent(rs.getString("content"));
				question.setEmail(rs.getString("email"));
				question.setId(rs.getInt("id"));
				question.setMark(rs.getInt("mark"));
				question.setPeople(rs.getString("people"));
				question.setTel(rs.getString("tel"));
				question.setUsername(rs.getString("username"));
				question.setTitle(rs.getString("title"));
				question.setFax(rs.getString("fax"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return question;
	}

	@Override
	public List<Question> listQuestionByUser(String username, int start,int mark) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Question> questionlist = new ArrayList<Question>();
		String sql = "select * from bams.question where username=? and mark=? limit ?,10";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, username);
			ps.setInt(2, mark);
			ps.setInt(3, start);
			rs = ps.executeQuery();
			while(rs.next()){
				Question question = new Question();
				question.setCompany(rs.getString("company"));
				question.setContent(rs.getString("content"));
				question.setEmail(rs.getString("email"));
				question.setId(rs.getInt("id"));
				question.setMark(rs.getInt("mark"));
				question.setPeople(rs.getString("people"));
				question.setTel(rs.getString("tel"));
				question.setUsername(rs.getString("username"));
				question.setTitle(rs.getString("title"));
				question.setFax(rs.getString("fax"));
				questionlist.add(question);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return questionlist;
	}

	@Override
	public boolean markQuestion(int id) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "update bams.question set mark=1 where id=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
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
	public boolean unmarkQuestion(int id) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "update bams.question set mark=0 where id=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
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
	public List<Question> listAllQuestion(int start,int mark) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Question> questionlist = new ArrayList<Question>();
		String sql = "select * from bams.question where mark=? limit ?,10";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, mark);
			ps.setInt(2, start);
			rs = ps.executeQuery();
			while(rs.next()){
				Question question = new Question();
				question.setCompany(rs.getString("company"));
				question.setContent(rs.getString("content"));
				question.setEmail(rs.getString("email"));
				question.setId(rs.getInt("id"));
				question.setMark(rs.getInt("mark"));
				question.setPeople(rs.getString("people"));
				question.setTel(rs.getString("tel"));
				question.setUsername(rs.getString("username"));
				question.setTitle(rs.getString("title"));
				question.setFax(rs.getString("fax"));
				
				questionlist.add(question);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return questionlist;
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
