package bams.dao;

import java.sql.Connection;
import java.util.List;


import bams.entity.PolicyIndex;

public interface PolicyIndexDAO {
	
	public boolean addPolicyIndex(PolicyIndex policyIndex)throws Exception;
	
	public List<PolicyIndex> getPolicyIndexByUserName(String username)throws Exception;
	
	public List<PolicyIndex> listAllPolicyIndex()throws Exception;
	
	public Connection getConnection()throws Exception;
	
	public void setConnection(Connection connection)throws Exception;
}
