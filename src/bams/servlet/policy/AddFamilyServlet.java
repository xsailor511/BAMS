package bams.servlet.policy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Family;
import bams.service.PolicyService;

public class AddFamilyServlet extends HttpServlet {

	/**
	 * 
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
		PrintWriter writer = response.getWriter();
		
		String baoxiancaichandizhi = request.getParameter("baoxiancaichandizhi");
		family.setBaoxiancaichandizhi(baoxiancaichandizhi);
		boolean caichanzonghebaoxian=false;
		boolean yiwaishanghaiyiliao=false;
		boolean chucichamingzhongji=false;
		boolean menjizhen=false;
		boolean jibingzhuyuan=false;
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
			
		}
		family.setCaichanzonghebaoxian(caichanzonghebaoxian);
		family.setChucichamingzhongji(chucichamingzhongji);
		family.setMenjizhen(menjizhen);
		family.setJibingzhuyuan(jibingzhuyuan);
		family.setYiwaishanghaiyiliao(yiwaishanghaiyiliao);
		
		double yiwaiyiliaobaoxian = Double.parseDouble(request.getParameter("yiwaiyiliaobaoxian"));
		double baoxianfeizongji = Double.parseDouble(request.getParameter("baoxianfeizongji"));
		
		family.setYiwaiyiliaobaoxian(yiwaiyiliaobaoxian);
		family.setBaoxianfeizongji(baoxianfeizongji);
		String startdate = request.getParameter("startdate");
		String enddate = request.getParameter("startdate");
			
		family.setStartdate(startdate);
		family.setEnddate(enddate);
		
		PolicyService service = new PolicyService();
		if(service.addFamily(family)){
			this.getServletContext()
			.getRequestDispatcher("/success.jsp")
			.forward(request, response);
		}else{
			writer.write("failed");
			writer.flush();
			writer.close();
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
