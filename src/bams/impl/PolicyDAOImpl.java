package bams.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bams.dao.PolicyDAO;
import bams.entity.AllProperty;
import bams.entity.EmployerDuty;
import bams.entity.EnterprisePackage;
import bams.entity.Family;
import bams.entity.Freight;
import bams.entity.Office;
import bams.entity.Vehicle;
import bams.util.Database;

public class PolicyDAOImpl implements PolicyDAO {
	/*
	 * @author xsailor
	 */
	private Connection connection;
	
	public PolicyDAOImpl() {
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}

	//添加一个财产一切险保单
	public boolean addAllProperty(AllProperty allproperty)throws Exception{
		PreparedStatement ps = null;
		String sql = "insert into allproperty(toubaorenmingcheng,toubaorendizhi,toubaorendianhua,toubaorenzuzhijigou,"
				+ "beibaoxianrenmingcheng,beibaoxianrendizhi,beibaoxianrenyingyexingzhi,baoxiancaichandizhi,"
				+ "youzhengbianma,beibaoxianrenzuzhijigou,fangwujine,jiqishebeijine,qitajine,cunhuojine,"
				+ "baoxianfei,baoxianjinexiaoji,start_time,end_time,baoxianfeichina,jiaofeishijian,jiaofeifangshi,"
				+ "fujiatiaokuan,tebieyueding,zhengyichuli,toubaofujian,toubaofujianshuliang,shifoutouguo,"
				+ "lipeijilu,toubaorenqianzhang,toubaoriqi,username)"
				                    + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		
		ps.setString(1, allproperty.getToubaorenmingcheng());
		ps.setString(2, allproperty.getToubaorendizhi());
		ps.setString(3, allproperty.getToubaorendianhua());
		ps.setString(4, allproperty.getToubaorenzuzhijigou());
		ps.setString(5, allproperty.getBeibaoxianrenmingcheng());
		ps.setString(6, allproperty.getBeibaoxianrendizhi());
		ps.setString(7, allproperty.getBeibaoxianrenyingyexingzhi());
		ps.setString(8, allproperty.getBaoxiancaichandizhi());
		ps.setString(9, allproperty.getYouzhengbianma());
		ps.setString(10, allproperty.getBeibaoxianrenzuzhijigou());
		ps.setDouble(11, allproperty.getFangwujine());
		ps.setDouble(12, allproperty.getJiqishebeijine());
		ps.setDouble(13, allproperty.getQitajine());
		ps.setDouble(14, allproperty.getCunhuojine());
		ps.setDouble(15, allproperty.getBaoxianfei());
		ps.setString(16, allproperty.getBaoxianjinexiaoji());
		ps.setString(17, allproperty.getStart_time());
		ps.setString(18, allproperty.getEnd_time());
		ps.setString(19, allproperty.getBaoxianfeichina());
		ps.setString(20, allproperty.getJiaofeishijian());
		ps.setString(21, allproperty.getJiaofeifangshi());
		ps.setString(22, allproperty.getFujiatiaokuan());
		ps.setString(23, allproperty.getTebieyueding());
		ps.setString(24, allproperty.getZhengyichuli());
		ps.setString(25, allproperty.getToubaofujian());
		ps.setInt(26, allproperty.getToubaofujianshuliang());
		ps.setString(27, allproperty.getShifoutouguo());
		ps.setString(28, allproperty.getLipeijilu());
		ps.setString(29, allproperty.getToubaorenqianzhang());
		ps.setString(30, allproperty.getToubaoriqi());
		ps.setString(31, allproperty.getUsername());
		try {
			ps.executeUpdate();
			
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		} finally {
			closeStatement(ps);
		}
		return true;
	}
	
