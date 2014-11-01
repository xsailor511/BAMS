package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bams.dao.GoodsDAO;
import bams.entity.Goods;
import bams.util.Database;

public class GoodsDAOImpl implements GoodsDAO {

	private Connection connection;
	public GoodsDAOImpl(){
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	@Override
	public boolean addGoods(List<Goods> goodslist) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "insert into bams.goods(description,value,imageURL) values(?,?,?)";
		try{
			ps = connection.prepareStatement(sql);
			for(int i=0;i<goodslist.size();i++){
				ps.setString(1, goodslist.get(i).getDescription());
				ps.setInt(2, goodslist.get(i).getValue());
				ps.setString(3, goodslist.get(i).getImageURL());
				ps.addBatch();
			}
			
			ps.executeBatch();
			result = true;
		}catch(SQLException e){
			e.printStackTrace();
		} finally {
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public List<Goods> listGoods(int start) {
		List<Goods> goodslist = new ArrayList<Goods>();
		PreparedStatement ps = null;
		String sql = "select * from bams.goods limit ?,9";
		ResultSet rs = null;
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1,start);
			rs = ps.executeQuery();
			while(rs.next()){
				Goods goods = new Goods();
				goods.setDescription(rs.getString("description"));
				goods.setValue(rs.getInt("value"));
				goods.setId(rs.getInt("id"));
				goods.setImageURL(rs.getString("imageURL"));
				goodslist.add(goods);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeStatement(ps);
			closeResultSet(rs);
		}
		
		return goodslist;
	}

	@Override
	public Goods getGoods(int id) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Goods goods = new Goods();
		String sql = "select * from bams.goods where id=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				goods.setDescription(rs.getString("description"));
				goods.setValue(rs.getInt("value"));
				goods.setId(rs.getInt("id"));
				goods.setImageURL(rs.getString("imageURL"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeStatement(ps);
			closeResultSet(rs);
		}
		return goods;
	}

	@Override
	public boolean deleteGoods(int id) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "delete from bams.goods where id=?";
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

	public boolean buy(String username, int value){
		boolean result = false;
		PreparedStatement ps = null;
		String sql = "UPDATE bams.user SET goal = goal-? WHERE bams.user.name=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, value);
			ps.setString(2, username);
			ps.executeUpdate();
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeStatement(ps);
		}
		
		return result;
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

	@Override
	public Connection getConnection() {
		return connection;
	}

	@Override
	public void setConnection(Connection connection) {
		this.connection = connection;
	}
	@Override
	public boolean updateValue(int id, int value) {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "update bams.goods set value=? where id=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, value);
			ps.setInt(2, id);
			ps.executeUpdate();
			result = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeStatement(ps);
		}
		return result;
	}

}
