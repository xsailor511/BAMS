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
			System.out.println("before"+content);
			//File newfile = new File(newfilename);
			//FileInputStream fis = new FileInputStream(newfile);
			//InputStreamReader isr = new InputStreamReader(fis);
			//FileReader fr = new FileReader(isr);
			//BufferedReader br = new BufferedReader(isr);
			content.replaceFirst("a1001", allproperty.getToubaorenmingcheng());
			content.replaceFirst("a1002", allproperty.getToubaorendizhi());
			content.replaceFirst("a1003", allproperty.getToubaorendianhua());
			content.replaceFirst("a1004", allproperty.getToubaorenzuzhijigou());
			content.replaceFirst("a1005", allproperty.getBeibaoxianrenmingcheng());
			content.replaceFirst("a1006", allproperty.getBeibaoxianrendizhi());
			content.replaceFirst("a1007", allproperty.getBeibaoxianrenyingyexingzhi());
			content.replaceFirst("a1008", allproperty.getBeibaoxianrenzuzhijigou());
			content.replaceFirst("a1009", allproperty.getBaoxiancaichandizhi());
			content.replaceFirst("a1010", allproperty.getYouzhengbianma());
//			content.replaceFirst("a1011", allproperty.);
//			content.replaceFirst("a1012", allproperty);
//			content.replaceFirst("a1013", allproperty);
//			content.replaceFirst("a1014", allproperty);
			content.replaceFirst("a1015", allproperty.getFangwujine()+"");
			content.replaceFirst("a1016", allproperty.getJiqishebeijine()+"");
			content.replaceFirst("a1017", allproperty.getCunhuojine()+"");
			content.replaceFirst("a1018", allproperty.getQitajine()+"");
			content.replaceFirst("a1019", "0.078");//费率是个定值
			content.replaceFirst("a1020", allproperty.getBaoxianfei()+"");
			content.replaceFirst("a1021", allproperty.getBaoxianjinexiaoji());
			content.replaceFirst("a1022", allproperty.getStart_time());
			content.replaceFirst("a1023", allproperty.getEnd_time());
			content.replaceFirst("a1024", allproperty.getBaoxianfeichina());
			//content.replaceFirst("a1025", allproperty);
			content.replaceFirst("a1026", allproperty.getJiaofeishijian());
			content.replaceFirst("a1027", allproperty.getFujiatiaokuan());
			content.replaceFirst("a1028", allproperty.getTebieyueding());
			String zhenyichuli = allproperty.getZhengyichuli();
			if(zhenyichuli.equals("susong")){
				content.replaceFirst("a1029", "√");
				content.replaceFirst("a1030", "○");
				content.replaceFirst("a1031", "");
			}else{
			String temp[] = zhenyichuli.split(";");
			content.replaceFirst("a1029", "○");
			content.replaceFirst("a1030", "√");
			content.replaceFirst("a1031", temp[1]);
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
				content.replaceFirst("a1032", "√");
			}else{
				content.replaceFirst("a1032", "○");
			}
			if(zichanfuzai){
				content.replaceFirst("a1033", "√");
			}else{
				content.replaceFirst("a1033", "○");
			}
			if(fengxianpinggu){
				content.replaceFirst("a1034", "√");
			}else{
				content.replaceFirst("a1034", "○");
			}
			if(qita){
				content.replaceFirst("a1035", "√");
				content.replaceFirst("a1036", fujians[fujians.length-1]);
			}else{
				content.replaceFirst("a1035", "○");
				content.replaceFirst("a1036", "");
			}
			content.replaceFirst("a1037", allproperty.getToubaofujianshuliang()+"");
			String shifoutouguo = allproperty.getShifoutouguo();
			String shifous[] = shifoutouguo.split(";");
			if(shifous[0].equals("shi")){
				content.replaceFirst("a1038", "√");
				content.replaceFirst("a1039", "○");
				content.replaceFirst("a1040", shifous[1]);
			}
			else{
				content.replaceFirst("a1038", "○");
				content.replaceFirst("a1039", "√");
				content.replaceFirst("a1040", "");
			}
			String lipeijilu = allproperty.getLipeijilu();
			String lipeis[] = lipeijilu.split(";");
			if(lipeis[0].equals("you")){
				content.replaceFirst("a1041", "√");
				content.replaceFirst("a1042", "○");
				content.replaceFirst("a1043", lipeis[1]);
				content.replaceFirst("a1044", lipeis[2]);
				content.replaceFirst("a1045", lipeis[3]);
				content.replaceFirst("a1046", lipeis[4]);
			}else{
				content.replaceFirst("a1041", "○");
				content.replaceFirst("a1042", "√");
				content.replaceFirst("a1043", "");
				content.replaceFirst("a1044", "");
				content.replaceFirst("a1045", "");
				content.replaceFirst("a1046", "");
			}
			
			content.replaceFirst("a1047", allproperty.getToubaorenqianzhang());
			content.replaceFirst("a1048", allproperty.getToubaoriqi());
			//System.out.println(StringUtil.getEncoding(content));
			//System.out.println(content);
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
			content.replaceFirst("a1001", employerduty.getToubaorenmingcheng());
			content.replaceFirst("a1002", employerduty.getToubaorendizhi());
			content.replaceFirst("a1003", employerduty.getToubaorenlianxiren());
			content.replaceFirst("a1004", employerduty.getToubaorendianhua());
			content.replaceFirst("a1005", employerduty.getBeibaoxianrenmingcheng());
			content.replaceFirst("a1006", employerduty.getBeibaoxianrendizhi());
			content.replaceFirst("a1007", employerduty.getYingyexingzhi());
			content.replaceFirst("a1008", employerduty.getBeizuzhijigoudaima());
			if(employerduty.isCanjiashehuibaoxian()){
				content.replaceFirst("a1009", "是");
			}else{
				content.replaceFirst("a1009", "否");
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
					content.replaceFirst("a"+count1, guyuangongzhongs[i]);//1010--1014
					content.replaceFirst("a"+count2, guyuanrenshus[i]);//1015-1019
					content.replaceFirst("a"+count3, peichangsiwangs[i]);//1020-1024
					content.replaceFirst("a"+count4, peichangyiliaos[i]);//1025-1029
				}
				else{
					content.replaceFirst("a"+count1, "");//1010--1014
					content.replaceFirst("a"+count2, "");//1015-1019
					content.replaceFirst("a"+count3, "");//1020-1024
					content.replaceFirst("a"+count4, "");//1025-1029
				}
				
			}
			
			
			content.replaceFirst("a1030", "0.078");
			content.replaceFirst("a1031", employerduty.getBaoxianfei()+"");
			content.replaceFirst("a1032", employerduty.getStart_time());
			content.replaceFirst("a1033", employerduty.getEnd_time());
			content.replaceFirst("a1034", employerduty.getTebieyueding());
			content.replaceFirst("a1035", employerduty.getFufeiriqi());
			content.replaceFirst("a1036", employerduty.getSifaguanxia());
			String zhengyichuli = employerduty.getZhengyichuli();
			String zhengyi[] = zhengyichuli.split(";");
			if(zhengyi[0].equals("susong")){
				content.replaceFirst("a1037", "√");
				content.replaceFirst("a1038", "○");
				content.replaceFirst("a1039", "");
			}else{
				content.replaceFirst("a1037", "○");
				content.replaceFirst("a1038", "√");
				content.replaceFirst("a1039", zhengyi[1]);
			}
			
			content.replaceFirst("a1040", employerduty.getToubaorenqianzhang());
			content.replaceFirst("a1041", employerduty.getToubaoriqi());
			
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
			content.replaceFirst("a1001", enterprisepackage.getWeituoren());
			content.replaceFirst("a1002", enterprisepackage.getDianhua());
			content.replaceFirst("a1003", enterprisepackage.getLianxiren());
			content.replaceFirst("a1004", enterprisepackage.getEnddate());
			String kexuanxianzhong = enterprisepackage.getKexuanxianzhong();
			String kexuans[] = kexuanxianzhong.split(";");
			kexuanxianzhong = "";
			for(int i=0;i<kexuans.length;i++){
				kexuanxianzhong = kexuanxianzhong+"√"+kexuans[i];
			}
			//System.out.println(kexuanxianzhong);
			content.replaceFirst("a1005", kexuanxianzhong);
			String baoxiangongsi = enterprisepackage.getBaoxiangongsi();
			if(baoxiangongsi.equals("tongyi")){
				content.replaceFirst("a1006", "");
				content.replaceFirst("a1007", "√同意");
			}else{
				content.replaceFirst("a1006", "√"+baoxiangongsi);
				content.replaceFirst("a1007", "");
			}
			
			content.replaceFirst("a1008", enterprisepackage.getWeituoren());
			content.replaceFirst("a1009", enterprisepackage.getWeituorenzhucedizhi());
			content.replaceFirst("a1010", enterprisepackage.getWeituorenfadingdaibiaoren());
			content.replaceFirst("a1011", enterprisepackage.getShoutuorenzhucedizhi());
			content.replaceFirst("a1012", enterprisepackage.getShoutuorenfadingdaibiao());
			content.replaceFirst("a1013", enterprisepackage.getStartdate());
			content.replaceFirst("a1014", enterprisepackage.getWeituorenqianzhang());
			content.replaceFirst("a1015", enterprisepackage.getTianbiaoriqi());

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
			content.replaceFirst("a1001", family.getBaoxiancaichandizhi());
			content.replaceFirst("a1002", "√");
			boolean quantijiatingchengyuan = family.isQuantijiatingchengyuan();
			family.isYiwaishanghaiyiliao();
			family.isChucichamingzhongji();
			family.isMenjizhen();
			family.isJibingzhuyuan();
			if(quantijiatingchengyuan){
				content.replaceFirst("a1003", "√");
				if(family.isYiwaishanghaiyiliao())
					content.replaceFirst("a1004", "√");
				else
					content.replaceFirst("a1004", "○");
				if(family.isChucichamingzhongji())
					content.replaceFirst("a1005", "√");
				else
					content.replaceFirst("a1005", "○");
				if(family.isMenjizhen())
					content.replaceFirst("a1006", "√");
				else
					content.replaceFirst("a1006", "○");
				if(family.isJibingzhuyuan())
					content.replaceFirst("a1007", "√");
				else
					content.replaceFirst("a1007", "○");
			}

			content.replaceFirst("a1008", family.getStartdate());
			content.replaceFirst("a1009", family.getEnddate());
			content.replaceFirst("a1010", family.getBaoxianfeizongjichina());
			content.replaceFirst("a1011", family.getBaoxianfeizongji()+"");
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
			content.replaceFirst("a1001", freight.getFax_from());
			content.replaceFirst("a1002", freight.getFax_to());
			content.replaceFirst("a1003", freight.getBeibaoxianren());
			content.replaceFirst("a1004", freight.getFapiaohao());
			content.replaceFirst("a1005", freight.getFapiaoriqi());
			content.replaceFirst("a1006", freight.getJinkouhetonghao());
			content.replaceFirst("a1007", freight.getXinyongzhenghao());
			content.replaceFirst("a1008", freight.getBaozhuangshuliang()+"");
			content.replaceFirst("a1009", freight.getBiaoji());
			content.replaceFirst("a1010", freight.getJiagetiaojian());
			content.replaceFirst("a1011", freight.getFapiaojine()+"");
			content.replaceFirst("a1012", freight.getBaoxianjine()+"");
			content.replaceFirst("a1013", "0.078");
			content.replaceFirst("a1014", freight.getBaoxianfei()+"");
			content.replaceFirst("a1015", freight.getChuanming());
			content.replaceFirst("a1016", freight.getJianzaonianfen());
			content.replaceFirst("a1017", freight.getChuanqi());
			content.replaceFirst("a1018", freight.getQiyunriqi());
			content.replaceFirst("a1019", freight.getQiyungang());
			content.replaceFirst("a1020", freight.getVia());
			content.replaceFirst("a1021", freight.getMudigang());
			content.replaceFirst("a1022", freight.getChengbaoxianbie());
			content.replaceFirst("a1023", freight.getNote());
			content.replaceFirst("a1024", freight.getToubaorenqianzhang());
			content.replaceFirst("a1025", freight.getTianbiaoriqi());

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
			content.replaceFirst("a1001", office.getToubaorenmingcheng());
			content.replaceFirst("a1002", office.getToubaorendizhi());
			content.replaceFirst("a1003", office.getLianxiren());
			content.replaceFirst("a1004", office.getCaichansunshixianadd()+"");
			content.replaceFirst("a1005", office.getCaichansunshixianaddbaoe()+"");
			content.replaceFirst("a1006", office.getTuantiyiwaixianzengjiarenshu()+"");
			content.replaceFirst("a1007", office.getTuantiyiwaixianzengjiabaofei()+"");
			content.replaceFirst("a1008", office.getZongbaofei()+"");
			content.replaceFirst("a1009", office.getToubaorenqianzhang());
			content.replaceFirst("a1010", office.getToubaoriqi());
			String tuantiyiwaishanghaimingdan = office.getTuantiyiwaishanghaimingdan();
			String tuantiyiwaishanghaishenfenzheng= office.getTuantiyiwaishanghaishenfenzheng();
			String shenfenzhengs[] = tuantiyiwaishanghaishenfenzheng.split(";");
			String mingdans[] = tuantiyiwaishanghaimingdan.split(";");
			for(int i=0;i<mingdans.length;i++){
				if(!mingdans[i].equals("none")){
					content.replaceFirst("a"+(1011+i), mingdans[i]);
					content.replaceFirst("a"+(1021+i), shenfenzhengs[i]);
				}else{
					content.replaceFirst("a"+(1011+i), "");
					content.replaceFirst("a"+(1021+i), "");
				}
			}
			
			String gaoceng = office.getGaocengchailvmingdan();
			String gaos[] = gaoceng.split(";");
			String gaoshenfenzheng = office.getGaocengchailvshenfengzheng();
			String gaoshens[]= gaoshenfenzheng.split(";");
			for(int i=0;i<gaos.length;i++){
				if(!mingdans[i].equals("none")){
					content.replaceFirst("a"+(1031+i), gaos[i]);
					content.replaceFirst("a"+(1033+i), gaoshens[i]);
				}else{
					content.replaceFirst("a"+(1031+i), "");
					content.replaceFirst("a"+(1033+i), "");
				}
				
			}
			content.replaceFirst("a2001", office.getShineizhuanghuang()+"");
			content.replaceFirst("a2002", office.getBangongjiaju()+"");
			content.replaceFirst("a2003", office.getBangongdianzi()+"");
			
			
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
			content.replaceFirst("a1001", vehicle.getBeibaoxianrenmingcheng());
			content.replaceFirst("a1002", vehicle.getBeibaoxianrenzhengjianhaoma());
			content.replaceFirst("a1003", vehicle.getBeibaoxianrentongxundizhi());
			System.out.println("after 1003");
			content.replaceFirst("a1004", vehicle.getBeibaoxianrenyoubian());
			content.replaceFirst("a1005", vehicle.getBeibaoxianlianxiren());
			content.replaceFirst("a1006", vehicle.getBeibaoxianrendianhua());
			content.replaceFirst("a1007", vehicle.getBeibaoxianrenbangongdianhua());
			content.replaceFirst("a1008", vehicle.getBeibaoxianrenemail());
			content.replaceFirst("a1009", vehicle.getToubaorenmingcheng());
			content.replaceFirst("a1010", vehicle.getToubaorenzhengjianhaoma());
			content.replaceFirst("a1011", vehicle.getToubaorentongxundizhi());
			content.replaceFirst("a1012", vehicle.getToubaorenyoubian());
			content.replaceFirst("a1013", vehicle.getToubaorenlianxiren());
			content.replaceFirst("a1014", vehicle.getToubaorendianhua());
			content.replaceFirst("a1015", vehicle.getToubaorenbangongdianhua());
			content.replaceFirst("a1016", vehicle.getToubaorenemail());
			content.replaceFirst("a1017", vehicle.getXingshizhengchezhu());
			content.replaceFirst("a1018", vehicle.getChangpaixinghao());
			content.replaceFirst("a1019", vehicle.getHedingzaike()+"");
			content.replaceFirst("a1020", vehicle.getHaopaihaoma());
			content.replaceFirst("a1021", vehicle.getChucidengjiriqi());
			content.replaceFirst("a1022", vehicle.getShibiedaima());
			content.replaceFirst("a1023", vehicle.getFadongjixinghao());
			content.replaceFirst("a1024", vehicle.getXinchejiage()+"");
			content.replaceFirst("a1025", vehicle.getZhengbeizhiliang()+"");
			content.replaceFirst("a1026", vehicle.getPaiqiliang()+"");
			content.replaceFirst("a1027", vehicle.getShangnianjiaoqiangxian());
			content.replaceFirst("a1028", vehicle.getJiaoqiangxianbaodanhao());
			content.replaceFirst("a1029", vehicle.getShangnianshangyexian());
			content.replaceFirst("a1030", vehicle.getShangyexianbaodanhao());
			content.replaceFirst("a1031", vehicle.getJiashiyuanxinxi());
			String shangyexianxiane = vehicle.getShangyexianxiane();
			String shangyexianxianes[] = shangyexianxiane.split(";");
			String baoxianfeixiaoji = vehicle.getBaoxianfeixiaoji();
			String baoxianfeixiaojis[] = baoxianfeixiaoji.split(";");
			for(int i=0;i<shangyexianxianes.length;i++){
				if(shangyexianxianes[i].equals("zero")){
					content.replaceFirst("a"+(1032+i), "○");
					content.replaceFirst("a"+(1044+i), "");
					content.replaceFirst("a"+(2044+i), "");
					
				}else{
					content.replaceFirst("a"+(1032+i), "√");
					content.replaceFirst("a"+(1044+i), shangyexianxianes[i]);
					content.replaceFirst("a"+(2044+i), baoxianfeixiaojis[i]);
				}
			}
			
			content.replaceFirst("a1056", vehicle.getShangyebaoxianfeiheji()+"");
			content.replaceFirst("a1057", vehicle.getChechuanshui()+"");
			content.replaceFirst("a1058", vehicle.getHeji()+"");
			content.replaceFirst("a1059", vehicle.getShangyebaoxianstartdate());
			content.replaceFirst("a1060", vehicle.getShangyebaoxianenddate());
			content.replaceFirst("a1061", vehicle.getJiaoqiangbaoxianstartdate());
			content.replaceFirst("a1062", vehicle.getJiaoqiangbaoxianenddate());
			content.replaceFirst("a1063", vehicle.getZhengyijiejue());
			
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
