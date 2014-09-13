package bams.servlet.policy;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Vehicle;
import bams.service.PolicyService;
import bams.util.StringUtil;

public class AddVehicleServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddVehicleServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Vehicle vehicle = new Vehicle();
		//PrintWriter writer = response.getWriter();
		
		String beibaoxianrenmingcheng = request.getParameter("beibaoxianrenmingcheng");
		String beibaoxianrenzhengjianhaoma = request.getParameter("beibaoxianrenzhengjianhaoma");
		String beibaoxianrentongxundizhi = request.getParameter("beibaoxianrentongxundizhi");
		String beibaoxianrenyoubian = request.getParameter("beibaoxianrenyoubian");
		String beibaoxianlianxiren = request.getParameter("beibaoxianlianxiren");
		String beibaoxianrendianhua = request.getParameter("beibaoxianrendianhua");
		String beibaoxianrenbangongdianhua = request.getParameter("beibaoxianrenbangongdianhua");
		String beibaoxianrenemail = request.getParameter("beibaoxianrenemail");
		String toubaorenmingcheng = request.getParameter("toubaorenmingcheng");
		String toubaorenzhengjianhaoma = request.getParameter("toubaorenzhengjianhaoma");
		String toubaorentongxundizhi = request.getParameter("toubaorentongxundizhi");
		String toubaorenyoubian = request.getParameter("toubaorenyoubian");
		
		beibaoxianrenmingcheng = new String(beibaoxianrenmingcheng.getBytes(StringUtil.getEncoding(beibaoxianrenmingcheng)), "UTF-8");
		beibaoxianrenzhengjianhaoma = new String(beibaoxianrenzhengjianhaoma.getBytes(StringUtil.getEncoding(beibaoxianrenzhengjianhaoma)), "UTF-8");
		beibaoxianrentongxundizhi = new String(beibaoxianrentongxundizhi.getBytes(StringUtil.getEncoding(beibaoxianrentongxundizhi)), "UTF-8");
		beibaoxianrenyoubian = new String(beibaoxianrenyoubian.getBytes(StringUtil.getEncoding(beibaoxianrenyoubian)), "UTF-8");
		beibaoxianlianxiren = new String(beibaoxianlianxiren.getBytes(StringUtil.getEncoding(beibaoxianlianxiren)), "UTF-8");
		beibaoxianrendianhua = new String(beibaoxianrendianhua.getBytes(StringUtil.getEncoding(beibaoxianrendianhua)), "UTF-8");
		beibaoxianrenbangongdianhua = new String(beibaoxianrenbangongdianhua.getBytes(StringUtil.getEncoding(beibaoxianrenbangongdianhua)), "UTF-8");
		beibaoxianrenemail = new String(beibaoxianrenemail.getBytes(StringUtil.getEncoding(beibaoxianrenemail)), "UTF-8");
		toubaorenmingcheng = new String(toubaorenmingcheng.getBytes(StringUtil.getEncoding(toubaorenmingcheng)), "UTF-8");
		toubaorenzhengjianhaoma = new String(toubaorenzhengjianhaoma.getBytes(StringUtil.getEncoding(toubaorenzhengjianhaoma)), "UTF-8");
		toubaorentongxundizhi = new String(toubaorentongxundizhi.getBytes(StringUtil.getEncoding(toubaorentongxundizhi)), "UTF-8");
		toubaorenyoubian = new String(toubaorenyoubian.getBytes(StringUtil.getEncoding(toubaorenyoubian)), "UTF-8");
		
		vehicle.setBeibaoxianrenmingcheng(beibaoxianrenmingcheng);
		vehicle.setBeibaoxianrenzhengjianhaoma(beibaoxianrenzhengjianhaoma);
		vehicle.setBeibaoxianrentongxundizhi(beibaoxianrentongxundizhi);
		vehicle.setBeibaoxianrenyoubian(beibaoxianrenyoubian);
		vehicle.setBeibaoxianlianxiren(beibaoxianlianxiren);
		vehicle.setBeibaoxianrendianhua(beibaoxianrendianhua);
		vehicle.setBeibaoxianrenbangongdianhua(beibaoxianrenbangongdianhua);
		vehicle.setBeibaoxianrenemail(beibaoxianrenemail);
		vehicle.setToubaorenmingcheng(toubaorenmingcheng);
		vehicle.setToubaorenzhengjianhaoma(toubaorenzhengjianhaoma);
		vehicle.setToubaorentongxundizhi(toubaorentongxundizhi);
		vehicle.setToubaorenyoubian(toubaorenyoubian);
		
		String toubaorenlianxiren = request.getParameter("toubaorenlianxiren");
		String toubaorendianhua = request.getParameter("toubaorendianhua");
		String toubaorenbangongdianhua = request.getParameter("toubaorenbangongdianhua");
		String toubaorenemail = request.getParameter("toubaorenemail");
		String xingshizhengchezhu = request.getParameter("xingshizhengchezhu");
		String changpaixinghao = request.getParameter("changpaixinghao");
		int hedingzaike = Integer.parseInt(request.getParameter("hedingzaike"));
		String haopaihaoma = request.getParameter("haopaihaoma");
		String chucidengjiriqi = request.getParameter("chucidengjiriqi");
		String shibiedaima = request.getParameter("shibiedaima");
		String fadongjixinghao = request.getParameter("fadongjixinghao");
		
		toubaorenlianxiren = new String(toubaorenlianxiren.getBytes(StringUtil.getEncoding(toubaorenlianxiren)), "UTF-8");
		toubaorendianhua = new String(toubaorendianhua.getBytes(StringUtil.getEncoding(toubaorendianhua)), "UTF-8");
		toubaorenbangongdianhua = new String(toubaorenbangongdianhua.getBytes(StringUtil.getEncoding(toubaorenbangongdianhua)), "UTF-8");
		toubaorenemail = new String(toubaorenemail.getBytes(StringUtil.getEncoding(toubaorenemail)), "UTF-8");
		xingshizhengchezhu = new String(xingshizhengchezhu.getBytes(StringUtil.getEncoding(xingshizhengchezhu)), "UTF-8");
		changpaixinghao = new String(changpaixinghao.getBytes(StringUtil.getEncoding(changpaixinghao)), "UTF-8");
		haopaihaoma = new String(haopaihaoma.getBytes(StringUtil.getEncoding(haopaihaoma)), "UTF-8");
		chucidengjiriqi = new String(chucidengjiriqi.getBytes(StringUtil.getEncoding(chucidengjiriqi)), "UTF-8");
		shibiedaima = new String(shibiedaima.getBytes(StringUtil.getEncoding(shibiedaima)), "UTF-8");
		fadongjixinghao = new String(fadongjixinghao.getBytes(StringUtil.getEncoding(fadongjixinghao)), "UTF-8");
		
		vehicle.setToubaorenlianxiren(toubaorenlianxiren);
		vehicle.setToubaorendianhua(toubaorendianhua);
		vehicle.setToubaorenbangongdianhua(toubaorenbangongdianhua);
		vehicle.setToubaorenemail(toubaorenemail);
		vehicle.setXingshizhengchezhu(xingshizhengchezhu);
		vehicle.setChangpaixinghao(changpaixinghao);
		vehicle.setHedingzaike(hedingzaike);
		vehicle.setHaopaihaoma(haopaihaoma);
		vehicle.setChucidengjiriqi(chucidengjiriqi);
		vehicle.setShibiedaima(shibiedaima);
		vehicle.setFadongjixinghao(fadongjixinghao);

		double xinchejiage = Double.parseDouble(request.getParameter("xinchejiage"));
		double zhengbeizhiliang = Double.parseDouble(request.getParameter("zhengbeizhiliang"));
		double paiqiliang = Double.parseDouble(request.getParameter("paiqiliang"));
		String shangnianjiaoqiangxian = request.getParameter("shangnianjiaoqiangxian");
		String jiaoqiangxianbaodanhao = request.getParameter("jiaoqiangxianbaodanhao");
		String shangnianshangyexian = request.getParameter("shangnianshangyexian");
		String shangyexianbaodanhao = request.getParameter("shangyexianbaodanhao");	
		double shangyebaoxianfeiheji = Double.parseDouble(request.getParameter("shangyebaoxianfeiheji"));
		double chechuanshui = Double.parseDouble(request.getParameter("chechuanshui"));
		double heji = Double.parseDouble(request.getParameter("heji"));
		String shangyebaoxianstartdate = request.getParameter("shangyebaoxianstartdate");
		String shangyebaoxianenddate = request.getParameter("shangyebaoxianenddate");
		String jiaoqiangbaoxianstartdate = request.getParameter("jiaoqiangbaoxianstartdate");
		String jiaoqiangbaoxianenddate = request.getParameter("jiaoqiangbaoxianenddate");
		String zhengyijiejue = request.getParameter("zhengyijiejue");
		String jiashiyuanxinxi = request.getParameter("jiashiyuanxinxi");
		
		shangnianjiaoqiangxian = new String(shangnianjiaoqiangxian.getBytes(StringUtil.getEncoding(shangnianjiaoqiangxian)), "UTF-8");
		jiaoqiangxianbaodanhao = new String(jiaoqiangxianbaodanhao.getBytes(StringUtil.getEncoding(jiaoqiangxianbaodanhao)), "UTF-8");
		shangnianshangyexian = new String(shangnianshangyexian.getBytes(StringUtil.getEncoding(shangnianshangyexian)), "UTF-8");
		shangyexianbaodanhao = new String(shangyexianbaodanhao.getBytes(StringUtil.getEncoding(shangyexianbaodanhao)), "UTF-8");
		shangyebaoxianstartdate = new String(shangyebaoxianstartdate.getBytes(StringUtil.getEncoding(shangyebaoxianstartdate)), "UTF-8");
		shangyebaoxianenddate = new String(shangyebaoxianenddate.getBytes(StringUtil.getEncoding(shangyebaoxianenddate)), "UTF-8");
		jiaoqiangbaoxianstartdate = new String(jiaoqiangbaoxianstartdate.getBytes(StringUtil.getEncoding(jiaoqiangbaoxianstartdate)), "UTF-8");
		jiaoqiangbaoxianenddate = new String(jiaoqiangbaoxianenddate.getBytes(StringUtil.getEncoding(jiaoqiangbaoxianenddate)), "UTF-8");
		zhengyijiejue = new String(zhengyijiejue.getBytes(StringUtil.getEncoding(zhengyijiejue)), "UTF-8");
		jiashiyuanxinxi = new String(jiashiyuanxinxi.getBytes(StringUtil.getEncoding(jiashiyuanxinxi)), "UTF-8");
		
		vehicle.setXinchejiage(xinchejiage);
		vehicle.setZhengbeizhiliang(zhengbeizhiliang);
		vehicle.setPaiqiliang(paiqiliang);
		vehicle.setShangnianjiaoqiangxian(shangnianjiaoqiangxian);
		vehicle.setJiaoqiangxianbaodanhao(jiaoqiangxianbaodanhao);
		vehicle.setShangnianshangyexian(shangnianshangyexian);
		vehicle.setShangyexianbaodanhao(shangyexianbaodanhao);
		vehicle.setShangyebaoxianfeiheji(shangyebaoxianfeiheji);
		vehicle.setChechuanshui(chechuanshui);
		vehicle.setHeji(heji);
		vehicle.setShangyebaoxianstartdate(shangyebaoxianstartdate);
		vehicle.setShangyebaoxianenddate(shangyebaoxianenddate);
		vehicle.setJiaoqiangbaoxianstartdate(jiaoqiangbaoxianstartdate);
		vehicle.setJiaoqiangbaoxianenddate(jiaoqiangbaoxianenddate);
		vehicle.setZhengyijiejue(zhengyijiejue);
		vehicle.setJiashiyuanxinxi(jiashiyuanxinxi);
		String username = (String)request.getSession().getAttribute("name");
		vehicle.setUsername(username);
		
		
		//String checkboxes[] = request.getParameterValues("xianbie");
		String shangyexianxianes[] = request.getParameterValues("shangyexianxiane");
		String baoxianfeixiaojis[] = request.getParameterValues("baoxianfeixiaoji");
		
		String shangyexianxiane = "";
		String baoxianfeixiaoji = "";
		for(int i=0;i<shangyexianxianes.length;i++){
			if(!shangyexianxianes[i].trim().equals("")){
				shangyexianxiane = shangyexianxiane + shangyexianxianes[i] + ";";
				baoxianfeixiaoji = baoxianfeixiaoji + baoxianfeixiaojis[i] + ";";
			}else{
				shangyexianxiane = shangyexianxiane + "zero;";
				baoxianfeixiaoji = baoxianfeixiaoji + "zero;";
			}
				
			
		}
		vehicle.setShangyexianxiane(shangyexianxiane);
		vehicle.setBaoxianfeixiaoji(baoxianfeixiaoji);
		Date dt = new Date(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String   tag   =   sdf.format(dt);
        vehicle.setTag(tag);
		String policyname = "机动车投保单";
		policyname = new String(policyname.getBytes(StringUtil.getEncoding(policyname)), "GB2312");
		String tablename = "vehicle";
		PolicyService service = new PolicyService();
		if(service.addVehicle(vehicle)){
			this.getServletContext()
			.getRequestDispatcher("/servlet/AddPolicyIndexServlet?policyname="+policyname+"&tag="+tag+"&tablename="+tablename)
			.forward(request, response);
		}else{
			this.getServletContext()
			.getRequestDispatcher("/error.jsp")
			.forward(request, response);
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
