package bams.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bams.dao.FeilvDAO;
import bams.entity.Feilv;
import bams.impl.FeilvDAOImpl;
import bams.util.Database;

public class FeilvService {

	FeilvDAO dao= new FeilvDAOImpl();
	
	public List<Feilv> listAllFeilv(){
		Connection connection = null;
		List<Feilv> list = new ArrayList<Feilv>();
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			list = dao.listAllFeilv();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		return list;
	}
	public boolean alertFeilv(int id,double feilv){
		Connection connection = null;
		
		boolean result = false;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			result = dao.alertFeilv(id, feilv);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	public double getFeilv(int id){
		Connection connection = null;
		double f = 0.0;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			f = dao.getFeilv(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		return f;
	}
	
	
	
}
