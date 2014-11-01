package bams.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import bams.dao.OrderDAO;
import bams.entity.Order;
import bams.impl.OrderDAOImpl;
import bams.util.Database;

public class OrderService {

	OrderDAO dao = new OrderDAOImpl();
	public boolean addOrder(Order order){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			result = dao.addOrder(order);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	public List<Order> listAllOrder(int start,int mark){
		List<Order> orderlist = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			orderlist = dao.listAllOrder(start,mark);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		
		return orderlist;
	}
	
	public List<Order> listOrderByUser(String username, int start, int mark) {
		List<Order> orderlist = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			orderlist = dao.listOrderByUser(username, start, mark);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		
		return orderlist;
	}
	public boolean markOrder(int id){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			result = dao.markOrder(id);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	public boolean unmarkOrder(int id){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			result = dao.unmarkOrder(id);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			Database.rollback();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	public Order getOrder(int id){
		Connection connection = null;
		Order order = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			order = dao.getOrder(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		 return order;
	}
}
