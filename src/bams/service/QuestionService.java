package bams.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import bams.dao.QuestionDAO;
import bams.entity.Question;
import bams.impl.QuestionDAOImpl;
import bams.util.Database;

public class QuestionService {

	private QuestionDAO questionDAO = new QuestionDAOImpl();
	
	public boolean addQuestion(Question question){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			questionDAO.setConnection(connection);
			result = questionDAO.addQuestion(question);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	public Question getQuestion(int id){
		Question question = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			questionDAO.setConnection(connection);
			question = questionDAO.getQuestion(id);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Database.releaseConnection(connection);
		}
		return question;
	}
	public List<Question> listQuestionByUser(String username,int start,int mark){
		List<Question> questionlist = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			questionDAO.setConnection(connection);
			questionlist = questionDAO.listQuestionByUser(username, start, mark);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Database.releaseConnection(connection);
		}
		return questionlist;
	}
	public boolean markQuestion(int id){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			questionDAO.setConnection(connection);
			result = questionDAO.markQuestion(id);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	public boolean unmarkQuestion(int id){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			questionDAO.setConnection(connection);
			result = questionDAO.unmarkQuestion(id);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	public List<Question> listAllQuestion(int start,int mark){
		List<Question> questionlist = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			questionDAO.setConnection(connection);
			questionlist = questionDAO.listAllQuestion(start,mark);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Database.releaseConnection(connection);
		}
		return questionlist;
	}
}
