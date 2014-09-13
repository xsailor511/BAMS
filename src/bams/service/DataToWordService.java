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
	private String policyname;
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

	
	public String getPolicyname() {
		return policyname;
	}

	public void setPolicyname(String policyname) {
		this.policyname = policyname;
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
		String newfilename = downloadPath+policyname;
		String oldfilename = "allproperty.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.insertAtBookmark("a1001", allproperty.getToubaorenmingcheng());
			document.insertAtBookmark("a1002", allproperty.getToubaorendizhi());
			document.insertAtBookmark("a1003", allproperty.getToubaorendianhua());
			document.insertAtBookmark("a1004", allproperty.getToubaorenzuzhijigou());
			document.insertAtBookmark("a1005", allproperty.getBeibaoxianrenmingcheng());
			document.insertAtBookmark("a1006", allproperty.getBeibaoxianrendizhi());
			document.insertAtBookmark("a1007", allproperty.getBeibaoxianrenyingyexingzhi());
			document.insertAtBookmark("a1008", allproperty.getBeibaoxianrenzuzhijigou());
			document.insertAtBookmark("a1009", allproperty.getBaoxiancaichandizhi());
			document.insertAtBookmark("a1010", allproperty.getYouzhengbianma());
//			document.insertAtBookmark("a1011", allproperty.);
//			document.insertAtBookmark("a1012", allproperty);
//			document.insertAtBookmark("a1013", allproperty);
//			document.insertAtBookmark("a1014", allproperty);
			document.insertAtBookmark("a1015", allproperty.getFangwujine()+"");
			document.insertAtBookmark("a1016", allproperty.getJiqishebeijine()+"");
			document.insertAtBookmark("a1017", allproperty.getCunhuojine()+"");
			document.insertAtBookmark("a1018", allproperty.getQitajine()+"");
			document.insertAtBookmark("a1019", "0.078");//费率是个定值
			document.insertAtBookmark("a1020", allproperty.getBaoxianfei()+"");
			document.insertAtBookmark("a1021", allproperty.getBaoxianjinexiaoji());
			document.insertAtBookmark("a1022", allproperty.getStart_time());
			document.insertAtBookmark("a1023", allproperty.getEnd_time());
			document.insertAtBookmark("a1024", allproperty.getBaoxianfeichina());
			//document.insertAtBookmark("a1025", allproperty);
			document.insertAtBookmark("a1026", allproperty.getJiaofeishijian());
			document.insertAtBookmark("a1027", allproperty.getFujiatiaokuan());
			document.insertAtBookmark("a1028", allproperty.getTebieyueding());
			String zhenyichuli = allproperty.getZhengyichuli();
			if(zhenyichuli.equals("susong")){
				document.insertAtBookmark("a1029", "√");
				document.insertAtBookmark("a1030", "○");
				document.insertAtBookmark("a1031", "");
			}else{
			String temp[] = zhenyichuli.split(";");
			document.insertAtBookmark("a1029", "○");
			document.insertAtBookmark("a1030", "√");
			document.insertAtBookmark("a1031", temp[1]);
			}
			String toubaofujian = allproperty.getToubaofujian();
			String fujians[] = toubaofujian.split(";");
			boolean qita = false;
			boolean caicanjine = false;
			boolean zichanfuzai = false;
			boolean fengxianpinggu = false;
			for(int i=0;i<fujians.length;i++){
				if(fujians[i].equals("caicanjine")){
					caicanjine = true;
				}
				if(fujians[i].equals("zichanfuzai")){
					zichanfuzai = true;
				}
				if(fujians[i].equals("fengxianpinggu")){
					fengxianpinggu = true;
				}
				if(fujians[i].equals("qita")){
					qita = true;
				}
			}
			if(caicanjine){
				document.insertAtBookmark("a1032", "√");
			}else{
				document.insertAtBookmark("a1032", "○");
			}
			if(zichanfuzai){
				document.insertAtBookmark("a1033", "√");
			}else{
				document.insertAtBookmark("a1033", "○");
			}
			if(fengxianpinggu){
				document.insertAtBookmark("a1034", "√");
			}else{
				document.insertAtBookmark("a1034", "○");
			}
			if(qita){
				document.insertAtBookmark("a1035", "√");
				document.insertAtBookmark("a1036", fujians[fujians.length-1]);
			}else{
				document.insertAtBookmark("a1035", "○");
				document.insertAtBookmark("a1036", "");
			}
			document.insertAtBookmark("a1037", allproperty.getToubaofujianshuliang()+"");
			String shifoutouguo = allproperty.getShifoutouguo();
			String shifous[] = shifoutouguo.split(";");
			if(shifous[0].equals("shi")){
				document.insertAtBookmark("a1038", "√");
				document.insertAtBookmark("a1039", "○");
				document.insertAtBookmark("a1040", shifous[1]);
			}
			else{
				document.insertAtBookmark("a1038", "○");
				document.insertAtBookmark("a1039", "√");
				document.insertAtBookmark("a1040", "");
			}
			String lipeijilu = allproperty.getLipeijilu();
			String lipeis[] = lipeijilu.split(";");
			if(lipeis[0].equals("you")){
				document.insertAtBookmark("a1041", "√");
				document.insertAtBookmark("a1042", "○");
				document.insertAtBookmark("a1043", lipeis[1]);
				document.insertAtBookmark("a1044", lipeis[2]);
				document.insertAtBookmark("a1045", lipeis[3]);
				document.insertAtBookmark("a1046", lipeis[4]);
			}else{
				document.insertAtBookmark("a1041", "○");
				document.insertAtBookmark("a1042", "√");
				document.insertAtBookmark("a1043", "");
				document.insertAtBookmark("a1044", "");
				document.insertAtBookmark("a1045", "");
				document.insertAtBookmark("a1046", "");
			}
			
			document.insertAtBookmark("a1047", allproperty.getToubaorenqianzhang());
			document.insertAtBookmark("a1048", allproperty.getToubaoriqi());
			
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
		
		String newfilename = downloadPath+policyname;
		String oldfilename = "employerduty.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.insertAtBookmark("a1001", employerduty.getToubaorenmingcheng());
			document.insertAtBookmark("a1002", employerduty.getToubaorendizhi());
			document.insertAtBookmark("a1003", employerduty.getToubaorenlianxiren());
			document.insertAtBookmark("a1004", employerduty.getToubaorendianhua());
			document.insertAtBookmark("a1005", employerduty.getBeibaoxianrenmingcheng());
			document.insertAtBookmark("a1006", employerduty.getBeibaoxianrendizhi());
			document.insertAtBookmark("a1007", employerduty.getYingyexingzhi());
			document.insertAtBookmark("a1008", employerduty.getBeizuzhijigoudaima());
			if(employerduty.isCanjiashehuibaoxian()){
				document.insertAtBookmark("a1009", "是");
			}else{
				document.insertAtBookmark("a1009", "否");
			}
			String guyuangongzhong = employerduty.getGuyuangongzhong();
			String guyuanrenshu = employerduty.getGuyuanrenshu();
			String peichangsiwang = employerduty.getPeichangsiwang();
			String peichangyiliao = employerduty.getPeichangyiliao();
			
			String guyuangongzhongs[] = guyuangongzhong.split(";");
			String guyuanrenshus[] = guyuanrenshu.split(";");
			String peichangsiwangs[] = peichangsiwang.split(";");
			String peichangyiliaos[] = peichangyiliao.split(";");
			int count1=0;
			int count2=0;
			int count3=0;
			int count4=0;
			for(int i=0;i<guyuangongzhongs.length;i++){
				count1 = (1010+i);
				count2 = (1015+i);
				count3 = (1020+i);
				count4 = (1025+i);
				if(!guyuangongzhongs[i].equals("none")){
					document.insertAtBookmark("a"+count1, guyuangongzhongs[i]);//1010--1014
					document.insertAtBookmark("a"+count2, guyuanrenshus[i]);//1015-1019
					document.insertAtBookmark("a"+count3, peichangsiwangs[i]);//1020-1024
					document.insertAtBookmark("a"+count4, peichangyiliaos[i]);//1025-1029
				}
				else{
					document.insertAtBookmark("a"+count1, "");//1010--1014
					document.insertAtBookmark("a"+count2, "");//1015-1019
					document.insertAtBookmark("a"+count3, "");//1020-1024
					document.insertAtBookmark("a"+count4, "");//1025-1029
				}
				
			}
			
			
			document.insertAtBookmark("a1030", "0.078");
			document.insertAtBookmark("a1031", employerduty.getBaoxianfei()+"");
			document.insertAtBookmark("a1032", employerduty.getStart_time());
			document.insertAtBookmark("a1033", employerduty.getEnd_time());
			document.insertAtBookmark("a1034", employerduty.getTebieyueding());
			document.insertAtBookmark("a1035", employerduty.getFufeiriqi());
			document.insertAtBookmark("a1036", employerduty.getSifaguanxia());
			String zhengyichuli = employerduty.getZhengyichuli();
			String zhengyi[] = zhengyichuli.split(";");
			if(zhengyi[0].equals("susong")){
				document.insertAtBookmark("a1037", "√");
				document.insertAtBookmark("a1038", "○");
				document.insertAtBookmark("a1039", "");
			}else{
				document.insertAtBookmark("a1037", "○");
				document.insertAtBookmark("a1038", "√");
				document.insertAtBookmark("a1039", zhengyi[1]);
			}
			
			document.insertAtBookmark("a1040", employerduty.getToubaorenqianzhang());
			document.insertAtBookmark("a1041", employerduty.getToubaoriqi());
			
			
			
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
		
		
		String newfilename = downloadPath+policyname;
		String oldfilename = "enterprisepackage.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.insertAtBookmark("a1001", enterprisepackage.getWeituoren());
			document.insertAtBookmark("a1002", enterprisepackage.getDianhua());
			document.insertAtBookmark("a1003", enterprisepackage.getLianxiren());
			document.insertAtBookmark("a1004", enterprisepackage.getEnddate());
			String kexuanxianzhong = enterprisepackage.getKexuanxianzhong();
			String kexuans[] = kexuanxianzhong.split(";");
			kexuanxianzhong = "";
			for(int i=0;i<kexuans.length;i++){
				kexuanxianzhong = kexuanxianzhong+"√"+kexuans[i];
			}
			//System.out.println(kexuanxianzhong);
			document.insertAtBookmark("a1005", kexuanxianzhong);
			String baoxiangongsi = enterprisepackage.getBaoxiangongsi();
			if(baoxiangongsi.equals("tongyi")){
				document.insertAtBookmark("a1006", "");
				document.insertAtBookmark("a1007", "√同意");
			}else{
				document.insertAtBookmark("a1006", "√"+baoxiangongsi);
				document.insertAtBookmark("a1007", "");
			}
			
			document.insertAtBookmark("a1008", enterprisepackage.getWeituoren());
			document.insertAtBookmark("a1009", enterprisepackage.getWeituorenzhucedizhi());
			document.insertAtBookmark("a1010", enterprisepackage.getWeituorenfadingdaibiaoren());
			document.insertAtBookmark("a1011", enterprisepackage.getShoutuorenzhucedizhi());
			document.insertAtBookmark("a1012", enterprisepackage.getShoutuorenfadingdaibiao());
			document.insertAtBookmark("a1013", enterprisepackage.getStartdate());
			document.insertAtBookmark("a1014", enterprisepackage.getWeituorenqianzhang());
			document.insertAtBookmark("a1015", enterprisepackage.getTianbiaoriqi());

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
		
		String newfilename = downloadPath+policyname;
		String oldfilename = "family.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.insertAtBookmark("a1001", family.getBaoxiancaichandizhi());
			document.insertAtBookmark("a1002", "√");
			boolean quantijiatingchengyuan = family.isQuantijiatingchengyuan();
			family.isYiwaishanghaiyiliao();
			family.isChucichamingzhongji();
			family.isMenjizhen();
			family.isJibingzhuyuan();
			if(quantijiatingchengyuan){
				document.insertAtBookmark("a1003", "√");
				if(family.isYiwaishanghaiyiliao())
					document.insertAtBookmark("a1004", "√");
				else
					document.insertAtBookmark("a1004", "○");
				if(family.isChucichamingzhongji())
					document.insertAtBookmark("a1005", "√");
				else
					document.insertAtBookmark("a1005", "○");
				if(family.isMenjizhen())
					document.insertAtBookmark("a1006", "√");
				else
					document.insertAtBookmark("a1006", "○");
				if(family.isJibingzhuyuan())
					document.insertAtBookmark("a1007", "√");
				else
					document.insertAtBookmark("a1007", "○");
			}

			document.insertAtBookmark("a1008", family.getStartdate());
			document.insertAtBookmark("a1009", family.getEnddate());
			document.insertAtBookmark("a1010", family.getBaoxianfeizongjichina());
			document.insertAtBookmark("a1011", family.getBaoxianfeizongji()+"");
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
		String newfilename = downloadPath+policyname;
		String oldfilename = "freight.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.insertAtBookmark("a1001", freight.getFax_from());
			document.insertAtBookmark("a1002", freight.getFax_to());
			document.insertAtBookmark("a1003", freight.getBeibaoxianren());
			document.insertAtBookmark("a1004", freight.getFapiaohao());
			document.insertAtBookmark("a1005", freight.getFapiaoriqi());
			document.insertAtBookmark("a1006", freight.getJinkouhetonghao());
			document.insertAtBookmark("a1007", freight.getXinyongzhenghao());
			document.insertAtBookmark("a1008", freight.getBaozhuangshuliang()+"");
			document.insertAtBookmark("a1009", freight.getBiaoji());
			document.insertAtBookmark("a1010", freight.getJiagetiaojian());
			document.insertAtBookmark("a1011", freight.getFapiaojine()+"");
			document.insertAtBookmark("a1012", freight.getBaoxianjine()+"");
			document.insertAtBookmark("a1013", "0.078");
			document.insertAtBookmark("a1014", freight.getBaoxianfei()+"");
			document.insertAtBookmark("a1015", freight.getChuanming());
			document.insertAtBookmark("a1016", freight.getJianzaonianfen());
			document.insertAtBookmark("a1017", freight.getChuanqi());
			document.insertAtBookmark("a1018", freight.getQiyunriqi());
			document.insertAtBookmark("a1019", freight.getQiyungang());
			document.insertAtBookmark("a1020", freight.getVia());
			document.insertAtBookmark("a1021", freight.getMudigang());
			document.insertAtBookmark("a1022", freight.getChengbaoxianbie());
			document.insertAtBookmark("a1023", freight.getNote());
			document.insertAtBookmark("a1024", freight.getToubaorenqianzhang());
			document.insertAtBookmark("a1025", freight.getTianbiaoriqi());

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
		
		String newfilename = downloadPath+policyname;
		String oldfilename = "office.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.insertAtBookmark("a1001", office.getToubaorenmingcheng());
			document.insertAtBookmark("a1002", office.getToubaorendizhi());
			document.insertAtBookmark("a1003", office.getLianxiren());
			document.insertAtBookmark("a1004", office.getCaichansunshixianadd()+"");
			document.insertAtBookmark("a1005", office.getCaichansunshixianaddbaoe()+"");
			document.insertAtBookmark("a1006", office.getTuantiyiwaixianzengjiarenshu()+"");
			document.insertAtBookmark("a1007", office.getTuantiyiwaixianzengjiabaofei()+"");
			document.insertAtBookmark("a1008", office.getZongbaofei()+"");
			document.insertAtBookmark("a1009", office.getToubaorenqianzhang());
			document.insertAtBookmark("a1010", office.getToubaoriqi());
			String tuantiyiwaishanghaimingdan = office.getTuantiyiwaishanghaimingdan();
			String tuantiyiwaishanghaishenfenzheng= office.getTuantiyiwaishanghaishenfenzheng();
			String shenfenzhengs[] = tuantiyiwaishanghaishenfenzheng.split(";");
			String mingdans[] = tuantiyiwaishanghaimingdan.split(";");
			for(int i=0;i<mingdans.length;i++){
				if(!mingdans[i].equals("none")){
					document.insertAtBookmark("a"+(1011+i), mingdans[i]);
					document.insertAtBookmark("a"+(1021+i), shenfenzhengs[i]);
				}else{
					document.insertAtBookmark("a"+(1011+i), "");
					document.insertAtBookmark("a"+(1021+i), "");
				}
			}
			
			String gaoceng = office.getGaocengchailvmingdan();
			String gaos[] = gaoceng.split(";");
			String gaoshenfenzheng = office.getGaocengchailvshenfengzheng();
			String gaoshens[]= gaoshenfenzheng.split(";");
			for(int i=0;i<gaos.length;i++){
				if(!mingdans[i].equals("none")){
					document.insertAtBookmark("a"+(1031+i), gaos[i]);
					document.insertAtBookmark("a"+(1033+i), gaoshens[i]);
				}else{
					document.insertAtBookmark("a"+(1031+i), "");
					document.insertAtBookmark("a"+(1033+i), "");
				}
				
			}
			document.insertAtBookmark("a2001", office.getShineizhuanghuang()+"");
			document.insertAtBookmark("a2002", office.getBangongjiaju()+"");
			document.insertAtBookmark("a2003", office.getBangongdianzi()+"");
			
			
			

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
		String newfilename = downloadPath+policyname;
		String oldfilename = "vehicle.doc";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		Document document = null;
		try {
			document = new Document();
			document.open(newfilename);
			document.insertAtBookmark("a1001", vehicle.getBeibaoxianrenmingcheng());
			document.insertAtBookmark("a1002", vehicle.getBeibaoxianrenzhengjianhaoma());
			document.insertAtBookmark("a1003", vehicle.getBeibaoxianrentongxundizhi());
			System.out.println("after 1003");
			document.insertAtBookmark("a1004", vehicle.getBeibaoxianrenyoubian());
			document.insertAtBookmark("a1005", vehicle.getBeibaoxianlianxiren());
			document.insertAtBookmark("a1006", vehicle.getBeibaoxianrendianhua());
			document.insertAtBookmark("a1007", vehicle.getBeibaoxianrenbangongdianhua());
			document.insertAtBookmark("a1008", vehicle.getBeibaoxianrenemail());
			document.insertAtBookmark("a1009", vehicle.getToubaorenmingcheng());
			document.insertAtBookmark("a1010", vehicle.getToubaorenzhengjianhaoma());
			document.insertAtBookmark("a1011", vehicle.getToubaorentongxundizhi());
			document.insertAtBookmark("a1012", vehicle.getToubaorenyoubian());
			document.insertAtBookmark("a1013", vehicle.getToubaorenlianxiren());
			document.insertAtBookmark("a1014", vehicle.getToubaorendianhua());
			document.insertAtBookmark("a1015", vehicle.getToubaorenbangongdianhua());
			document.insertAtBookmark("a1016", vehicle.getToubaorenemail());
			document.insertAtBookmark("a1017", vehicle.getXingshizhengchezhu());
			document.insertAtBookmark("a1018", vehicle.getChangpaixinghao());
			document.insertAtBookmark("a1019", vehicle.getHedingzaike()+"");
			document.insertAtBookmark("a1020", vehicle.getHaopaihaoma());
			document.insertAtBookmark("a1021", vehicle.getChucidengjiriqi());
			document.insertAtBookmark("a1022", vehicle.getShibiedaima());
			document.insertAtBookmark("a1023", vehicle.getFadongjixinghao());
			document.insertAtBookmark("a1024", vehicle.getXinchejiage()+"");
			document.insertAtBookmark("a1025", vehicle.getZhengbeizhiliang()+"");
			document.insertAtBookmark("a1026", vehicle.getPaiqiliang()+"");
			document.insertAtBookmark("a1027", vehicle.getShangnianjiaoqiangxian());
			document.insertAtBookmark("a1028", vehicle.getJiaoqiangxianbaodanhao());
			document.insertAtBookmark("a1029", vehicle.getShangnianshangyexian());
			document.insertAtBookmark("a1030", vehicle.getShangyexianbaodanhao());
			document.insertAtBookmark("a1031", vehicle.getJiashiyuanxinxi());
			String shangyexianxiane = vehicle.getShangyexianxiane();
			String shangyexianxianes[] = shangyexianxiane.split(";");
			String baoxianfeixiaoji = vehicle.getBaoxianfeixiaoji();
			String baoxianfeixiaojis[] = baoxianfeixiaoji.split(";");
			for(int i=0;i<shangyexianxianes.length;i++){
				if(shangyexianxianes[i].equals("zero")){
					document.insertAtBookmark("a"+(1032+i), "○");
					document.insertAtBookmark("a"+(1044+i), "");
					document.insertAtBookmark("a"+(2044+i), "");
					
				}else{
					document.insertAtBookmark("a"+(1032+i), "√");
					document.insertAtBookmark("a"+(1044+i), shangyexianxianes[i]);
					document.insertAtBookmark("a"+(2044+i), baoxianfeixiaojis[i]);
				}
			}
			
			document.insertAtBookmark("a1056", vehicle.getShangyebaoxianfeiheji()+"");
			document.insertAtBookmark("a1057", vehicle.getChechuanshui()+"");
			document.insertAtBookmark("a1058", vehicle.getHeji()+"");
			document.insertAtBookmark("a1059", vehicle.getShangyebaoxianstartdate());
			document.insertAtBookmark("a1060", vehicle.getShangyebaoxianenddate());
			document.insertAtBookmark("a1061", vehicle.getJiaoqiangbaoxianstartdate());
			document.insertAtBookmark("a1062", vehicle.getJiaoqiangbaoxianenddate());
			document.insertAtBookmark("a1063", vehicle.getZhengyijiejue());

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
	           //int bytesum = 0;
	           int byteread = 0; 
	           File oldfile = new File(oldPath); 
	           if (oldfile.exists()) { //文件存在时 
	               InputStream inStream = new FileInputStream(oldPath); //读入原文件 
	               FileOutputStream fs = new FileOutputStream(newPath); 
	               byte[] buffer = new byte[1444]; 
	               //int length; 
	               while ( (byteread = inStream.read(buffer)) != -1) { 
	                   //bytesum += byteread; //字节数 文件大小 
	                   //System.out.println(bytesum); 
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
