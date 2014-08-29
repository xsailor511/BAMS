package bams.servlet.policy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.EnterprisePackage;
import bams.service.PolicyService;

public class AddEnterprisePackageServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddEnterprisePackageServlet() {
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

		EnterprisePackage enterprisepackage = new EnterprisePackage();
		
		PrintWriter writer = response.getWriter();
		
		String weituoren = request.getParameter("weituoren");
		String dianhua = request.getParameter("dianhua");
		String lianxiren = request.getParameter("lianxiren");
		String baoxiangongsi = request.getParameter("baoxiangongsi");
		String weituorenzhucedizhi = request.getParameter("weituorenzhucedizhi");
		String weituorenfadingdaibiaoren = request.getParameter("weituorenfadingdaibiaoren");
		String shoutuorenzhucedizhi = request.getParameter("shoutuorenzhucedizhi");
		String shoutuorenfadingdaibiao = request.getParameter("shoutuorenfadingdaibiao");
		String weituorenqianzhang = request.getParameter("weituorenqianzhang");
		
		enterprisepackage.setWeituoren(weituoren);
		enterprisepackage.setDianhua(dianhua);
		enterprisepackage.setLianxiren(lianxiren);
		enterprisepackage.setBaoxiangongsi(baoxiangongsi);
		enterprisepackage.setWeituorenzhucedizhi(weituorenzhucedizhi);
		enterprisepackage.setWeituorenfadingdaibiaoren(weituorenfadingdaibiaoren);
		enterprisepackage.setShoutuorenzhucedizhi(shoutuorenzhucedizhi);
		enterprisepackage.setShoutuorenfadingdaibiao(shoutuorenfadingdaibiao);
		enterprisepackage.setWeituorenqianzhang(weituorenqianzhang);
		

		String enddate = request.getParameter("start_time");
		String tianbiaoriqi = request.getParameter("start_time");
		
		enterprisepackage.setEnddate(enddate);
		enterprisepackage.setTianbiaoriqi(tianbiaoriqi);
	
		PolicyService service = new PolicyService();
		if(service.addEnterprisePackage(enterprisepackage)){
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
