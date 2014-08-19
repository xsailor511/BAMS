/**
 * 
 */
package bams.service;

import java.sql.Connection;
import java.util.List;

import bams.dao.UserDAO;
import bams.impl.UserDAOImpl;
import bams.util.MailUtil;
import bams.util.Database;
import bams.entity.User;

/**
 * @author xsailor
 * 
 */
public class UserService {
	private UserDAO userDAO = new UserDAOImpl();

	public void addUser(User user, String basePath) throws Exception {
		Connection connection = null;

		StringBuffer body = new StringBuffer();
		StringBuffer link = new StringBuffer();
		body.append("您在银保直通车网站新注册的用户名是：");
		body.append(user.getId());
		body.append(",请点击以下链接激活帐号！\n");
		link.append(basePath);
		link.append("activeUser.jsp?id=");
		link.append(user.getId());
		
		body.append(link.toString());
		try {
			connection = Database.getConnection();
			userDAO.setConnection(connection);
			userDAO.addUser(user);
			MailUtil.sendEmail(user.getEmail(), "银保直通车网站用户注册激活码",
					body.toString());
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
			throw e;
		} finally {
			Database.releaseConnection(connection);
		}
	}

	public void deleteUser(String uid) throws Exception {
		Connection connection = null;
		try {
			connection = Database.getConnection();
			userDAO.setConnection(connection);
			userDAO.deleteUser(uid);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
			throw e;
		} finally {
			Database.releaseConnection(connection);
		}
	}

	public void updateUser(User user) throws Exception {
		Connection connection = null;
		try {
			connection = Database.getConnection();
			userDAO.setConnection(connection);
			userDAO.updateUser(user);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
			throw e;
		} finally {
			Database.releaseConnection(connection);
		}
	}

	public List<User> listAllUser() throws Exception {
		List<User> userList = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			userDAO.setConnection(connection);
			userList = userDAO.listAllUser();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			Database.releaseConnection(connection);
		}
		return userList;
	}

	public User getUser(String name) throws Exception {
		User user = null;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			userDAO.setConnection(connection);
			user = userDAO.getUser(name);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			Database.releaseConnection(connection);
		}
		return user;
	}

	public boolean login(String uid, String password) throws Exception {
		User user = null;
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			userDAO.setConnection(connection);
			user = userDAO.getUser(uid);
			if (user != null) {
				if (user.getPassword().equals(password)) {
					
					userDAO.updateUser(user);
					Database.commit();
					result = true;
				} else {
					result = false;
				}
			} else {
				result = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
			throw e;
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}

	public boolean checkName(String name) throws Exception {
		try {
			User user = getUser(name);
			if (user == null)
				return false;
			else
				return true;
		} catch (Exception e) {
			throw e;
		}
	}

//	public boolean validateUser(String uid, String validateCode)
//			throws Exception {
//		UserDAO userDAO = new UserDAOImpl();
//		Connection connection = null;
//		try {
//			connection = Database.getConnection();
//			userDAO.setConnection(connection);
//			User user = userDAO.getUser(uid);
//			if (user != null) {
//				if (user.getValidateCode().equals(validateCode)) {
//					user.setValidateCode("activated");
//					userDAO.updateUser(user);
//					Database.commit();
//					return true;
//				}
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//			Database.rollback();
//			throw e;
//		} finally {
//			Database.releaseConnection(connection);
//		}
//		return false;
//	}

	/**
	 * @return Returns the userDAO.
	 */
	public UserDAO getUserDAO() {
		return userDAO;
	}

	/**
	 * @param userDAO
	 *            The userDAO to set.
	 */
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

}