	//添加一个雇主责任保险单
	public boolean addEmployerDuty(EmployerDuty employerduty)throws Exception{
		PreparedStatement ps = null;
		String sql = "insert into employerduty(toubaorenmingcheng,toubaorendizhi,toubaorenlianxiren,toubaorendianhua,"
				+ "beibaoxianrenmingcheng,beibaoxianrendizhi,yingyexingzhi,beizuzhijigoudaima,canjiashehuibaoxian,"
				+ "guyuangongzhong,guyuanrenshu,peichangsiwang,peichangyiliao,baoxianfei,start_time,end_time,tebieyueding,"
				+ "fufeiriqi,sifaguanxia,zhengyichuli,toubaorenqianzhang,toubaoriqi,username)"
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		
		ps.setString(1, employerduty.getToubaorenmingcheng());
		ps.setString(2, employerduty.getToubaorendizhi());
		ps.setString(3, employerduty.getToubaorenlianxiren());
		ps.setString(4, employerduty.getToubaorendianhua());
		ps.setString(5, employerduty.getBeibaoxianrenmingcheng());
		ps.setString(6, employerduty.getBeibaoxianrendizhi());
		ps.setString(7, employerduty.getYingyexingzhi());
		ps.setString(8, employerduty.getBeizuzhijigoudaima());
		ps.setBoolean(9, employerduty.isCanjiashehuibaoxian());
		ps.setString(10, employerduty.getGuyuangongzhong());
		ps.setString(11, employerduty.getGuyuanrenshu());
		ps.setString(12, employerduty.getPeichangsiwang());
		ps.setString(13, employerduty.getPeichangyiliao());
		ps.setDouble(14, employerduty.getBaoxianfei());
		ps.setString(15, employerduty.getStart_time());
		ps.setString(16, employerduty.getEnd_time());
		ps.setString(17, employerduty.getTebieyueding());
		ps.setString(18, employerduty.getFufeiriqi());
		ps.setString(19, employerduty.getSifaguanxia());
		ps.setString(20, employerduty.getZhengyichuli());
		ps.setString(21, employerduty.getToubaorenqianzhang());
		ps.setString(22, employerduty.getToubaoriqi());
		ps.setString(23, employerduty.getUsername());
		try {
			ps.executeUpdate();
			
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		} finally {
			closeStatement(ps);
		}
		return true;
	}
	
	//添加一个货物运输保险单
	public boolean addFreight(Freight freight)throws Exception{
		PreparedStatement ps = null;
		String sql = "insert into freight(fax_from,fax_to,beibaoxianren,fapiaohao,fapiaoriqi,jinkouhetonghao,"
				+ "xinyongzhenghao,baozhuangshuliang,baoxianhuowumingcheng,biaoji,jiagetiaojian,fapiaojine,"
				+ "baoxianjine,baoxianfei,chuanming,jianzaonianfen,chuanqi,qiyunriqi,qiyungang,via,mudigang,"
				+ "chengbaoxianbie,note,toubaorenqiangzhang,tianbiaoriqi,username) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		
		ps.setString(1, freight.getFax_from());
		ps.setString(2, freight.getFax_to());
		ps.setString(3, freight.getBeibaoxianren());
		ps.setString(4, freight.getFapiaohao());
		ps.setString(5, freight.getFapiaoriqi());
		ps.setString(6, freight.getJinkouhetonghao());
		ps.setString(7, freight.getXinyongzhenghao());
		ps.setInt(8, freight.getBaozhuangshuliang());
		ps.setString(9, freight.getBaoxianhuowumingcheng());
		ps.setString(10, freight.getBiaoji());
		ps.setString(11, freight.getJiagetiaojian());
		ps.setDouble(12, freight.getFapiaojine());
		ps.setDouble(13, freight.getBaoxianjine());
		ps.setDouble(14, freight.getBaoxianfei());
		ps.setString(15, freight.getChuanming());
		ps.setString(16, freight.getJianzaonianfen());
		ps.setString(17, freight.getChuanqi());
		ps.setString(18, freight.getQiyunriqi());
		ps.setString(19, freight.getQiyungang());
		ps.setString(20, freight.getVia());
		ps.setString(21, freight.getMudigang());
		ps.setString(22, freight.getChengbaoxianbie());
		ps.setString(23, freight.getNote());
		ps.setString(24, freight.getToubaorenqiangzhang());
		ps.setString(25, freight.getTianbiaoriqi());
		ps.setString(26, freight.getUsername());
		try {
			ps.executeUpdate();
			
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		} finally {
			closeStatement(ps);
		}
		return true;
	}
	
