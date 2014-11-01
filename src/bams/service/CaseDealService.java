package bams.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bams.dao.CaseDealDAO;
import bams.entity.CaseDeal;
import bams.impl.CaseDealDAOImpl;
import bams.util.Database;

public class CaseDealService {

	CaseDealDAO dealDAO = new CaseDealDAOImpl();
	
	public boolean addCaseDeal(CaseDeal deal){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dealDAO.setConnection(connection);
			result = dealDAO.addCaseDeal(deal);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	public CaseDeal getCaseDeal(int id){
		CaseDeal deal = new CaseDeal();
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dealDAO.setConnection(connection);
			deal = dealDAO.getCaseDeal(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return deal;
	}
	
	public boolean deleteCaseDeal(int id){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dealDAO.setConnection(connection);
			result = dealDAO.deleteCaseDeal(id);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	public List<CaseDeal> listCaseDealByUser(String username, int start){
		List<CaseDeal> deallist = new ArrayList<CaseDeal>();
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dealDAO.setConnection(connection);
			deallist = dealDAO.listCaseDealByUser(username, start);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return deallist;
	}
	
	public List<CaseDeal> listAllCaseDeal(int start){
		List<CaseDeal> deallist = new ArrayList<CaseDeal>();
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dealDAO.setConnection(connection);
			deallist = dealDAO.listAllCaseDeal(start);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return deallist;
	}
	
	public boolean checkBao(String policynum){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dealDAO.setConnection(connection);
			result = dealDAO.checkBao(policynum);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	public CaseDeal searchCaseDeal(String username, String baoxiandanhao) {
		CaseDeal cd = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dealDAO.setConnection(connection);
			cd = dealDAO.searchCaseDeal(username, baoxiandanhao);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return cd;
	}
}
