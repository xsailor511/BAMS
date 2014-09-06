package bams.servlet.policy;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.EmployerDuty;
import bams.service.PolicyService;

public class AddEmployerDutyServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddEmployerDutyServlet() {
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

		EmployerDuty employerduty= new EmployerDuty();

		String toubaorenmingcheng = request.getParameter("toubaorenmingcheng");
		String toubaorendizhi = request.getParameter("toubaorendizhi");
		String toubaorenlianxiren = request.getParameter("toubaorenlianxiren");
		String toubaorendianhua = request.getParameter("toubaorendianhua");
		String beibaoxianrenmingcheng = request.getParameter("beibaoxianrenmingcheng");
		String beibaoxianrendizhi = request.getParameter("beibaoxianrendizhi");
		String yingyexingzhi = request.getParameter("yingyexingzhi");
		String beizuzhijigoudaima = request.getParameter("beizuzhijigoudaima");
		String canjiashehuibaoxianTTT[]= request.getParameterValues("canjiashehuibaoxian");
		String tebieyueding = request.getParameter("tebieyueding");
		String sifaguanxia = request.getParameter("sifaguanxia");
		String toubaorenqianzhang = request.getParameter("toubaorenqianzhang");
		boolean canjiashehuibaoxian ;
		if(null!=canjiashehuibaoxianTTT){
			canjiashehuibaoxian = true;
		}else{
			canjiashehuibaoxian = false;
		}
		double baoxianfei = Double.parseDouble(request.getParameter("baoxianfei"));
		String start_time = request.getParameter("start_time");
		String end_time = request.getParameter("end_time");
		String fufeiriqi = request.getParameter("fufeiriqi");
		String toubaoriqi = request.getParameter("toubaoriqi");
		
		employerduty.setToubaorenmingcheng(toubaorenmingcheng);
		employerduty.setToubaorendizhi(toubaorendizhi);
		employerduty.setToubaorenlianxiren(toubaorenlianxiren);
		employerduty.setToubaorendianhua(toubaorendianhua);
		employerduty.setBeibaoxianrenmingcheng(beibaoxianrenmingcheng);
		employerduty.setBeibaoxianrendizhi(beibaoxianrendizhi);
		employerduty.setYingyexingzhi(yingyexingzhi);
		employerduty.setBeizuzhijigoudaima(beizuzhijigoudaima);
		employerduty.setTebieyueding(tebieyueding);
		employerduty.setSifaguanxia(sifaguanxia);
		employerduty.setToubaorenqianzhang(toubaorenqianzhang);
		employerduty.setBaoxianfei(baoxianfei);
		employerduty.setCanjiashehuibaoxian(canjiashehuibaoxian);
		employerduty.setStart_time(start_time);
		employerduty.setEnd_time(end_time);
		employerduty.setFufeiriqi(fufeiriqi);
		employerduty.setToubaoriqi(toubaoriqi);
	
		String guyuangongzhongs[] = request.getParameterValues("guyuangongzhong");
		String guyuanrenshus[] = request.getParameterValues("guyuanrenshu");
		String peichangsiwangs[] = request.getParameterValues("peichangsiwang");
		String peichangyiliaos[] = request.getParameterValues("peichangyiliao");
		String guyuangongzhong = "";
		String guyuanrenshu= "";
		String peichangsiwang= "";
		String peichangyiliao= "";
		
		for(int i=0;i<guyuangongzhongs.length;i++){
			if(guyuangongzhongs[i].trim().equals("")){
				guyuangongzhong = guyuangongzhong+";none";
				guyuanrenshu = guyuanrenshu+";none";
				peichangsiwang = peichangsiwang+";none";
				peichangyiliao = peichangyiliao+";none";
			}else{
				guyuangongzhong = guyuangongzhong+";"+guyuangongzhongs[i];
				guyuanrenshu = guyuanrenshu+";"+guyuanrenshus[i];
				peichangsiwang = peichangsiwang+";"+peichangsiwangs[i];
				peichangyiliao = peichangyiliao+";"+peichangyiliaos[i];
			}
		}
		employerduty.setGuyuangongzhong(guyuangongzhong);
		employerduty.setGuyuanrenshu(guyuanrenshu);
		employerduty.setPeichangsiwang(peichangsiwang);
		employerduty.setPeichangyiliao(peichangyiliao);
		
		String zhengyichuli = request.getParameter("zhengyichuli");
		if(zhengyichuli.trim().equals("susong")){
			String zhongcaijigou = request.getParameter("zhongcaijigou");
			zhengyichuli = zhengyichuli + ";" + zhongcaijigou;
		}
		employerduty.setZhengyichuli(zhengyichuli);
		String username = (String)request.getSession().getAttribute("name");
		employerduty.setUsername(username);
		PolicyService service = new PolicyService();
		if(service.addEmployerDuty(employerduty)){
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

		doGet(request,response);
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