	//添加一个机动车保险单
	public boolean addVehicle(Vehicle vehicle)throws Exception{
		PreparedStatement ps = null;
		String sql = "insert into vehicle beibaoxianrenmingcheng,beibaoxianrenzhengjianhaoma,beibaoxianrentongxundizhi,"
				+ "beibaoxianrenyoubian,beibaoxianlianxiren,beibaoxianrendianhua,beibaoxianrenbangongdianhua,beibaoxianrenemail,"
				+ "toubaorenmingcheng,toubaorenzhengjianhaoma,toubaorentongxundizhi,toubaorenyoubian,toubaorenlianxiren,"
				+ "toubaorendianhua,toubaorenbangongdianhua,toubaorenemail,xingshizhengchezhu,changpaixinghao,hedingzaike,"
				+ "haopaihaoma,chucidengjiriqi,shibiedaima,fadongjixinghao,xinchejiage,zhengbeizhiliang,paiqiliang,"
				+ "shangnianjiaoqiangxian,jiaoqiangxianbaodanhao,shangnianshangyexian,shangyexianbaodanhao,shangyexianxiane,"
				+ "shangyebaoxianfeiheji,chechuanshui,heji,shangyebaoxianstartdate,shangyebaoxianenddate,jiaoqiangbaoxianstartdate,"
				+ "jiaoqiangbaoxianenddate,zhengyijiejue,jiashiyuanxinxi,username,baoxianfeixiaoji"
								+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		
		ps.setString(1, vehicle.getBeibaoxianrenmingcheng());
		ps.setString(2, vehicle.getBeibaoxianrenzhengjianhaoma());
		ps.setString(3, vehicle.getBeibaoxianrentongxundizhi());
		ps.setString(4,vehicle.getBeibaoxianrenyoubian());
		ps.setString(5, vehicle.getBeibaoxianlianxiren());
		ps.setString(6, vehicle.getBeibaoxianrendianhua());
		ps.setString(7, vehicle.getBeibaoxianrenbangongdianhua());
		ps.setString(8, vehicle.getBeibaoxianrenemail());
		ps.setString(9, vehicle.getToubaorenmingcheng());
		ps.setString(10, vehicle.getToubaorenzhengjianhaoma());
		ps.setString(11,vehicle.getToubaorentongxundizhi());
		ps.setString(12, vehicle.getToubaorenyoubian());
		ps.setString(13, vehicle.getToubaorenlianxiren());
		ps.setString(14, vehicle.getToubaorendianhua());
		ps.setString(15, vehicle.getToubaorenbangongdianhua());
		ps.setString(16, vehicle.getToubaorenemail());
		ps.setString(17, vehicle.getXingshizhengchezhu());
		ps.setString(18, vehicle.getChangpaixinghao());
		ps.setInt(19, vehicle.getHedingzaike());
		ps.setString(20, vehicle.getHaopaihaoma());
		ps.setString(21, vehicle.getChucidengjiriqi());
		ps.setString(22, vehicle.getShibiedaima());
		ps.setString(23, vehicle.getFadongjixinghao());
		ps.setDouble(24, vehicle.getXinchejiage());
		ps.setDouble(25, vehicle.getZhengbeizhiliang());
		ps.setDouble(26, vehicle.getPaiqiliang());
		ps.setString(27, vehicle.getShangnianjiaoqiangxian());
		ps.setString(28, vehicle.getJiaoqiangxianbaodanhao());
		ps.setString(29, vehicle.getShangnianshangyexian());
		ps.setString(30, vehicle.getShangyexianbaodanhao());
		ps.setString(31, vehicle.getShangyexianxiane());
		ps.setDouble(32, vehicle.getShangyebaoxianfeiheji());
		ps.setDouble(33, vehicle.getChechuanshui());
		ps.setDouble(34, vehicle.getHeji());
		ps.setString(35, vehicle.getShangyebaoxianstartdate());
		ps.setString(36, vehicle.getShangyebaoxianenddate());
		ps.setString(37, vehicle.getJiaoqiangbaoxianstartdate());
		ps.setString(38, vehicle.getJiaoqiangbaoxianenddate());
		ps.setString(39, vehicle.getZhengyijiejue());
		ps.setString(40, vehicle.getJiashiyuanxinxi());
		ps.setString(41, vehicle.getUsername());
		ps.setString(42, vehicle.getBaoxianfeixiaoji());
		try {
			ps.executeUpdate();
			
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		} finally {
			closeStatement(ps);
		}
		return true;
	}
	
	//添加一个全家无忧保险单
	public boolean addFamily(Family family)throws Exception{
		PreparedStatement ps = null;
		String sql = "insert into family(baoxiancaichandizhi,caichanzonghebaoxian,yiwaiyiliaobaoxianheji,"
				+ "yiwaishanghaiyiliao,chucichamingzhongji,menjizhen,jibingzhuyuan,startdate,enddate,"
				+ "baoxianfeizongji,username,quantijiatingchengyuan)"
				+ " values(?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);

		ps.setString(1, family.getBaoxiancaichandizhi());
		ps.setBoolean(2, family.isCaichanzonghebaoxian());
		ps.setDouble(3, family.getYiwaiyiliaobaoxianheji());
		ps.setBoolean(4, family.isYiwaishanghaiyiliao());
		ps.setBoolean(5, family.isChucichamingzhongji());
		ps.setBoolean(6, family.isMenjizhen());
		ps.setBoolean(7, family.isJibingzhuyuan());
		ps.setString(8, family.getStartdate());
		ps.setString(9, family.getEnddate());
		ps.setDouble(10, family.getBaoxianfeizongji());
		ps.setString(11, family.getUsername());
		ps.setBoolean(12, family.isQuantijiatingchengyuan());
		try {
			ps.executeUpdate();
			
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		} finally {
			closeStatement(ps);
		}
		return true;
	}
	
