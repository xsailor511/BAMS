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
	
	public List<Picture> listPictureByUser(String picture_name, int start)throws Exception;
	public List<Picture> listPictureByBaoxiandanhao(String baoxiandanhao);
	
	public boolean addCase(Case mycase);
	public List<Case> listAllCase(int start,int mark);
	public List<Case> listCaseByUser(String username,int start,int mark);
	public List<Case> queryCaseByShigu(String shigu);
	public boolean markCase(int id);
	public boolean unmarkCase(int id);
	public Case getCase(int id);
	public boolean checkCase(String baoxiandanhao);
	
	public boolean deletePictureByBaoxiandanhao(String policynum);
	
	public Connection getConnection()throws Exception;
	
	public void setConnection(Connection connection)throws Exception;
}
