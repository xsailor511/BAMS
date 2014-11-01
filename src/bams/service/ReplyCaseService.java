package bams.service;

import java.sql.Connection;
import java.sql.SQLException;

import bams.dao.ReplyCaseDAO;
import bams.entity.ReplyCase;
import bams.impl.ReplyCaseDAOImpl;
import bams.util.Database;

public class ReplyCaseService {

	private ReplyCaseDAO rcd = new ReplyCaseDAOImpl();
	
	public boolean addReplyCase(ReplyCase replycase){
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			rcd.setConnection(connection);
			result = rcd.addReplyCase(replycase);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	public ReplyCase getReplyCase(int id){
		Connection connection = null;
		
		ReplyCase rc = null;
		try {
			connection = Database.getConnection();
			rcd.setConnection(connection);
			rc = rcd.getReplyCase(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return rc;
	}
	public boolean deleteReplyCase(int id){
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			rcd.setConnection(connection);
			result = rcd.deleteReplyCase(id);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
}
