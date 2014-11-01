package bams.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bams.dao.PictureDAO;
import bams.entity.Case;
import bams.entity.Picture;
import bams.impl.PictureDAOImpl;
import bams.util.Database;

public class PictureService {

	private PictureDAO pictureDAO = new PictureDAOImpl();

	public boolean addPicture(Picture picture) {
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			result =pictureDAO.addPicture(picture);
			Database.commit();
		}  catch (Exception e) {
			Database.rollback();
			result = false;
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	public Picture getPicture(String picture_name){
		Connection connection = null;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			Picture picture = pictureDAO.getPicture(picture_name);
			return picture;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return null;
	}
	
	
	public List<Picture> listPictureByUser(String picture_name,int start){
		Connection connection = null;
		List<Picture> pictures = null;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			pictures = pictureDAO.listPictureByUser(picture_name,start);
			return pictures;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return pictures;
	}
	
	public boolean addPictures(List<Picture> picturelist){
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			result = pictureDAO.addPictures(picturelist);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
			result = false;
		}finally{
			Database.releaseConnection(connection);
		}
		
		return result;
	}
	
	public boolean addCase(Case mycase){
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			result = pictureDAO.addCase(mycase);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
			result = false;
		}finally{
			Database.releaseConnection(connection);
		}
		
		return result;
	}
	public List<Case> listAllCase(int start,int mark){
		Connection connection = null;
		List<Case> cases = null;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			cases = pictureDAO.listAllCase(start,mark);
			//return cases;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return cases;
	}
	
	public List<Case> listCaseByUser(String username, int start, int mark) {
		Connection connection = null;
		List<Case> cases = null;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			cases = pictureDAO.listCaseByUser(username, start, mark);
			//return cases;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return cases;
	}
	
	public List<Case> queryCaseByShigu(String shigu){
		Connection connection = null;
		List<Case> cases = null;
		try {
			connection = Database.getConnection();
			cases = pictureDAO.queryCaseByShigu(shigu);
			return cases;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return cases;
	}
	public boolean markCase(int id){
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			result = pictureDAO.markCase(id);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	public Case getCase(int id){
		Connection connection = null;
		Case c = null;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			c = pictureDAO.getCase(id);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return c;
	}
	
	public boolean unmarkCase(int id) {
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			result = pictureDAO.unmarkCase(id);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	public List<Picture> listPictureByBaoxiandanhao(String baoxiandanhao) {
		List<Picture> pictures= new ArrayList<Picture>();
		Connection connection = null;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			pictures = pictureDAO.listPictureByBaoxiandanhao(baoxiandanhao);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return pictures;
	}
	
	public boolean deletePictureByBaoxiandanhao(String policynum) {
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			result = pictureDAO.deletePictureByBaoxiandanhao(policynum);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	
	public boolean checkCase(String baoxiandanhao) {
		Connection connection = null;
		boolean result = false;
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			result = pictureDAO.checkCase(baoxiandanhao);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return result;
	}
	public PictureDAO getPictureDAO() {
		return pictureDAO;
	}

	public void setPictureDAO(PictureDAO pictureDAO) {
		this.pictureDAO = pictureDAO;
	}
	
}
