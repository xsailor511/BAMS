package bams.dao;

import java.sql.Connection;
import java.util.List;

import bams.entity.Case;
import bams.entity.Picture;

public interface PictureDAO {
	/*
	 * @author xsailor
	 */

	public boolean addPicture(Picture picture)throws Exception;
	
	public boolean addPictures(List<Picture> picturelist);
	
	public Picture getPicture(String picture_name)throws Exception;
	
	public List<Picture> listPictureByUser(String picture_name)throws Exception;
	
	
	public boolean addCase(Case mycase);
	public List<Case> listAllCase();
	public List<Case> queryCaseByShigu();
	public boolean markCase(int id);
	public Case getCase(int id);
	
	public Connection getConnection()throws Exception;
	
	public void setConnection(Connection connection)throws Exception;
}
