package bams.servlet.policy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Family;
import bams.service.PolicyService;

public class AddFamilyServlet extends HttpServlet {

	/**
	 * 全家无忧保险
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddFamilyServlet() {
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
		Family family = new Family();
		//PrintWriter writer = response.getWriter();
		
		String baoxiancaichandizhi = request.getParameter("baoxiancaichandizhi");
		family.setBaoxiancaichandizhi(baoxiancaichandizhi);
		boolean caichanzonghebaoxian=false;
		boolean yiwaishanghaiyiliao=false;
		boolean chucichamingzhongji=false;
		boolean menjizhen=false;
		boolean jibingzhuyuan=false;
		boolean quantijiatingchengyuan = false;
		String checkboxes[] = request.getParameterValues("checkboxes");
		for(int i=0;i<checkboxes.length;i++){
			if(checkboxes[i].equals("caichanzonghebaoxian"))
				caichanzonghebaoxian = true;
			if(checkboxes[i].equals("yiwaishanghaiyiliao"))
				yiwaishanghaiyiliao = true;
			if(checkboxes[i].equals("chucichamingzhongji"))
				chucichamingzhongji = true;
			if(checkboxes[i].equals("menjizhen"))
				menjizhen = true;
			if(checkboxes[i].equals("jibingzhuyuan"))
				jibingzhuyuan = true;
			if(checkboxes[i].equals("quantijiatingchengyuan"))
				quantijiatingchengyuan = true;
		}
		family.setCaichanzonghebaoxian(caichanzonghebaoxian);
		family.setChucichamingzhongji(chucichamingzhongji);
		family.setMenjizhen(menjizhen);
		family.setJibingzhuyuan(jibingzhuyuan);
		family.setYiwaishanghaiyiliao(yiwaishanghaiyiliao);
		family.setQuantijiatingchengyuan(quantijiatingchengyuan);
		
		double yiwaiyiliaobaoxianheji = Double.parseDouble(request.getParameter("yiwaiyiliaobaoxianheji"));
		double baoxianfeizongji = Double.parseDouble(request.getParameter("baoxianfeizongji"));
		
		family.setYiwaiyiliaobaoxianheji(yiwaiyiliaobaoxianheji);
		family.setBaoxianfeizongji(baoxianfeizongji);
		String startdate = request.getParameter("startdate");
		String enddate = request.getParameter("enddate");
		String baoxianfeizongjichina = request.getParameter("baoxianfeizongjichina");
		
		family.setStartdate(startdate);
		family.setEnddate(enddate);
		family.setBaoxianfeizongjichina(baoxianfeizongjichina);
		String username = (String)request.getSession().getAttribute("name");
		family.setUsername(username);
		PolicyService service = new PolicyService();
		if(service.addFamily(family)){
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
