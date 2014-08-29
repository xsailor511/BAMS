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
		String sql = "insert into allproperty ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,? "
				                    + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		ps.setString(1, "toubaorenmingcheng");
		ps.setString(2, "toubaorendizhi");
		ps.setString(3, "toubaorendianhua");
		ps.setString(4, "toubaorenzuzhijigou");
		ps.setString(5, "beibaoxianrenmingchen");
		ps.setString(6, "beibaoxianrendizhi");
		ps.setString(7, "beibaoxianrenyingyexingzhi");
		ps.setString(8, "baoxiancaichandizhi");
		ps.setString(9, "youzhengbianma");
		ps.setString(10, "chengbaobiaoxiangmu");
		ps.setString(11, "fangwujine");
		ps.setString(12, "jiqishebeijine");
		ps.setString(13, "qitajine");
		ps.setString(14, "cunhuojine");
		ps.setString(15, "baoxianfei");
		ps.setString(16, "baoxianjinexiaoji");
		ps.setString(17, "start_time");
		ps.setString(18, "end_time");
		ps.setString(19, "baoxianfeichina");
		ps.setString(20, "jiaofeishijian");
		ps.setString(21, "jiaofeifangshi");
		ps.setString(22, "fujiatiaokuan");
		ps.setString(23, "tebieyueding");
		ps.setString(24, "zhengyichuli");
		ps.setString(25, "toubaofujian");
		ps.setString(26, "toubaofujianshuliang");
		ps.setString(27, "shifoutouguo");
		ps.setString(28, "lipeijilu");
		ps.setString(29, "toubaorenqianzhang");
		ps.setString(30, "toubaoriqi");
		
		ps.setString(31, allproperty.getToubaorenmingcheng());
		ps.setString(32, allproperty.getToubaorendizhi());
		ps.setString(33, allproperty.getToubaorendianhua());
		ps.setString(34, allproperty.getToubaorenzuzhijigou());
		ps.setString(35, allproperty.getBeibaoxianrenmingchen());
		ps.setString(36, allproperty.getBeibaoxianrendizhi());
		ps.setString(37, allproperty.getBeibaoxianrenyingyexingzhi());
		ps.setString(38, allproperty.getBaoxiancaichandizhi());
		ps.setString(39, allproperty.getYouzhengbianma());
		ps.setString(40, allproperty.getChengbaobiaoxiangmu());
		ps.setDouble(41, allproperty.getFangwujine());
		ps.setDouble(42, allproperty.getJiqishebeijine());
		ps.setDouble(43, allproperty.getQitajine());
		ps.setDouble(44, allproperty.getCunhuojine());
		ps.setDouble(45, allproperty.getBaoxianfei());
		ps.setString(46, allproperty.getBaoxianjinexiaoji());
		ps.setString(47, allproperty.getStart_time());
		ps.setString(48, allproperty.getEnd_time());
		ps.setString(49, allproperty.getBaoxianfeichina());
		ps.setString(50, allproperty.getJiaofeishijian());
		ps.setString(51, allproperty.getJiaofeifangshi());
		ps.setString(52, allproperty.getFujiatiaokuan());
		ps.setString(53, allproperty.getTebieyueding());
		ps.setString(54, allproperty.getZhengyichuli());
		ps.setString(55, allproperty.getToubaofujian());
		ps.setInt(56, allproperty.getToubaofujianshuliang());
		ps.setString(57, allproperty.getShifoutouguo());
		ps.setString(58, allproperty.getLipeijilu());
		ps.setString(59, allproperty.getToubaorenqianzhang());
		ps.setString(60, allproperty.getToubaoriqi());
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
		String sql = "insert into employerduty ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,? "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		ps.setString(1, "toubaorenmingcheng");
		ps.setString(2, "toubaorendizhi");
		ps.setString(3, "toubaorenlianxiren");
		ps.setString(4, "toubaorendianhua");
		ps.setString(5, "beibaoxianrenmingcheng");
		ps.setString(6, "beibaoxianrendizhi");
		ps.setString(7, "yingyexingzhi");
		ps.setString(8, "beizuzhijigoudaima");
		ps.setString(9, "canjiashehuibaoxian");
		ps.setString(10, "guyuangongzhong");
		ps.setString(11, "guyuanrenshu");
		ps.setString(12, "peichangsiwang");
		ps.setString(13, "peichangyiliao");
		ps.setString(14, "baoxianfei");
		ps.setString(15, "start_time");
		ps.setString(16, "end_time");
		ps.setString(17, "tebieyueding");
		ps.setString(18, "fufeiriqi");
		ps.setString(19, "sifaguanxia");
		ps.setString(20, "zhengyichuli");
		ps.setString(21, "toubaorenqianzhang");
		ps.setString(22, "toubaoriqi");
		
		ps.setString(23, employerduty.getToubaorenmingcheng());
		ps.setString(24, employerduty.getToubaorendizhi());
		ps.setString(25, employerduty.getToubaorenlianxiren());
		ps.setString(26, employerduty.getToubaorendianhua());
		ps.setString(27, employerduty.getBeibaoxianrenmingcheng());
		ps.setString(28, employerduty.getBeibaoxianrendizhi());
		ps.setString(29, employerduty.getYingyexingzhi());
		ps.setString(30, employerduty.getBeizuzhijigoudaima());
		ps.setBoolean(31, employerduty.isCanjiashehuibaoxian());
		ps.setString(32, employerduty.getGuyuangongzhong());
		ps.setString(33, employerduty.getGuyuanrenshu());
		ps.setString(34, employerduty.getPeichangsiwang());
		ps.setString(35, employerduty.getPeichangyiliao());
		ps.setDouble(36, employerduty.getBaoxianfei());
		ps.setString(37, employerduty.getStart_time());
		ps.setString(38, employerduty.getEnd_time());
		ps.setString(39, employerduty.getTebieyueding());
		ps.setString(40, employerduty.getFufeiriqi());
		ps.setString(41, employerduty.getSifaguanxia());
		ps.setString(42, employerduty.getZhengyichuli());
		ps.setString(43, employerduty.getToubaorenqianzhang());
		ps.setString(44, employerduty.getToubaoriqi());
		
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
		String sql = "insert into freight ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,? "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		
		ps.setString(1, "fax_from");
		ps.setString(2, "fax_to");
		ps.setString(3, "beibaoxianren");
		ps.setString(4, "fapiaohao");
		ps.setString(5, "fapiaoriqi");
		ps.setString(6, "jinkouhetonghao");
		ps.setString(7, "xinyongzhenghao");
		ps.setString(8, "baozhuangshuliang");
		ps.setString(9, "baoxianhuowumingcheng");
		ps.setString(10, "biaoji");
		ps.setString(11, "jiagetiaojian");
		ps.setString(12, "fapiaojine");
		ps.setString(13, "baoxianjine");
		ps.setString(14, "baoxianfei");
		ps.setString(15, "chuanming");
		ps.setString(16, "jianzaonianfen");
		ps.setString(17, "chuanqi");
		ps.setString(18, "qiyunriqi");
		ps.setString(19, "qiyungang");
		ps.setString(20, "via");
		ps.setString(21, "mudigang");
		ps.setString(22, "chengbaoxianbie");
		ps.setString(23, "note");
		ps.setString(24, "toubaorenqiangzhang");
		ps.setString(25, "tianbiaoriqi");
		
		ps.setString(26, freight.getFax_from());
		ps.setString(27, freight.getFax_to());
		ps.setString(28, freight.getBeibaoxianren());
		ps.setString(29, freight.getFapiaohao());
		ps.setString(30, freight.getFapiaoriqi());
		ps.setString(31, freight.getJinkouhetonghao());
		ps.setString(32, freight.getXinyongzhenghao());
		ps.setInt(33, freight.getBaozhuangshuliang());
		ps.setString(34, freight.getBaoxianhuowumingcheng());
		ps.setString(35, freight.getBiaoji());
		ps.setString(36, freight.getJiagetiaojian());
		ps.setDouble(37, freight.getFapiaojine());
		ps.setDouble(38, freight.getBaoxianjine());
		ps.setDouble(39, freight.getBaoxianfei());
		ps.setString(40, freight.getChuanming());
		ps.setString(41, freight.getJianzaonianfen());
		ps.setString(42, freight.getChuanqi());
		ps.setString(43, freight.getQiyunriqi());
		ps.setString(44, freight.getQiyungang());
		ps.setString(45, freight.getVia());
		ps.setString(46, freight.getMudigang());
		ps.setString(47, freight.getChengbaoxianbie());
		ps.setString(48, freight.getNote());
		ps.setString(49, freight.getToubaorenqiangzhang());
		ps.setString(50, freight.getTianbiaoriqi());
		
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
		String sql = "insert into vehicle ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?"
								+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		
		ps.setString(1, "beibaoxianrenmingcheng");ps.setString(41, vehicle.getBeibaoxianrenmingcheng());
		ps.setString(2, "beibaoxianrenzhengjianhaoma");ps.setString(42, vehicle.getBeibaoxianrenzhengjianhaoma());
		ps.setString(3, "beibaoxianrentongxundizhi");ps.setString(43, vehicle.getBeibaoxianrentongxundizhi());
		ps.setString(4, "beibaoxianrenyoubian");ps.setString(44,vehicle.getBeibaoxianrenyoubian());
		ps.setString(5, "beibaoxianlianxiren");ps.setString(45, vehicle.getBeibaoxianlianxiren());
		ps.setString(6, "beibaoxianrendianhua");ps.setString(46, vehicle.getBeibaoxianrendianhua());
		ps.setString(7, "beibaoxianrenbangongdianhua");ps.setString(47, vehicle.getBeibaoxianrenbangongdianhua());
		ps.setString(8, "beibaoxianrenemail");ps.setString(48, vehicle.getBeibaoxianrenemail());
		ps.setString(9, "toubaorenmingcheng");ps.setString(49, vehicle.getToubaorenmingcheng());
		ps.setString(10, "toubaorenzhengjianhaoma");ps.setString(50, vehicle.getToubaorenzhengjianhaoma());
		ps.setString(11, "toubaorentongxundizhi");ps.setString(51,vehicle.getToubaorentongxundizhi());
		ps.setString(12, "toubaorenyoubian");ps.setString(52, vehicle.getToubaorenyoubian());
		ps.setString(13, "toubaorenlianxiren");ps.setString(53, vehicle.getToubaorenlianxiren());
		ps.setString(14, "toubaorendianhua");ps.setString(54, vehicle.getToubaorendianhua());
		ps.setString(15, "toubaorenbangongdianhua");ps.setString(55, vehicle.getToubaorenbangongdianhua());
		ps.setString(16, "toubaorenemail");ps.setString(56, vehicle.getToubaorenemail());
		ps.setString(17, "xingshizhengchezhu");ps.setString(57, vehicle.getXingshizhengchezhu());
		ps.setString(18, "changpaixinghao");ps.setString(58, vehicle.getChangpaixinghao());
		ps.setString(19, "hedingzaike");ps.setInt(59, vehicle.getHedingzaike());
		ps.setString(20, "haopaihaoma");ps.setString(60, vehicle.getHaopaihaoma());
		ps.setString(21, "chucidengjiriqi");ps.setString(61, vehicle.getChucidengjiriqi());
		ps.setString(22, "shibiedaima");ps.setString(62, vehicle.getShibiedaima());
		ps.setString(23, "fadongjixinghao");ps.setString(63, vehicle.getFadongjixinghao());
		ps.setString(24, "xinchejiage");ps.setDouble(64, vehicle.getXinchejiage());
		ps.setString(25, "zhengbeizhiliang");ps.setDouble(65, vehicle.getZhengbeizhiliang());
		ps.setString(26, "paiqiliang");ps.setDouble(66, vehicle.getPaiqiliang());
		ps.setString(27, "shangnianjiaoqiangxian");ps.setString(67, vehicle.getShangnianjiaoqiangxian());
		ps.setString(28, "jiaoqiangxianbaodanhao");ps.setString(68, vehicle.getJiaoqiangxianbaodanhao());
		ps.setString(29, "shangnianshangyexian");ps.setString(69, vehicle.getShangnianshangyexian());
		ps.setString(30, "shangyexianbaodanhao");ps.setString(70, vehicle.getShangyexianbaodanhao());
		ps.setString(31, "shangyexianxiane");ps.setString(71, vehicle.getShangyexianxiane());
		ps.setString(32, "shangyebaoxianfeiheji");ps.setDouble(72, vehicle.getShangyebaoxianfeiheji());
		ps.setString(33, "chechuanshui");ps.setDouble(73, vehicle.getChechuanshui());
		ps.setString(34, "heji");ps.setDouble(74, vehicle.getHeji());
		ps.setString(35, "shangyebaoxianstartdate");ps.setString(75, vehicle.getShangyebaoxianstartdate());
		ps.setString(36, "shangyebaoxianenddate");ps.setString(76, vehicle.getShangyebaoxianenddate());
		ps.setString(37, "jiaoqiangbaoxianstartdate");ps.setString(77, vehicle.getJiaoqiangbaoxianstartdate());
		ps.setString(38, "jiaoqiangbaoxianenddate");ps.setString(78, vehicle.getJiaoqiangbaoxianenddate());
		ps.setString(39, "zhengyijiejue");ps.setString(79, vehicle.getZhengyijiejue());
		ps.setString(40, "jiashiyuanxinxi");ps.setString(80, vehicle.getJiashiyuanxinxi());
		
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
		String sql = "insert into family ?,?,?,?,?,?,?,?,?,? values(?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		
		ps.setString(1, "baoxiancaichandizhi");
		ps.setString(2, "caichanzonghebaoxian");
		ps.setString(3, "yiwaiyiliaobaoxian");
		ps.setString(4, "yiwaishanghaiyiliao");
		ps.setString(5, "chucichamingzhongji");
		ps.setString(6, "menjizhen");
		ps.setString(7, "jibingzhuyuan");
		ps.setString(8, "startdate");
		ps.setString(9, "enddate");
		ps.setString(10, "baoxianfeizongji");
		
		ps.setString(11, family.getBaoxiancaichandizhi());
		ps.setBoolean(12, family.isCaichanzonghebaoxian());
		ps.setDouble(13, family.getYiwaiyiliaobaoxian());
		ps.setBoolean(14, family.isYiwaishanghaiyiliao());
		ps.setBoolean(15, family.isChucichamingzhongji());
		ps.setBoolean(16, family.isMenjizhen());
		ps.setBoolean(17, family.isJibingzhuyuan());
		ps.setString(18, family.getStartdate());
		ps.setString(19, family.getEnddate());
		ps.setDouble(20, family.getBaoxianfeizongji());
		
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
		String sql = "insert into office ?,?,?,?,?,?,?,?,?,?,?,?,? "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		ps.setString(1, "toubaorenmingcheng");ps.setString(14, office.getToubaorenmingcheng());
		ps.setString(2, "toubaorendizhi");ps.setString(15, office.getToubaorendizhi());
		ps.setString(3, "caichansunshixianadd");ps.setDouble(16, office.getCaichansunshixianadd());
		ps.setString(4, "caichansunshixianaddbaoe");ps.setDouble(17, office.getCaichansunshixianaddbaoe());
		ps.setString(5, "tuantiyiwaixianzengjiarenshu");ps.setInt(18, office.getTuantiyiwaixianzengjiarenshu());
		ps.setString(6, "tuantiyiwaixianzengjiabaofei");ps.setDouble(19, office.getTuantiyiwaixianzengjiabaofei());
		ps.setString(7, "zongbaofei");ps.setDouble(20, office.getZongbaofei());
		ps.setString(8, "toubaorenqianzhang");ps.setString(21, office.getToubaorenqianzhang());
		ps.setString(9, "toubaoriqi");ps.setString(22, office.getToubaoriqi());
		ps.setString(10, "tuantiyiwaishanghaimingdan");ps.setString(23, office.getTuantiyiwaishanghaimingdan());
		ps.setString(11, "tuantiyiwaishanghaishenfenzheng");ps.setString(24, office.getTuantiyiwaishanghaishenfenzheng());
		ps.setString(12, "gaocengchailvmingdan");ps.setString(25, office.getGaocengchailvmingdan());
		ps.setString(13, "gaocengchailvshenfengzheng");ps.setString(26, office.getGaocengchailvshenfengzheng());
		
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
		String sql = "insert into enterprisepackage ?,?,?,?,?,?,?,?,?,?,?,? "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		ps.setString(1, "weituoren");ps.setString(13, enterprisepackage.getWeituoren());
		ps.setString(2, "dianhua");ps.setString(14, enterprisepackage.getDianhua());
		ps.setString(3, "lianxiren");ps.setString(15, enterprisepackage.getLianxiren());
		ps.setString(4, "enddate");ps.setString(16, enterprisepackage.getEnddate());
		ps.setString(5, "kexuanxianzhong");ps.setString(17, enterprisepackage.getKexuanxianzhong());
		ps.setString(6, "baoxiangongsi");ps.setString(18, enterprisepackage.getBaoxiangongsi());
		ps.setString(7, "weituorenzhucedizhi");ps.setString(19, enterprisepackage.getWeituorenzhucedizhi());
		ps.setString(8, "weituorenfadingdaibiaoren");ps.setString(20, enterprisepackage.getWeituorenfadingdaibiaoren());
		ps.setString(9, "shoutuorenzhucedizhi");ps.setString(21, enterprisepackage.getShoutuorenzhucedizhi());
		ps.setString(10, "shoutuorenfadingdaibiao");ps.setString(22, enterprisepackage.getShoutuorenfadingdaibiao());
		ps.setString(11, "weituorenqianzhang");ps.setString(23, enterprisepackage.getWeituorenqianzhang());
		ps.setString(12, "tianbiaoriqi");ps.setString(24, enterprisepackage.getTianbiaoriqi());
		
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
