package bams.service;

import java.sql.Connection;
import java.util.List;

import bams.dao.PolicyIndexDAO;
import bams.entity.PolicyIndex;
import bams.impl.PolicyIndexDAOImpl;
import bams.util.Database;

public class PolicyIndexService {

	private PolicyIndexDAO policyIndexDAO = new PolicyIndexDAOImpl();
	
	public boolean addPolicyIndex(PolicyIndex policyIndex){
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			policyIndexDAO.setConnection(connection);
			result =  policyIndexDAO.addPolicyIndex(policyIndex);
			Database.commit();
		} catch (Exception e) {
			Database.rollback();
			e.printStackTrace();
			result = false;
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	public List<PolicyIndex> getPolicyIndexByUserName(String username){
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyIndexDAO.setConnection(connection);
			return policyIndexDAO.getPolicyIndexByUserName(username);
		} catch (Exception e) {
			
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return null;
	}
	
	public List<PolicyIndex> listAllPolicyIndex(int start){
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyIndexDAO.setConnection(connection);
			return policyIndexDAO.listAllPolicyIndex(start);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return null;
	}

	public PolicyIndex getPolicyIndexByTag(String tag){
		PolicyIndex policyindex = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyIndexDAO.setConnection(connection);
			policyindex = policyIndexDAO.getPolicyIndexByTag(tag);
			
		}  catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return policyindex;
	}
	
	public PolicyIndexDAO getPolicyIndexDAO() {
		return policyIndexDAO;
	}

	public void setPolicyIndexDAO(PolicyIndexDAO policyIndexDAO) {
		this.policyIndexDAO = policyIndexDAO;
	}
	
	
}
