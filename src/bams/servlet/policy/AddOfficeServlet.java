package bams.servlet.policy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Office;
import bams.service.PolicyService;

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
		PrintWriter writer = response.getWriter();
		String toubaorenmingcheng = request.getParameter("toubaorenmingcheng");
		String toubaorendizhi = request.getParameter("toubaorendizhi");
		double caichansunshixianadd = Double.parseDouble(request.getParameter("caichansunshixianadd"));
		double caichansunshixianaddbaoe = Double.parseDouble(request.getParameter("caichansunshixianaddbaoe"));
		double tuantiyiwaixianzengjiabaofei = Double.parseDouble(request.getParameter("tuantiyiwaixianzengjiabaofei"));
		double zongbaofei = Double.parseDouble(request.getParameter("zongbaofei"));
		int tuantiyiwaixianzengjiarenshu = Integer.parseInt(request.getParameter("tuantiyiwaixianzengjiarenshu"));
		String toubaorenqianzhang = request.getParameter("toubaorenqianzhang");
		String toubaoriqi = request.getParameter("toubaoriqi");
//		String tuantiyiwaishanghaimingdan = request.getParameter("tuantiyiwaishanghaimingdan");
//		String tuantiyiwaishanghaishenfenzheng = request.getParameter("tuantiyiwaishanghaishenfenzheng");
//		String gaocengchailvmingdan = request.getParameter("gaocengchailvmingdan");
//		String gaocengchailvshenfengzheng = request.getParameter("gaocengchailvshenfengzheng");
		
		office.setToubaorenmingcheng(toubaorenmingcheng);
		office.setToubaorendizhi(toubaorendizhi);
		office.setCaichansunshixianadd(caichansunshixianadd);
		office.setCaichansunshixianaddbaoe(caichansunshixianaddbaoe);
		office.setTuantiyiwaixianzengjiabaofei(tuantiyiwaixianzengjiabaofei);
		office.setZongbaofei(zongbaofei);
		office.setTuantiyiwaixianzengjiarenshu(tuantiyiwaixianzengjiarenshu);
		office.setToubaorenqianzhang(toubaorenqianzhang);
		office.setToubaoriqi(toubaoriqi);

		PolicyService service = new PolicyService();
		if(service.addOffice(office)){
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
