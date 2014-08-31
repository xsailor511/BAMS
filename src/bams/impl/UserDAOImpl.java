
package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bams.dao.UserDAO;
import bams.util.Database;
import bams.entity.User;

/**
 * @author xsailor
 */
public class UserDAOImpl implements UserDAO {
	private Connection connection;

	public UserDAOImpl() {
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}

	/**
	 * @return Returns the connection.
	 */
	public Connection getConnection() {
		return connection;
	}

	/**
	 * @param connection
	 *            The connection to set.
	 */
	public void setConnection(Connection connection) {
		this.connection = connection;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see bams.dao.UserDAO#addUser(bams.entity.User)
	 */
	public void addUser(User user) throws Exception {
		
		PreparedStatement ps = null;

		try {
			ps = connection
					.prepareStatement("Insert into user(name,role,password,phone,realname,socialid,email) values(?,?,?,?,?,?,?)");
			ps.setString(1, user.getName());
			ps.setInt(2, user.getRole());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getPhone());
			ps.setString(5, user.getRealname());
			ps.setString(6, user.getSocialid());
			ps.setString(7, user.getEmail());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeStatement(ps);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see bams.dao.UserDAO#updateUser(bams.entity.User)
	 */
	public void updateUser(User user) throws Exception {
		
		PreparedStatement ps = null;

		try {
			ps = connection
					.prepareStatement("update user set role=?,password=?,phone=?,realname=?,socialid=?,email=? where name=? ");
			//
			ps.setInt(1, user.getRole());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getPhone());
			ps.setString(4, user.getRealname());
			ps.setString(5, user.getSocialid());
			ps.setString(6, user.getEmail());
			ps.setString(7, user.getName());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeStatement(ps);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see bams.dao.UserDAO#deleteUser(java.lang.String)
	 */
	public boolean deleteUser(String name) throws Exception {
		
		PreparedStatement ps = null;
		boolean result = false;
		try {
			ps = connection.prepareStatement("delete from user where name=?");
			ps.setString(1, name);
			ps.executeUpdate();
			result = true;
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			result = false;
		} finally {
			closeStatement(ps);
		}
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see bams.dao.UserDAO#listAllUser()
	 */
	public List<User> listAllUser(int start) throws Exception {
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<User> result = null;

		try {
			ps = connection
					.prepareStatement("select * from user where role!=5 order by id asc limit ?,10");
			ps.setInt(1, start);
			System.out.println(ps.toString());
			rs = ps.executeQuery();
			User user = null;
			result = new ArrayList<User>();
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setRole(rs.getInt("role"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getString("phone"));
				user.setRealname(rs.getString("realname"));
				user.setSocialid(rs.getString("socialid"));
				user.setEmail(rs.getString("email"));
				user.setGoal(rs.getInt("goal"));
				result.add(user);
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see bams.dao.UserDAO#getUser(java.lang.String)
	 */
	public User getUser(String name) throws Exception {
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;

		try {
			ps = connection.prepareStatement("select * from user where name=?");
			ps.setString(1, name);
			rs = ps.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setRole(rs.getInt("role"));
				user.setPassword(rs.getString("password"));
				user.setPhone(rs.getString("phone"));
				user.setRealname(rs.getString("realname"));
				user.setSocialid(rs.getString("socialid"));
				user.setEmail(rs.getString("email"));
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return user;
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
	public boolean updateUserGoal(int goal, String name) throws Exception {
		PreparedStatement ps = null;
		boolean result = false;
		String sql = "update bams.user set goal=? where user.name=?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, goal);
			ps.setString(2, name);
			System.out.println(ps.executeUpdate());
			System.out.println(ps.toString());
			//Database.commit();
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
		}finally {
			closeStatement(ps);
		}
		return result;
	}

	@Override
	public boolean deleteManyUser(String[] names) throws Exception {
		boolean result = false;
		PreparedStatement ps = null;
		
		try {
			String sql = "delete from bams.user where user.name=?";
			
			ps = connection.prepareStatement(sql);
			for(int i=0;i<names.length;i++){
				ps.setString(1, names[i].trim());
				ps.addBatch();
			}
			System.out.println(ps.toString());
			ps.executeBatch();
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
		}finally {
			closeStatement(ps);
		}
		
		return result;
	}
}
