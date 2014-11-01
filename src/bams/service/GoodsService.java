package bams.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import bams.dao.GoodsDAO;
import bams.entity.Goods;
import bams.impl.GoodsDAOImpl;
import bams.util.Database;

public class GoodsService {

	GoodsDAO dao = new GoodsDAOImpl();
	public boolean addGoods(List<Goods> goodslist){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			result = dao.addGoods(goodslist);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	public List<Goods> listGoods(int start){
		List<Goods> goodslist = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			goodslist = dao.listGoods(start);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		
		return goodslist;
	}
	public Goods getGoods(int id){
		Goods goods = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			goods = dao.getGoods(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		return goods;
	}
	public boolean deleteGoods(int id){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			result = dao.deleteGoods(id);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally {
			Database.releaseConnection(connection);
		}
		
		return result;
	}
	
	public boolean updateValue(int id, int value) {
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			result = dao.updateValue(id, value);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally {
			Database.releaseConnection(connection);
		}
		return result ;
	}
	
	public boolean buy(String username, int value){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			result = dao.buy(username, value);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally {
			Database.releaseConnection(connection);
		}
		return result ;
	}
	
}
