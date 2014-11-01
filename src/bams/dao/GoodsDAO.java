package bams.dao;

import java.sql.Connection;
import java.util.List;

import bams.entity.Goods;

public interface GoodsDAO {

	/*
	 * @author xsailor
	 * 
	 */
	
	public boolean addGoods(List<Goods> goodslist);
	public List<Goods> listGoods(int start);
	public Goods getGoods(int id);
	public boolean deleteGoods(int id);
	public boolean updateValue(int id, int value);
	public boolean buy(String username, int value);
	
	public Connection getConnection();
	public void setConnection(Connection connection);
}
