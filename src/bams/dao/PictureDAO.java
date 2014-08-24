package bams.dao;

import java.sql.Connection;
import java.util.List;

import bams.entity.Picture;

public interface PictureDAO {
	/*
	 * @author xsailor
	 */

	public boolean addPicture(Picture picture)throws Exception;
	
	public Picture getPicture(String picture_name)throws Exception;
	
	public List<Picture> listPictureByUser(String username)throws Exception;
	
	public Connection getConnection()throws Exception;
	
	public void setConnection(Connection connection)throws Exception;
}
