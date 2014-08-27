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
		try {
			connection = Database.getConnection();
			pictureDAO.setConnection(connection);
			pictureDAO.addPicture(picture);
		}  catch (Exception e) {
			Database.rollback();
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return false;
	}
	
	public Picture getPicture(String picture_name){
		Connection connection = null;
		try {
			connection = Database.getConnection();
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
		try {
			connection = Database.getConnection();
			List<Picture> pictures = pictureDAO.listPictureByUser(picture_name);
			return pictures;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			Database.releaseConnection(connection);
		}
		return null;
	}
	public PictureDAO getPictureDAO() {
		return pictureDAO;
	}

	public void setPictureDAO(PictureDAO pictureDAO) {
		this.pictureDAO = pictureDAO;
	}
	
}
