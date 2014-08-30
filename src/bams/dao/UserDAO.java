/**
 * 
 */
package bams.dao;

import java.sql.Connection;
import java.util.List;

import bams.entity.User;

/**
 * @author Administrator
 */
public interface UserDAO {
	public void addUser(User user)throws Exception;

	public void updateUser(User user)throws Exception;

	public boolean deleteUser(String uid)throws Exception;

	public List<User> listAllUser(int start)throws Exception;

	public User getUser(String uid)throws Exception;
	public boolean updateUserGoal(int goal, String name) throws Exception;
	public Connection getConnection()throws Exception;
	
	public void setConnection(Connection connection)throws Exception;
	
}
