package bams.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;

import com.heavenlake.wordapi.Document;

import bams.dao.DataToWordDAO;
import bams.entity.AllProperty;
import bams.entity.EmployerDuty;
import bams.entity.EnterprisePackage;
import bams.entity.Family;
import bams.entity.Freight;
import bams.entity.Office;
import bams.entity.Vehicle;
import bams.impl.DataToWordDAOImpl;
import bams.util.Database;

public class DataToWordService {

	private DataToWordDAO dao = new DataToWordDAOImpl();
	private String templateWordPath="/file/user/template/";
	private String downloadPath = "/temp/";
	public String getTemplateWordPath() {
		return templateWordPath;
	}

	public void setTemplateWordPath(String templateWordPath) {
		this.templateWordPath = templateWordPath;
	}

	public String getDownloadPath() {
		return downloadPath;
	}

	public void setDownloadPath(String downloadPath) {
		this.downloadPath = downloadPath;
	}

	public String getAllPropertyFile(String tag){
		
		Connection connection = null;
		AllProperty allproperty = null;
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			allproperty = dao.getAllProperty(tag);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		String newfilename = downloadPath+allproperty.getUsername()+"_财产一切险投保单.doc";
		String oldfilename = "allproperty.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.replace("1001", "王三");
			//document.newDoc("d://filetest.doc");

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				boolean saveOnExit = true;
				if(document!=null)
				document.close(saveOnExit);
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		
		return newfilename;
	}
	
	public String getEmployerDutyFile(String tag){
		Connection connection = null;
		EmployerDuty employerduty = new EmployerDuty();
		
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			employerduty = dao.getEmployerDuty(tag);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		
		String newfilename = downloadPath+employerduty.getUsername()+"_雇主责任险投保单.doc";
		String oldfilename = "employerduty.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.replace("1001", "王三");

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				boolean saveOnExit = true;
				if(document!=null)
				document.close(saveOnExit);
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return newfilename;
	}
	
	public String getEnterprisePackageFile(String tag){
		Connection connection = null;
		EnterprisePackage enterprisepackage = new EnterprisePackage();
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			enterprisepackage = dao.getEnterprisePackage(tag);
			Database.commit();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		
		
		String newfilename = downloadPath+enterprisepackage.getUsername()+"_中小企业一揽子保险委托书.doc";
		String oldfilename = "enterprisepackage.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.replace("1001", "王三");

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				boolean saveOnExit = true;
				if(document!=null)
				document.close(saveOnExit);
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return newfilename;
	}
	
	public String getFamilyFile(String tag){
		Connection connection = null;
		Family family = new Family();
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			family = dao.getFamily(tag);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		
		String newfilename = downloadPath+family.getUsername()+"_全家无忧投保单.doc";
		String oldfilename = "family.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.replace("1001", "王三");
			//document.newDoc("d://filetest.doc");

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				boolean saveOnExit = true;
				if(document!=null)
				document.close(saveOnExit);
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return newfilename;
	}
	
	public String getFreightFile(String tag){
		Connection connection = null;
		Freight freight = new Freight();
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			freight = dao.getFreight(tag);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		String newfilename = downloadPath+freight.getUsername()+"_货运险投保单.doc";
		String oldfilename = "freight.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.replace("1001", "王三");

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				boolean saveOnExit = true;
				if(document!=null)
				document.close(saveOnExit);
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return newfilename;
	}
	
	public String getOfficeFile(String tag){
		Connection connection = null;
		Office office = new Office();
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			office = dao.getOffice(tag);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		
		String newfilename = downloadPath+office.getUsername()+"_办公室综合保险投保单.doc";
		String oldfilename = "office.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.replace("1001", "王三");

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				boolean saveOnExit = true;
				if(document!=null)
				document.close(saveOnExit);
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return newfilename;
	}
	
	public String getVehicleFile(String tag){
		Connection connection = null;
		Vehicle vehicle = new Vehicle();
		try {
			connection = Database.getConnection();
			dao.setConnection(connection);
			vehicle = dao.getVehicle(tag);
			Database.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			Database.releaseConnection(connection);
		}
		String newfilename = downloadPath+vehicle.getUsername()+"_机动车投保单.doc";
		String oldfilename = "vehicle.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.replace("1001", "王三");

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try{
				boolean saveOnExit = true;
				if(document!=null)
				document.close(saveOnExit);
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return newfilename;
	}
	
	public void copyFile(String oldPath, String newPath) { 
	       try { 
	           int bytesum = 0; 
	           int byteread = 0; 
	           File oldfile = new File(oldPath); 
	           if (oldfile.exists()) { //文件存在时 
	               InputStream inStream = new FileInputStream(oldPath); //读入原文件 
	               FileOutputStream fs = new FileOutputStream(newPath); 
	               byte[] buffer = new byte[1444]; 
	               //int length; 
	               while ( (byteread = inStream.read(buffer)) != -1) { 
	                   bytesum += byteread; //字节数 文件大小 
	                   System.out.println(bytesum); 
	                   fs.write(buffer, 0, byteread); 
	               } 
	               inStream.close(); 
	               fs.close();
	           } 
	       } 
	       catch (Exception e) { 
	           System.out.println("复制单个文件操作出错");
	           e.printStackTrace(); 

	       } 

	   } 
	
}
