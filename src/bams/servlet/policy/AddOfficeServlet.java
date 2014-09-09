package bams.servlet.policy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Office;
import bams.service.PolicyService;
import bams.util.StringUtil;

public class AddOfficeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddOfficeServlet() {
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
		Office office = new Office();
		//PrintWriter writer = response.getWriter();
		String toubaorenmingcheng = request.getParameter("toubaorenmingcheng");
		String toubaorendizhi = request.getParameter("toubaorendizhi");
		String lianxiren = request.getParameter("lianxiren");
		double caichansunshixianadd = Double.parseDouble(request.getParameter("caichansunshixianadd"));
		double caichansunshixianaddbaoe = Double.parseDouble(request.getParameter("caichansunshixianaddbaoe"));
		double tuantiyiwaixianzengjiabaofei = Double.parseDouble(request.getParameter("tuantiyiwaixianzengjiabaofei"));
		double zongbaofei = Double.parseDouble(request.getParameter("zongbaofei"));
		double shineizhuanghuang = Double.parseDouble(request.getParameter("shineizhuanghuang"));
		double bangongjiaju = Double.parseDouble(request.getParameter("bangongjiaju"));
		double bangongdianzi = Double.parseDouble(request.getParameter("bangongdianzi"));
		int tuantiyiwaixianzengjiarenshu = Integer.parseInt(request.getParameter("tuantiyiwaixianzengjiarenshu"));
		String toubaorenqianzhang = request.getParameter("toubaorenqianzhang");
		String toubaoriqi = request.getParameter("toubaoriqi");
		
		toubaorenmingcheng = new String(toubaorenmingcheng.getBytes(StringUtil.getEncoding(toubaorenmingcheng)), "UTF-8");
		toubaorendizhi = new String(toubaorendizhi.getBytes(StringUtil.getEncoding(toubaorendizhi)), "UTF-8");
		lianxiren = new String(lianxiren.getBytes(StringUtil.getEncoding(lianxiren)), "UTF-8");
		toubaorenqianzhang = new String(toubaorenqianzhang.getBytes(StringUtil.getEncoding(toubaorenqianzhang)), "UTF-8");
		toubaoriqi = new String(toubaoriqi.getBytes(StringUtil.getEncoding(toubaoriqi)), "UTF-8");
		
		office.setToubaorenmingcheng(toubaorenmingcheng);
		office.setToubaorendizhi(toubaorendizhi);
		office.setLianxiren(lianxiren);
		office.setCaichansunshixianadd(caichansunshixianadd);
		office.setCaichansunshixianaddbaoe(caichansunshixianaddbaoe);
		office.setTuantiyiwaixianzengjiabaofei(tuantiyiwaixianzengjiabaofei);
		office.setZongbaofei(zongbaofei);
		office.setShineizhuanghuang(shineizhuanghuang);
		office.setBangongjiaju(bangongjiaju);
		office.setBangongdianzi(bangongdianzi);
		office.setTuantiyiwaixianzengjiarenshu(tuantiyiwaixianzengjiarenshu);
		office.setToubaorenqianzhang(toubaorenqianzhang);
		office.setToubaoriqi(toubaoriqi);

		//合并存储部分
		String tuantixingmings[] =request.getParameterValues("tuantixingming");
		String tuantishenfenzhengs[] =request.getParameterValues("tuantishenfenzheng");
		String tuantixingming="";
		String tuantishenfenzheng="";
		for(int i=0;i<tuantixingmings.length;i++){
			if(tuantixingmings[i].trim().equals("")){
				tuantixingming = tuantixingming+";none";
				tuantishenfenzheng = tuantishenfenzheng +";none";
			}else{
				String temp1 = new String(tuantixingmings[i].getBytes(StringUtil.getEncoding(tuantixingmings[i])), "UTF-8");
				String temp2 = new String(tuantishenfenzhengs[i].getBytes(StringUtil.getEncoding(tuantishenfenzhengs[i])), "UTF-8");
				tuantixingming = tuantixingming+";"+ temp1;
				tuantishenfenzheng = tuantishenfenzheng +";"+temp2;
			}
		}
		office.setTuantiyiwaishanghaimingdan(tuantixingming);
		office.setTuantiyiwaishanghaishenfenzheng(tuantishenfenzheng);
		
		String gaocengxingmings[] = request.getParameterValues("gaocengxingming");
		String gaocengshenfenzhengs[] = request.getParameterValues("gaocengshenfenzheng");
		String gaocengxingming = "";
		String gaocengshenfenzheng = "";
		for(int i=0;i<gaocengxingmings.length;i++){
			if(gaocengxingmings[i].trim().equals("")){
				gaocengxingming = gaocengxingming +";none";
				gaocengshenfenzheng = gaocengshenfenzheng +";none";
			}else{
				String temp1 = new String(gaocengxingmings[i].getBytes(StringUtil.getEncoding(gaocengxingmings[i])), "UTF-8");
				String temp2 = new String(gaocengshenfenzhengs[i].getBytes(StringUtil.getEncoding(gaocengshenfenzhengs[i])), "UTF-8");
				gaocengxingming = gaocengxingming +";" + temp1;
				gaocengshenfenzheng = gaocengshenfenzheng +";" + temp2;
			}
		}
		office.setGaocengchailvmingdan(gaocengxingming);
		office.setGaocengchailvshenfengzheng(gaocengshenfenzheng);
		String username = (String)request.getSession().getAttribute("name");
		office.setUsername(username);
		
		String policyname = "办公室综合保险投保单";
		policyname = new String(policyname.getBytes(StringUtil.getEncoding(policyname)), "GB2312");
		
		PolicyService service = new PolicyService();
		if(service.addOffice(office)){
			this.getServletContext()
			.getRequestDispatcher("/servlet/AddPolicyIndexServlet?policyname="+policyname)
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
