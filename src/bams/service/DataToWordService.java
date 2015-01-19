package bams.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.sql.Connection;
import java.sql.SQLException;







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
import bams.util.StringUtil;

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
		String oldfilename = "allproperty.xml";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);

		try {
			String content = read(newfilename);
			//content = new String(content.getBytes(StringUtil.getEncoding(content)), "GBK");
			//System.out.println("before"+content);
			//File newfile = new File(newfilename);
			//FileInputStream fis = new FileInputStream(newfile);
			//InputStreamReader isr = new InputStreamReader(fis);
			//FileReader fr = new FileReader(isr);
			//BufferedReader br = new BufferedReader(isr);
//			if(content.contains("a1001"))
//				System.out.println("yes");
//			else
//				System.out.println("no");
			content = content.replaceFirst("a1001", allproperty.getToubaorenmingcheng());
			content = content.replaceFirst("a1002", allproperty.getToubaorendizhi());
			content = content.replaceFirst("a1003", allproperty.getToubaorendianhua());
			content = content.replaceFirst("a1004", allproperty.getToubaorenzuzhijigou());
			content = content.replaceFirst("a1005", allproperty.getBeibaoxianrenmingcheng());
			content = content.replaceFirst("a1006", allproperty.getBeibaoxianrendizhi());
			content = content.replaceFirst("a1007", allproperty.getBeibaoxianrenyingyexingzhi());
			content = content.replaceFirst("a1008", allproperty.getBeibaoxianrenzuzhijigou());
			content = content.replaceFirst("a1009", allproperty.getBaoxiancaichandizhi());
			content = content.replaceFirst("a1010", allproperty.getYouzhengbianma());
//			content = content.replaceFirst("a1011", allproperty.);
//			content = content.replaceFirst("a1012", allproperty);
//			content = content.replaceFirst("a1013", allproperty);
//			content = content.replaceFirst("a1014", allproperty);
			content = content.replaceFirst("a1015", allproperty.getFangwujine()+"");
			content = content.replaceFirst("a1016", allproperty.getJiqishebeijine()+"");
			content = content.replaceFirst("a1017", allproperty.getCunhuojine()+"");
			content = content.replaceFirst("a1018", allproperty.getQitajine()+"");
			content = content.replaceFirst("a1019", "0.078");//费率是个定值
			content = content.replaceFirst("a1020", allproperty.getBaoxianfei()+"");
			content = content.replaceFirst("a1021", allproperty.getBaoxianjinexiaoji());
			content = content.replaceFirst("a1022", allproperty.getStart_time());
			content = content.replaceFirst("a1023", allproperty.getEnd_time());
			content = content.replaceFirst("a1024", allproperty.getBaoxianfeichina());
			//content = content.replaceFirst("a1025", allproperty);
			content = content.replaceFirst("a1026", allproperty.getJiaofeishijian());
			content = content.replaceFirst("a1027", allproperty.getFujiatiaokuan());
			content = content.replaceFirst("a1028", allproperty.getTebieyueding());
			String zhenyichuli = allproperty.getZhengyichuli();
			if(zhenyichuli.equals("susong")){
				content = content.replaceFirst("a1029", "√");
				content = content.replaceFirst("a1030", "○");
				content = content.replaceFirst("a1031", "");
			}else{
			String temp[] = zhenyichuli.split(";");
			content = content.replaceFirst("a1029", "○");
			content = content.replaceFirst("a1030", "√");
			content = content.replaceFirst("a1031", temp[1]);
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
				content = content.replaceFirst("a1032", "√");
			}else{
				content = content.replaceFirst("a1032", "○");
			}
			if(zichanfuzai){
				content = content.replaceFirst("a1033", "√");
			}else{
				content = content.replaceFirst("a1033", "○");
			}
			if(fengxianpinggu){
				content = content.replaceFirst("a1034", "√");
			}else{
				content = content.replaceFirst("a1034", "○");
			}
			if(qita){
				content = content.replaceFirst("a1035", "√");
				content = content.replaceFirst("a1036", fujians[fujians.length-1]);
			}else{
				content = content.replaceFirst("a1035", "○");
				content = content.replaceFirst("a1036", "");
			}
			content = content.replaceFirst("a1037", allproperty.getToubaofujianshuliang()+"");
			String shifoutouguo = allproperty.getShifoutouguo();
			String shifous[] = shifoutouguo.split(";");
			if(shifous[0].equals("shi")){
				content = content.replaceFirst("a1038", "√");
				content = content.replaceFirst("a1039", "○");
				content = content.replaceFirst("a1040", shifous[1]);
			}
			else{
				content = content.replaceFirst("a1038", "○");
				content = content.replaceFirst("a1039", "√");
				content = content.replaceFirst("a1040", "");
			}
			String lipeijilu = allproperty.getLipeijilu();
			String lipeis[] = lipeijilu.split(";");
			if(lipeis[0].equals("you")){
				content = content.replaceFirst("a1041", "√");
				content = content.replaceFirst("a1042", "○");
				content = content.replaceFirst("a1043", lipeis[1]);
				content = content.replaceFirst("a1044", lipeis[2]);
				content = content.replaceFirst("a1045", lipeis[3]);
				content = content.replaceFirst("a1046", lipeis[4]);
			}else{
				content = content.replaceFirst("a1041", "○");
				content = content.replaceFirst("a1042", "√");
				content = content.replaceFirst("a1043", "");
				content = content.replaceFirst("a1044", "");
				content = content.replaceFirst("a1045", "");
				content = content.replaceFirst("a1046", "");
			}
			//System.out.println();
			content = content.replaceFirst("a1047", allproperty.getToubaorenqianzhang());
			content = content.replaceFirst("a1048", allproperty.getToubaoriqi());
			//System.out.println(StringUtil.getEncoding(content));
			//System.out.println("after"+content);
			//content.newDoc("d://filetest.doc");
			write(newfilename,content);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
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
		String oldfilename = "employerduty.xml";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		try {

			String content = read(newfilename);
			content = content.replaceFirst("a1001", employerduty.getToubaorenmingcheng());
			content = content.replaceFirst("a1002", employerduty.getToubaorendizhi());
			content = content.replaceFirst("a1003", employerduty.getToubaorenlianxiren());
			content = content.replaceFirst("a1004", employerduty.getToubaorendianhua());
			content = content.replaceFirst("a1005", employerduty.getBeibaoxianrenmingcheng());
			content = content.replaceFirst("a1006", employerduty.getBeibaoxianrendizhi());
			content = content.replaceFirst("a1007", employerduty.getYingyexingzhi());
			content = content.replaceFirst("a1008", employerduty.getBeizuzhijigoudaima());
			if(employerduty.isCanjiashehuibaoxian()){
				content = content.replaceFirst("a1009", "是");
			}else{
				content = content.replaceFirst("a1009", "否");
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
					content = content.replaceFirst("a"+count1, guyuangongzhongs[i]);//1010--1014
					content = content.replaceFirst("a"+count2, guyuanrenshus[i]);//1015-1019
					content = content.replaceFirst("a"+count3, peichangsiwangs[i]);//1020-1024
					content = content.replaceFirst("a"+count4, peichangyiliaos[i]);//1025-1029
				}
				else{
					content = content.replaceFirst("a"+count1, "");//1010--1014
					content = content.replaceFirst("a"+count2, "");//1015-1019
					content = content.replaceFirst("a"+count3, "");//1020-1024
					content = content.replaceFirst("a"+count4, "");//1025-1029
				}
				
			}
			
			
			content = content.replaceFirst("a1030", "0.078");
			content = content.replaceFirst("a1031", employerduty.getBaoxianfei()+"");
			content = content.replaceFirst("a1032", employerduty.getStart_time());
			content = content.replaceFirst("a1033", employerduty.getEnd_time());
			content = content.replaceFirst("a1034", employerduty.getTebieyueding());
			content = content.replaceFirst("a1035", employerduty.getFufeiriqi());
			content = content.replaceFirst("a1036", employerduty.getSifaguanxia());
			String zhengyichuli = employerduty.getZhengyichuli();
			String zhengyi[] = zhengyichuli.split(";");
			if(zhengyi[0].equals("susong")){
				content = content.replaceFirst("a1037", "√");
				content = content.replaceFirst("a1038", "○");
				content = content.replaceFirst("a1039", "");
			}else{
				content = content.replaceFirst("a1037", "○");
				content = content.replaceFirst("a1038", "√");
				content = content.replaceFirst("a1039", zhengyi[1]);
			}
			
			content = content.replaceFirst("a1040", employerduty.getToubaorenqianzhang());
			content = content.replaceFirst("a1041", employerduty.getToubaoriqi());
			
			write(newfilename,content);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
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
		String oldfilename = "enterprisepackage.xml";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);

		try {

			String content = read(newfilename);
			//System.out.println("enterprise package before:"+content);
			content = content.replaceFirst("a1001", enterprisepackage.getWeituoren());
			content = content.replaceFirst("aa1002", enterprisepackage.getDianhua());
			content = content.replaceFirst("aa1003", enterprisepackage.getLianxiren());
			content = content.replaceFirst("a1004", enterprisepackage.getEnddate());
			String kexuanxianzhong = enterprisepackage.getKexuanxianzhong();
			String kexuans[] = kexuanxianzhong.split(";");
			kexuanxianzhong = "";
			for(int i=0;i<kexuans.length;i++){
				kexuanxianzhong = kexuanxianzhong+"√"+kexuans[i];
			}
			//System.out.println(kexuanxianzhong);
			content = content.replaceFirst("a1005", kexuanxianzhong);
			String baoxiangongsi = enterprisepackage.getBaoxiangongsi();
			if(baoxiangongsi.equals("tongyi")){
				content = content.replaceFirst("a1006", "");
				content = content.replaceFirst("a1007", "√同意");
			}else{
				content = content.replaceFirst("a1006", "√"+baoxiangongsi);
				content = content.replaceFirst("a1007", "");
			}
			
			content = content.replaceFirst("a1008", enterprisepackage.getWeituoren());
			content = content.replaceFirst("a1009", enterprisepackage.getWeituorenzhucedizhi());
			content = content.replaceFirst("a1010", enterprisepackage.getWeituorenfadingdaibiaoren());
			content = content.replaceFirst("a1011", enterprisepackage.getShoutuorenzhucedizhi());
			content = content.replaceFirst("a1012", enterprisepackage.getShoutuorenfadingdaibiao());
			content = content.replaceFirst("a1013", enterprisepackage.getStartdate());
			content = content.replaceFirst("a1014", enterprisepackage.getWeituorenqianzhang());
			content = content.replaceFirst("a1015", enterprisepackage.getTianbiaoriqi());
			write(newfilename,content);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
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
		String oldfilename = "family.xml";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);

		try {

			String content = read(newfilename);
			content = content.replaceFirst("a1001", family.getBaoxiancaichandizhi());
			content = content.replaceFirst("a1002", "√");
			boolean quantijiatingchengyuan = family.isQuantijiatingchengyuan();
			family.isYiwaishanghaiyiliao();
			family.isChucichamingzhongji();
			family.isMenjizhen();
			family.isJibingzhuyuan();
			if(quantijiatingchengyuan){
				content = content.replaceFirst("a1003", "√");
				if(family.isYiwaishanghaiyiliao())
					content = content.replaceFirst("a1004", "√");
				else
					content = content.replaceFirst("a1004", "○");
				if(family.isChucichamingzhongji())
					content = content.replaceFirst("a1005", "√");
				else
					content = content.replaceFirst("a1005", "○");
				if(family.isMenjizhen())
					content = content.replaceFirst("a1006", "√");
				else
					content = content.replaceFirst("a1006", "○");
				if(family.isJibingzhuyuan())
					content = content.replaceFirst("a1007", "√");
				else
					content = content.replaceFirst("a1007", "○");
			}

			content = content.replaceFirst("a1008", family.getStartdate());
			content = content.replaceFirst("a1009", family.getEnddate());
			content = content.replaceFirst("a1010", family.getBaoxianfeizongjichina());
			content = content.replaceFirst("a1011", family.getBaoxianfeizongji()+"");
			//content.newDoc("d://filetest.doc");
			write(newfilename,content);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
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
		String oldfilename = "freight.xml";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		try {

			String content = read(newfilename);
			content = content.replaceFirst("a1001", freight.getFax_from());
			content = content.replaceFirst("a1002", freight.getFax_to());
			content = content.replaceFirst("a1003", freight.getBeibaoxianren());
			content = content.replaceFirst("a1004", freight.getFapiaohao());
			content = content.replaceFirst("a1005", freight.getFapiaoriqi());
			content = content.replaceFirst("a1006", freight.getJinkouhetonghao());
			content = content.replaceFirst("a1007", freight.getXinyongzhenghao());
			content = content.replaceFirst("a1008", freight.getBaozhuangshuliang()+"");
			content = content.replaceFirst("a1009", freight.getBiaoji());
			content = content.replaceFirst("a1010", freight.getJiagetiaojian());
			content = content.replaceFirst("a1011", freight.getFapiaojine()+"");
			content = content.replaceFirst("a1012", freight.getBaoxianjine()+"");
			content = content.replaceFirst("a1013", "0.078");
			content = content.replaceFirst("a1014", freight.getBaoxianfei()+"");
			content = content.replaceFirst("a1015", freight.getChuanming());
			content = content.replaceFirst("a1016", freight.getJianzaonianfen());
			content = content.replaceFirst("a1017", freight.getChuanqi());
			content = content.replaceFirst("a1018", freight.getQiyunriqi());
			content = content.replaceFirst("a1019", freight.getQiyungang());
			content = content.replaceFirst("a1020", freight.getVia());
			content = content.replaceFirst("a1021", freight.getMudigang());
			content = content.replaceFirst("a1022", freight.getChengbaoxianbie());
			content = content.replaceFirst("a1023", freight.getNote());
			content = content.replaceFirst("a1024", freight.getToubaorenqianzhang());
			content = content.replaceFirst("a1025", freight.getTianbiaoriqi());
			write(newfilename,content);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
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
		String oldfilename = "office.xml";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);

		try {
			String content = read(newfilename);
			content = content.replaceFirst("a1001", office.getToubaorenmingcheng());
			content = content.replaceFirst("a1002", office.getToubaorendizhi());
			content = content.replaceFirst("a1003", office.getLianxiren());
			content = content.replaceFirst("a1004", office.getCaichansunshixianadd()+"");
			content = content.replaceFirst("a1005", office.getCaichansunshixianaddbaoe()+"");
			content = content.replaceFirst("a1006", office.getTuantiyiwaixianzengjiarenshu()+"");
			content = content.replaceFirst("a1007", office.getTuantiyiwaixianzengjiabaofei()+"");
			content = content.replaceFirst("a1008", office.getZongbaofei()+"");
			content = content.replaceFirst("a1009", office.getToubaorenqianzhang());
			content = content.replaceFirst("a1010", office.getToubaoriqi());
			String tuantiyiwaishanghaimingdan = office.getTuantiyiwaishanghaimingdan();
			String tuantiyiwaishanghaishenfenzheng= office.getTuantiyiwaishanghaishenfenzheng();
			String shenfenzhengs[] = tuantiyiwaishanghaishenfenzheng.split(";");
			String mingdans[] = tuantiyiwaishanghaimingdan.split(";");
			for(int i=0;i<mingdans.length;i++){
				if(!mingdans[i].equals("none")){
					content = content.replaceFirst("a"+(1011+i), mingdans[i]);
					content = content.replaceFirst("a"+(1021+i), shenfenzhengs[i]);
				}else{
					content = content.replaceFirst("a"+(1011+i), "");
					content = content.replaceFirst("a"+(1021+i), "");
				}
			}
			
			String gaoceng = office.getGaocengchailvmingdan();
			String gaos[] = gaoceng.split(";");
			String gaoshenfenzheng = office.getGaocengchailvshenfengzheng();
			String gaoshens[]= gaoshenfenzheng.split(";");
			for(int i=0;i<gaos.length;i++){
				if(!mingdans[i].equals("none")){
					content = content.replaceFirst("a"+(1031+i), gaos[i]);
					content = content.replaceFirst("a"+(1033+i), gaoshens[i]);
				}else{
					content = content.replaceFirst("a"+(1031+i), "");
					content = content.replaceFirst("a"+(1033+i), "");
				}
				
			}
			content = content.replaceFirst("a2001", office.getShineizhuanghuang()+"");
			content = content.replaceFirst("a2002", office.getBangongjiaju()+"");
			content = content.replaceFirst("a2003", office.getBangongdianzi()+"");
			
			
			write(newfilename,content);

		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
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
		String oldfilename = "vehicle.xml";
		oldfilename = templateWordPath + oldfilename;
		copyFile(oldfilename,newfilename);
		
		try {

			String content = read(newfilename);
			content = content.replaceFirst("a1001", vehicle.getBeibaoxianrenmingcheng());
			content = content.replaceFirst("a1002", vehicle.getBeibaoxianrenzhengjianhaoma());
			content = content.replaceFirst("a1003", vehicle.getBeibaoxianrentongxundizhi());
			//System.out.println("after 1003");
			content = content.replaceFirst("a1004", vehicle.getBeibaoxianrenyoubian());
			content = content.replaceFirst("a1005", vehicle.getBeibaoxianlianxiren());
			content = content.replaceFirst("a1006", vehicle.getBeibaoxianrendianhua());
			content = content.replaceFirst("a1007", vehicle.getBeibaoxianrenbangongdianhua());
			content = content.replaceFirst("a1008", vehicle.getBeibaoxianrenemail());
			content = content.replaceFirst("a1009", vehicle.getToubaorenmingcheng());
			content = content.replaceFirst("a1010", vehicle.getToubaorenzhengjianhaoma());
			content = content.replaceFirst("a1011", vehicle.getToubaorentongxundizhi());
			content = content.replaceFirst("a1012", vehicle.getToubaorenyoubian());
			content = content.replaceFirst("a1013", vehicle.getToubaorenlianxiren());
			content = content.replaceFirst("a1014", vehicle.getToubaorendianhua());
			content = content.replaceFirst("a1015", vehicle.getToubaorenbangongdianhua());
			content = content.replaceFirst("a1016", vehicle.getToubaorenemail());
			content = content.replaceFirst("a1017", vehicle.getXingshizhengchezhu());
			content = content.replaceFirst("a1018", vehicle.getChangpaixinghao());
			content = content.replaceFirst("a1019", vehicle.getHedingzaike()+"");
			content = content.replaceFirst("a1020", vehicle.getHaopaihaoma());
			content = content.replaceFirst("a1021", vehicle.getChucidengjiriqi());
			content = content.replaceFirst("a1022", vehicle.getShibiedaima());
			content = content.replaceFirst("a1023", vehicle.getFadongjixinghao());
			content = content.replaceFirst("a1024", vehicle.getXinchejiage()+"");
			content = content.replaceFirst("a1025", vehicle.getZhengbeizhiliang()+"");
			content = content.replaceFirst("a1026", vehicle.getPaiqiliang()+"");
			content = content.replaceFirst("a1027", vehicle.getShangnianjiaoqiangxian());
			content = content.replaceFirst("a1028", vehicle.getJiaoqiangxianbaodanhao());
			content = content.replaceFirst("a1029", vehicle.getShangnianshangyexian());
			content = content.replaceFirst("a1030", vehicle.getShangyexianbaodanhao());
			content = content.replaceFirst("a1031", vehicle.getJiashiyuanxinxi());
			String shangyexianxiane = vehicle.getShangyexianxiane();
			String shangyexianxianes[] = shangyexianxiane.split(";");
			String baoxianfeixiaoji = vehicle.getBaoxianfeixiaoji();
			String baoxianfeixiaojis[] = baoxianfeixiaoji.split(";");
			for(int i=0;i<shangyexianxianes.length;i++){
				if(shangyexianxianes[i].equals("zero")){
					content = content.replaceFirst("a"+(1032+i), "○");
					content = content.replaceFirst("a"+(1044+i), "");
					content = content.replaceFirst("a"+(2044+i), "");
					
				}else{
					content = content.replaceFirst("a"+(1032+i), "√");
					content = content.replaceFirst("a"+(1044+i), shangyexianxianes[i]);
					content = content.replaceFirst("a"+(2044+i), baoxianfeixiaojis[i]);
				}
			}
			
			content = content.replaceFirst("a1056", vehicle.getShangyebaoxianfeiheji()+"");
			content = content.replaceFirst("a1057", vehicle.getChechuanshui()+"");
			content = content.replaceFirst("a1058", vehicle.getHeji()+"");
			content = content.replaceFirst("a1059", vehicle.getShangyebaoxianstartdate());
			content = content.replaceFirst("a1060", vehicle.getShangyebaoxianenddate());
			content = content.replaceFirst("a1061", vehicle.getJiaoqiangbaoxianstartdate());
			content = content.replaceFirst("a1062", vehicle.getJiaoqiangbaoxianenddate());
			content = content.replaceFirst("a1063", vehicle.getZhengyijiejue());
			
			write(newfilename,content);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
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
	
	 /**
     * 读取文件内容
     * 
     * @param filePath
     * @return
     */
    public String read(String filePath) {
        BufferedReader br = null;
        String line = null;
        StringBuffer buf = new StringBuffer();
        
        try {
            // 根据文件路径创建缓冲输入流
        	FileInputStream fis = new FileInputStream(new File(filePath));
        	InputStreamReader reader = new InputStreamReader(fis, "UTF-8");
            br = new BufferedReader(reader);
            
            // 循环读取文件的每一行, 对需要修改的行进行修改, 放入缓冲对象中
            while ((line = br.readLine()) != null) {
                buf.append(line);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭流
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    br = null;
                }
            }
        }
        
        return buf.toString();
    }
	
    /**
     * 将内容回写到文件中
     * 
     * @param filePath
     * @param content
     */
    public void write(String filePath, String content) {
        BufferedWriter bw = null;
        
        try {
            // 根据文件路径创建缓冲输出流
        	FileOutputStream os = new FileOutputStream(new File(filePath));
        	OutputStreamWriter osw = new OutputStreamWriter(os,"UTF-8");
            bw = new BufferedWriter(osw);
            // 将内容写入文件中
            bw.write(content);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭流
            if (bw != null) {
                try {
                    bw.close();
                } catch (IOException e) {
                    bw = null;
                }
            }
        }
    }
}
