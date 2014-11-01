package bams.dao;

import java.sql.Connection;
import java.util.List;

import bams.entity.Question;

public interface QuestionDAO {

	public boolean addQuestion(Question question);
	public Question getQuestion(int id);
	public List<Question> listQuestionByUser(String username,int start,int mark);
	public boolean markQuestion(int id);
	public boolean unmarkQuestion(int id);
	public List<Question> listAllQuestion(int start,int mark);
	
	public void setConnection(Connection connection);
	public Connection getConnection();
}
