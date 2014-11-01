package bams.dao;

import java.sql.Connection;
import java.util.List;

import bams.entity.Feilv;

public interface FeilvDAO {

	public List<Feilv> listAllFeilv();
	public boolean alertFeilv(int id,int feilv);
	public double getFeilv(int id);
	public List<String> getFamilyFeilv();
	public Connection getConnection();
	public void setConnection(Connection connection);
}
