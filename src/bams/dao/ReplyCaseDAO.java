package bams.dao;

import java.sql.Connection;

import bams.entity.ReplyCase;

public interface ReplyCaseDAO {
	
	public boolean addReplyCase(ReplyCase replycase);
	public ReplyCase getReplyCase(int id);
	public boolean deleteReplyCase(int id);
	
	public void setConnection(Connection connection);
}
