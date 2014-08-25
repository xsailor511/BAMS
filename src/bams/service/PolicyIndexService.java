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
		try {
			connection = Database.getConnection();
			policyIndexDAO.setConnection(connection);
			return policyIndexDAO.addPolicyIndex(policyIndex);
		} catch (Exception e) {
			Database.rollback();
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return false;
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
	
	public List<PolicyIndex> listAllPolicyIndex(){
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyIndexDAO.setConnection(connection);
			return policyIndexDAO.listAllPolicyIndex();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return null;
	}

	public PolicyIndexDAO getPolicyIndexDAO() {
		return policyIndexDAO;
	}

	public void setPolicyIndexDAO(PolicyIndexDAO policyIndexDAO) {
		this.policyIndexDAO = policyIndexDAO;
	}
	
	
}
