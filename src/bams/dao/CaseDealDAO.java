package bams.dao;

import java.sql.Connection;
import java.util.List;

import bams.entity.CaseDeal;

public interface CaseDealDAO {

	public boolean addCaseDeal(CaseDeal deal);
	public CaseDeal getCaseDeal(int id);
	public boolean deleteCaseDeal(int id);
	public List<CaseDeal> listCaseDealByUser(String username, int start);
	public CaseDeal searchCaseDeal(String username,String baoxiandanhao,String keytype);
	public List<CaseDeal> listAllCaseDeal(int start);
	public boolean checkBao(String baoxiandanhao);
	
	public void setConnection(Connection connection);
	
}
