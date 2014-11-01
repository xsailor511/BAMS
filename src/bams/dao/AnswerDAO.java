package bams.dao;

import java.sql.Connection;

import bams.entity.Answer;

public interface AnswerDAO {

	public boolean addAnswer(Answer answer);
	public Answer getAnswer(int id);
	public boolean deleteAnswer(int id);
	
	public void setConnection(Connection connection);
	public Connection getConnection();
}
