package bams.service;

import java.sql.Connection;
import java.sql.SQLException;

import bams.dao.AnswerDAO;
import bams.entity.Answer;
import bams.impl.AnswerDAOImpl;
import bams.util.Database;

public class AnswerService {

	private AnswerDAO answerDAO = new AnswerDAOImpl();
	
	public boolean addAnswer(Answer answer){
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			answerDAO.setConnection(connection);
			result = answerDAO.addAnswer(answer);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	public Answer getAnswer(int id){
		Connection connection = null;
		Answer answer = null;
		try {
			connection = Database.getConnection();
			answerDAO.setConnection(connection);
			answer = answerDAO.getAnswer(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		return answer;
	}
	
	public boolean deleteAnswer(int question_id) {
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			answerDAO.setConnection(connection);
			result = answerDAO.deleteAnswer(question_id);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	
}
