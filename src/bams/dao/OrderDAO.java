package bams.dao;

import java.sql.Connection;
import java.util.List;

import bams.entity.Order;

public interface OrderDAO {

	
	public boolean addOrder(Order order);
	public List<Order> listAllOrder(int start,int mark);
	public List<Order> listOrderByUser(String username,int start,int mark);
	public boolean markOrder(int id);
	public boolean unmarkOrder(int id);
	public Order getOrder(int id);
	
	public Connection getConnection();
	public void setConnection(Connection connection);
}
