package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bams.dao.OrderDAO;
import bams.entity.Order;
import bams.util.Database;

public class OrderDAOImpl implements OrderDAO {

	private Connection connection;
	
	
	public OrderDAOImpl(){
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	@Override
	public boolean addOrder(Order order) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into bams.order(address,goods_id,username,code) values(?,?,?,?)";
		try{
			ps = connection.prepareStatement(sql);
			ps.setString(1, order.getAddress());
			ps.setInt(2, order.getGoods_id());
			ps.setString(3, order.getUsername());
			ps.setString(4, order.getCode());
			ps.executeUpdate();
			result = true;
		}catch(SQLException e){
			e.printStackTrace();
		} finally {
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public List<Order> listAllOrder(int start,int mark) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Order> orderlist = new ArrayList<Order>();
		String sql = "select * from bams.order where mark=? limit ?,10";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, mark);
			ps.setInt(2, start);
			rs = ps.executeQuery();
			while(rs.next()){
				Order order = new Order();
				order.setId(rs.getInt("id"));
				order.setAddress(rs.getString("address"));
				order.setCode(rs.getString("code"));
				order.setGoods_id(rs.getInt("goods_id"));
				order.setUsername(rs.getString("username"));
				order.setMark(mark);
				orderlist.add(order);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeStatement(ps);
			closeResultSet(rs);
		}
		return orderlist;
	}

	@Override
	public boolean markOrder(int id) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "update bams.order set mark=1 where id=?";
		try{
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			result = true;
		}catch(SQLException e){
			e.printStackTrace();
		} finally {
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public boolean unmarkOrder(int id) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "update bams.order set mark=0 where id=?" ;
		try{
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
			result = true;
		}catch(SQLException e){
			e.printStackTrace();
		} finally {
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public Order getOrder(int id) {
		PreparedStatement ps = null;
		Order order = new Order();
		ResultSet rs = null;
		String sql = "select * from bams.order where id=?";
		try{
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				order.setId(rs.getInt("id"));
				order.setAddress(rs.getString("address"));
				order.setCode(rs.getString("code"));
				order.setGoods_id(rs.getInt("goods_id"));
				order.setUsername(rs.getString("username"));
				order.setMark(rs.getInt("mark"));
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		} finally {
			closeStatement(ps);
			closeResultSet(rs);
		}
		return order;
	}
	
	@Override
	public List<Order> listOrderByUser(String username, int start, int mark) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Order> orderlist = new ArrayList<Order>();
		String sql = "select * from bams.order where mark=? and username=? limit ?,10";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, mark);
			ps.setString(2, username);
			ps.setInt(3, start);
			rs = ps.executeQuery();
			while(rs.next()){
				Order order = new Order();
				order.setId(rs.getInt("id"));
				order.setAddress(rs.getString("address"));
				order.setCode(rs.getString("code"));
				order.setGoods_id(rs.getInt("goods_id"));
				order.setUsername(rs.getString("username"));
				order.setMark(mark);
				orderlist.add(order);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeStatement(ps);
			closeResultSet(rs);
		}
		return orderlist;
	}
	@Override
	public Connection getConnection() {
		return connection;
	}

	@Override
	public void setConnection(Connection connection) {
		this.connection = connection;
	}

	public static void closeStatement(Statement st) {
		if (st != null) {
			try {
				st.close();
				st = null;
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
	}

	public static void closeResultSet(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
				rs = null;
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
	}
	

}