	//添加一个办公司综合保险单
	public boolean addOffice(Office office)throws Exception{
		PreparedStatement ps = null;
		String sql = "insert into office (toubaorenmingcheng,toubaorendizhi,caichansunshixianadd,"
				+ "caichansunshixianaddbaoe,tuantiyiwaixianzengjiarenshu,tuantiyiwaixianzengjiabaofei,"
				+ "zongbaofei,toubaorenqianzhang,toubaoriqi,tuantiyiwaishanghaimingdan,"
				+ "tuantiyiwaishanghaishenfenzheng,gaocengchailvmingdan,gaocengchailvshenfengzheng,username,"
				+ "lianxiren,shineizhuanghuang,bangongjiaju,bangongdianzi) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		ps.setString(1, office.getToubaorenmingcheng());
		ps.setString(2, office.getToubaorendizhi());
		ps.setDouble(3, office.getCaichansunshixianadd());
		ps.setDouble(4, office.getCaichansunshixianaddbaoe());
		ps.setInt(5, office.getTuantiyiwaixianzengjiarenshu());
		ps.setDouble(6, office.getTuantiyiwaixianzengjiabaofei());
		ps.setDouble(7, office.getZongbaofei());
		ps.setString(8, office.getToubaorenqianzhang());
		ps.setString(9, office.getToubaoriqi());
		ps.setString(10, office.getTuantiyiwaishanghaimingdan());
		ps.setString(11, office.getTuantiyiwaishanghaishenfenzheng());
		ps.setString(12, office.getGaocengchailvmingdan());
		ps.setString(13, office.getGaocengchailvshenfengzheng());
		ps.setString(14, office.getUsername());
		ps.setString(15, office.getLianxiren());
		ps.setDouble(16, office.getShineizhuanghuang());
		ps.setDouble(17, office.getBangongjiaju());
		ps.setDouble(18, office.getBangongdianzi());
		try {
			ps.executeUpdate();
			
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		} finally {
			closeStatement(ps);
		}
		return true;
	}
	
	//添加一个中小企业一揽子保险委托书
	public boolean addEnterprisePackage(EnterprisePackage enterprisepackage)
			throws Exception{
		PreparedStatement ps = null;
		String sql = "insert into enterprisepackage(weituoren,dianhua,lianxiren,enddate,"
				+ "kexuanxianzhong,baoxiangongsi,weituorenzhucedizhi,weituorenfadingdaibiaoren,"
				+ "shoutuorenzhucedizhi,shoutuorenfadingdaibiao,weituorenqianzhang,tianbiaoriqi,username) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		ps.setString(1, enterprisepackage.getWeituoren());
		ps.setString(2, enterprisepackage.getDianhua());
		ps.setString(3, enterprisepackage.getLianxiren());
		ps.setString(4, enterprisepackage.getEnddate());
		ps.setString(5, enterprisepackage.getKexuanxianzhong());
		ps.setString(6, enterprisepackage.getBaoxiangongsi());
		ps.setString(7, enterprisepackage.getWeituorenzhucedizhi());
		ps.setString(8, enterprisepackage.getWeituorenfadingdaibiaoren());
		ps.setString(9, enterprisepackage.getShoutuorenzhucedizhi());
		ps.setString(10, enterprisepackage.getShoutuorenfadingdaibiao());
		ps.setString(11, enterprisepackage.getWeituorenqianzhang());
		ps.setString(12, enterprisepackage.getTianbiaoriqi());
		ps.setString(13,enterprisepackage.getUsername());
		try {
			ps.executeUpdate();
			
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			return false;
		} finally {
			closeStatement(ps);
		}
		return true;
	}

	@Override
	public Connection getConnection() throws Exception {
		return connection;
	}

	@Override
	public void setConnection(Connection connection) throws Exception {
		this.connection = connection;
	}
	
	public static void closeStatement(Statement st) {
		if (st != null) {
			try {
				st.close();
				st = null;
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
	}

	public static void closeResultSet(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
				rs = null;
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
	}
}
