package bams.dao;

import java.sql.Connection;
import java.util.List;

import bams.entity.Picture;

public interface PolicyIndexDAO {
	
	public boolean addPolicyIndex(Picture picture)throws Exception;
	
	public Picture getPolicyIndex(String picture_name)throws Exception;
	
	public List<Picture> listAllPolicyIndex()throws Exception;
	
	public Connection getConnection()throws Exception;
	
	public void setConnection(Connection connection)throws Exception;
}
