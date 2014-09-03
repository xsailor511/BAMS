package bams.service;

import java.sql.Connection;
import java.util.List;

import bams.dao.PictureDAO;
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
	
	
	public List<Picture> listPictureByUser(String picture_name){
		Connection connection = null;
		List<Picture> pictures = null;
		try {
			connection = Database.getConnection();
			pictures = pictureDAO.listPictureByUser(picture_name);
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
	
	public PictureDAO getPictureDAO() {
		return pictureDAO;
	}

	public void setPictureDAO(PictureDAO pictureDAO) {
		this.pictureDAO = pictureDAO;
	}
	
}
