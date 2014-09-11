package bams.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bams.dao.DataToWordDAO;
import bams.entity.AllProperty;
import bams.entity.EmployerDuty;
import bams.entity.EnterprisePackage;
import bams.entity.Family;
import bams.entity.Freight;
import bams.entity.Office;
import bams.entity.Vehicle;
import bams.util.Database;

public class DataToWordDAOImpl implements DataToWordDAO {

	private Connection connection;

	public DataToWordDAOImpl() {
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	
	
	
	public Connection getConnection() {
		return connection;
	}



	public void setConnection(Connection connection) {
		this.connection = connection;
	}
	@Override
	public AllProperty getAllProperty(String tag) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		AllProperty ap = new AllProperty();
		try {
			ps = connection.prepareStatement("select * from allproperty where tag=?");
			ps.setString(1, tag);
			rs = ps.executeQuery();
			while(rs.next()){
				ap.setToubaorenmingcheng(rs.getString("toubaorenmingcheng"));
				ap.setToubaorendizhi(rs.getString("toubaorendizhi"));
				ap.setToubaorendianhua(rs.getString("toubaorendianhua"));
				ap.setToubaorenzuzhijigou(rs.getString("toubaorenzuzhijigou"));
				ap.setBeibaoxianrenmingcheng(rs.getString("beibaoxianrenmingcheng"));
				ap.setBeibaoxianrendizhi(rs.getString("beibaoxianrendizhi"));
				ap.setBeibaoxianrenyingyexingzhi(rs.getString("beibaoxianrenyingyexingzhi"));
				ap.setBaoxiancaichandizhi(rs.getString("baoxiancaichandizhi"));
				ap.setYouzhengbianma(rs.getString("youzhengbianma"));
				ap.setBeibaoxianrenzuzhijigou(rs.getString("beibaoxianrenzuzhijigou"));
				ap.setFangwujine(rs.getDouble("fangwujine"));
				ap.setJiqishebeijine(rs.getDouble("jiqishebeijine"));
				ap.setQitajine(rs.getDouble("qitajine"));
				ap.setCunhuojine(rs.getDouble("cunhuojine"));
				ap.setBaoxianfei(rs.getDouble("baoxianfei"));
				ap.setBaoxianjinexiaoji(rs.getString("baoxianjinexiaoji"));
				ap.setStart_time(rs.getString("start_time"));
				ap.setEnd_time(rs.getString("end_time"));
				ap.setBaoxianfeichina(rs.getString("baoxianfeichina"));
				ap.setJiaofeishijian(rs.getString("jiaofeishijian"));
				ap.setFujiatiaokuan(rs.getString("fujiatiaokuan"));
				ap.setTebieyueding(rs.getString("tebieyueding"));
				ap.setZhengyichuli(rs.getString("zhengyichuli"));
				ap.setToubaofujian(rs.getString("toubaofujian"));
				ap.setToubaofujianshuliang(rs.getInt("toubaofujianshuliang"));
				ap.setShifoutouguo(rs.getString("shifoutouguo"));
				ap.setLipeijilu(rs.getString("lipeijilu"));
				ap.setToubaorenqianzhang(rs.getString("toubaorenqianzhang"));
				ap.setToubaoriqi(rs.getString("toubaoriqi"));
				ap.setUsername(rs.getString("username"));
				ap.setTag(tag);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return ap;
	}

	@Override
	public EmployerDuty getEmployerDuty(String tag) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		EmployerDuty employerduty = new EmployerDuty();
		try {
			ps = connection.prepareStatement("select * from employerduty where tag=?");
			ps.setString(1, tag);
			rs = ps.executeQuery();
			while(rs.next()){
				employerduty.setBeibaoxianrenmingcheng(rs.getString("beibaoxianrenmingcheng"));
				employerduty.setCanjiashehuibaoxian(rs.getBoolean("canjiashehuibaoxian"));
				employerduty.setBaoxianfei(rs.getDouble("baoxianfei"));
				employerduty.setStart_time(rs.getString("start_time"));
				employerduty.setEnd_time(rs.getString("end_time"));
				employerduty.setFufeiriqi(rs.getString("fufeiriqi"));
				employerduty.setToubaoriqi(rs.getString("toubaoriqi"));
				employerduty.setUsername(rs.getString("username"));
				employerduty.setTag(rs.getString("tag"));
				employerduty.setId(rs.getInt("id"));
				employerduty.setToubaorenmingcheng(rs.getString("toubaorenmingcheng"));
				employerduty.setToubaorendizhi(rs.getString("toubaorendizhi"));
				employerduty.setToubaorenlianxiren(rs.getString("toubaorenlianxiren"));
				employerduty.setToubaorendianhua(rs.getString("toubaorendianhua"));
				employerduty.setBeibaoxianrendizhi(rs.getString("beibaoxianrendizhi"));
				employerduty.setYingyexingzhi(rs.getString("yingyexingzhi"));
				employerduty.setBeizuzhijigoudaima(rs.getString("beizuzhijigoudaima"));
				employerduty.setGuyuangongzhong(rs.getString("guyuangongzhong"));
				employerduty.setGuyuanrenshu(rs.getString("guyuanrenshu"));
				employerduty.setPeichangsiwang(rs.getString("peichangsiwang"));
				employerduty.setPeichangyiliao(rs.getString("peichangyiliao"));
				employerduty.setBaoxianfeilv(rs.getDouble("baoxianfeilv"));
				employerduty.setTebieyueding(rs.getString("tebieyueding"));
				employerduty.setSifaguanxia(rs.getString("sifaguanxia"));
				employerduty.setZhengyichuli(rs.getString("zhengyichuli"));
				employerduty.setToubaorenqianzhang(rs.getString("toubaorenqianzhang"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return employerduty;
	}

	@Override
	public EnterprisePackage getEnterprisePackage(String tag) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		EnterprisePackage enterprisepackage = new EnterprisePackage();
		try {
			ps = connection.prepareStatement("select * from enterprisepackage where tag=?");
			ps.setString(1, tag);
			rs = ps.executeQuery();
			while(rs.next()){
				enterprisepackage.setWeituorenzhucedizhi(rs.getString("weituorenzhucedizhi"));
				enterprisepackage.setWeituorenfadingdaibiaoren(rs.getString("weituorenfadingdaibiaoren"));
				enterprisepackage.setShoutuorenzhucedizhi(rs.getString("shoutuorenzhucedizhi"));
				enterprisepackage.setShoutuorenfadingdaibiao(rs.getString("shoutuorenfadingdaibiao"));
				enterprisepackage.setWeituoren(rs.getString("weituoren"));
				enterprisepackage.setDianhua(rs.getString("dianhua"));
				enterprisepackage.setLianxiren(rs.getString("lianxiren"));
				enterprisepackage.setEnddate(rs.getString("enddate"));
				enterprisepackage.setStartdate(rs.getString("startdate"));
				enterprisepackage.setUsername(rs.getString("username"));
				enterprisepackage.setTag(rs.getString("tag"));
				enterprisepackage.setId(rs.getInt("id"));
				enterprisepackage.setKexuanxianzhong(rs.getString("kexuanxianzhong"));
				enterprisepackage.setBaoxiangongsi(rs.getString("baoxiangongsi"));
				enterprisepackage.setWeituorenqianzhang(rs.getString("weituorenqianzhang"));
				enterprisepackage.setTianbiaoriqi(rs.getString("tianbiaoriqi"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return enterprisepackage;
	}

	@Override
	public Family getFamily(String tag) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Family family = new Family();
		try {
			ps = connection.prepareStatement("select * from family where tag=?");
			ps.setString(1, tag);
			rs = ps.executeQuery();
			while(rs.next()){
				family.setBaoxiancaichandizhi(rs.getString("baoxiancaichandizhi"));
				family.setCaichanzonghebaoxian(rs.getBoolean("caichanzonghebaoxian"));
				family.setQuantijiatingchengyuan(rs.getBoolean("quantijiatingchengyuan"));
				family.setYiwaiyiliaobaoxianheji(rs.getDouble("yiwaiyiliaobaoxianheji"));
				family.setYiwaishanghaiyiliao(rs.getBoolean("yiwaishanghaiyiliao"));
				family.setChucichamingzhongji(rs.getBoolean("chucichamingzhongji"));
				family.setMenjizhen(rs.getBoolean("menjizhen"));
				family.setStartdate(rs.getString("startdate"));
				family.setEnddate(rs.getString("enddate"));
				family.setUsername(rs.getString("username"));
				family.setTag(rs.getString("tag"));
				family.setId(rs.getInt("id"));
				family.setJibingzhuyuan(rs.getBoolean("jibingzhuyuan"));
				family.setBaoxianfeizongji(rs.getDouble("baoxianfeizongji"));
				family.setBaoxianfeizongjichina(rs.getString("baoxianfeizongjichina"));
				family.setJiatingchengyuanleixing(rs.getString("jiatingchengyuanleixing"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return family;
	}

	@Override
	public Freight getFreight(String tag) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Freight freight = new Freight();
		try {
			ps = connection.prepareStatement("select * from freight where tag=?");
			ps.setString(1, tag);
			rs = ps.executeQuery();
			while(rs.next()){
				freight.setBaoxianhuowumingcheng(rs.getString("baoxianhuowumingcheng"));
				freight.setFax_from(rs.getString("fax_from"));
				freight.setFax_to(rs.getString("fax_to"));
				freight.setFapiaohao(rs.getString("fapiaohao"));
				freight.setBiaoji(rs.getString("biaoji"));
				freight.setFapiaojine(rs.getDouble("fapiaojine"));
				freight.setFeilv(rs.getDouble("feilv"));
				freight.setBaoxianfei(rs.getDouble("baoxianfei"));
				freight.setChuanming(rs.getString("chuanming"));
				freight.setChuanqi(rs.getString("chuanqi"));
				freight.setQiyungang(rs.getString("qiyungang"));
				freight.setVia(rs.getString("via"));
				freight.setMudigang(rs.getString("mudigang"));
				freight.setId(rs.getInt("id"));
				freight.setBeibaoxianren(rs.getString("beibaoxianren"));
				freight.setJinkouhetonghao(rs.getString("jinkouhetonghao"));
				freight.setXinyongzhenghao(rs.getString("xinyongzhenghao"));
				freight.setBaozhuangshuliang(rs.getInt("baozhuangshuliang"));
				freight.setJiagetiaojian(rs.getString("jiagetiaojian"));
				freight.setBaoxianjine(rs.getDouble("baoxianjine"));
				freight.setJianzaonianfen(rs.getString("jianzaonianfen"));
				freight.setChengbaoxianbie(rs.getString("chengbaoxianbie"));
				freight.setToubaorenqianzhang(rs.getString("toubaorenqianzhang"));
				freight.setTianbiaoriqi(rs.getString("tianbiaoriqi"));
				freight.setNote(rs.getString("note"));
				freight.setFapiaoriqi(rs.getString("fapiaoriqi"));
				freight.setQiyunriqi(rs.getString("qiyunriqi"));
				freight.setUsername(rs.getString("username"));
				freight.setTag(rs.getString("tag"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return freight;
	}

	@Override
	public Office getOffice(String tag) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Office office = new Office();
		try {
			ps = connection.prepareStatement("select * from office where tag=?");
			ps.setString(1, tag);
			rs = ps.executeQuery();
			while(rs.next()){
				office.setTuantiyiwaixianzengjiarenshu(rs.getInt("tuantiyiwaixianzengjiarenshu"));
				office.setTuantiyiwaixianzengjiabaofei(rs.getDouble("tuantiyiwaixianzengjiabaofei"));
				office.setTuantiyiwaishanghaishenfenzheng(rs.getString("tuantiyiwaishanghaishenfenzheng"));
				office.setCaichansunshixianadd(rs.getDouble("caichansunshixianadd"));
				office.setCaichansunshixianaddbaoe(rs.getDouble("caichansunshixianaddbaoe"));
				office.setTuantiyiwaishanghaimingdan(rs.getString("tuantiyiwaishanghaimingdan"));
				office.setGaocengchailvmingdan(rs.getString("gaocengchailvmingdan"));
				office.setZongbaofei(rs.getDouble("zongbaofei"));
				office.setToubaoriqi(rs.getString("toubaoriqi"));
				office.setUsername(rs.getString("username"));
				office.setLianxiren(rs.getString("lianxiren"));
				office.setTag(rs.getString("tag"));
				office.setId(rs.getInt("id"));
				office.setToubaorenmingcheng(rs.getString("toubaorenmingcheng"));
				office.setToubaorendizhi(rs.getString("toubaorendizhi"));
				office.setToubaorenqianzhang(rs.getString("toubaorenqianzhang"));
				office.setShineizhuanghuang(rs.getDouble("shineizhuanghuang"));
				office.setBangongjiaju(rs.getDouble("bangongjiaju"));
				office.setBangongdianzi(rs.getDouble("bangongdianzi"));
				office.setGaocengchailvshenfengzheng(rs.getString("gaocengchailvshenfengzheng"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return office;
	}

	@Override
	public Vehicle getVehicle(String tag) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Vehicle vehicle = new Vehicle();
		try {
			ps = connection.prepareStatement("select * from vehicle where tag=?");
			ps.setString(1, tag);
			rs = ps.executeQuery();
			while(rs.next()){
				vehicle.setChangpaixinghao(rs.getString("changpaixinghao"));
				vehicle.setBeibaoxianrenzhengjianhaoma(rs.getString("beibaoxianrenzhengjianhaoma"));
				vehicle.setBeibaoxianrenbangongdianhua(rs.getString("beibaoxianrenbangongdianhua"));
				vehicle.setBeibaoxianrenmingcheng(rs.getString("beibaoxianrenmingcheng"));
				vehicle.setPaiqiliang(rs.getDouble("paiqiliang"));
				vehicle.setHeji(rs.getDouble("heji"));
				vehicle.setUsername(rs.getString("username"));
				vehicle.setTag(rs.getString("tag"));
				vehicle.setId(rs.getInt("id"));
				vehicle.setBeibaoxianrenemail(rs.getString("beibaoxianrenemail"));
				vehicle.setToubaorenmingcheng(rs.getString("toubaorenmingcheng"));
				vehicle.setToubaorenyoubian(rs.getString("toubaorenyoubian"));
				vehicle.setToubaorenlianxiren(rs.getString("toubaorenlianxiren"));
				vehicle.setToubaorendianhua(rs.getString("toubaorendianhua"));
				vehicle.setToubaorenemail(rs.getString("toubaorenemail"));
				vehicle.setXingshizhengchezhu(rs.getString("xingshizhengchezhu"));
				vehicle.setBeibaoxianrentongxundizhi(rs.getString("beibaoxianrentongxundizhi"));
				vehicle.setBeibaoxianrenyoubian(rs.getString("beibaoxianrenyoubian"));
				vehicle.setBeibaoxianlianxiren(rs.getString("beibaoxianlianxiren"));
				vehicle.setBeibaoxianrendianhua(rs.getString("beibaoxianrendianhua"));
				vehicle.setToubaorenzhengjianhaoma(rs.getString("toubaorenzhengjianhaoma"));
				vehicle.setToubaorentongxundizhi(rs.getString("toubaorentongxundizhi"));
				vehicle.setToubaorenbangongdianhua(rs.getString("toubaorenbangongdianhua"));
				vehicle.setShangnianjiaoqiangxian(rs.getString("shangnianjiaoqiangxian"));
				vehicle.setJiaoqiangxianbaodanhao(rs.getString("jiaoqiangxianbaodanhao"));
				vehicle.setShangnianshangyexian(rs.getString("shangnianshangyexian"));
				vehicle.setShangyexianbaodanhao(rs.getString("shangyexianbaodanhao"));
				vehicle.setShangyebaoxianfeiheji(rs.getDouble("shangyebaoxianfeiheji"));
				vehicle.setShangyebaoxianstartdate(rs.getString("shangyebaoxianstartdate"));
				vehicle.setShangyebaoxianenddate(rs.getString("shangyebaoxianenddate"));
				vehicle.setJiaoqiangbaoxianstartdate(rs.getString("jiaoqiangbaoxianstartdate"));
				vehicle.setJiaoqiangbaoxianenddate(rs.getString("jiaoqiangbaoxianenddate"));
				vehicle.setHedingzaike(rs.getInt("hedingzaike"));
				vehicle.setHaopaihaoma(rs.getString("haopaihaoma"));
				vehicle.setShibiedaima(rs.getString("shibiedaima"));
				vehicle.setFadongjixinghao(rs.getString("fadongjixinghao"));
				vehicle.setXinchejiage(rs.getDouble("xinchejiage"));
				vehicle.setShangyexianxiane(rs.getString("shangyexianxiane"));
				vehicle.setChechuanshui(rs.getDouble("chechuanshui"));
				vehicle.setZhengyijiejue(rs.getString("zhengyijiejue"));
				vehicle.setJiashiyuanxinxi(rs.getString("jiashiyuanxinxi"));
				vehicle.setChucidengjiriqi(rs.getString("chucidengjiriqi"));
				vehicle.setZhengbeizhiliang(rs.getDouble("zhengbeizhiliang"));
				vehicle.setBaoxianfeixiaoji(rs.getString("baoxianfeixiaoji"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return vehicle;
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
