package bams.servlet.policy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Vehicle;
import bams.service.PolicyService;

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
		
		
		String checkboxes[] = request.getParameterValues("xianbie");
		String shangyexianxianes[] = request.getParameterValues("shangyexianxiane");
		String baoxianfeixiaojis[] = request.getParameterValues("baoxianfeixiaoji");
		
		String shangyexianxiane = "";
		String baoxianfeixiaoji = "";
		for(int i=0;i<checkboxes.length;i++){
			if(checkboxes[i].equals("checked")){
				shangyexianxiane = shangyexianxiane + ";" + shangyexianxianes[i];
				baoxianfeixiaoji = baoxianfeixiaoji + ";" + baoxianfeixiaojis[i];
			}else{
				shangyexianxiane = shangyexianxiane + ";zero";
				baoxianfeixiaoji = baoxianfeixiaoji + ";zero";
			}
		}
		vehicle.setShangyexianxiane(shangyexianxiane);
		vehicle.setBaoxianfeixiaoji(baoxianfeixiaoji);
		PolicyService service = new PolicyService();
		if(service.addVehicle(vehicle)){
			this.getServletContext()
			.getRequestDispatcher("/success.jsp")
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
