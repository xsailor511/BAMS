package bams.servlet.picture;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Case;
import bams.service.PictureService;

public class ManageLiPeiServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ManageLiPeiServlet() {
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

		response.setContentType("text/html");
		PictureService service = new PictureService();
		String str_start = request.getParameter("start");
		String page = request.getParameter("page");
		int mark = 0;
		if(page.equals("replyed")){
			mark = 1;
		}else if(page.equals("unreply")){
			mark = 0;
		}
		int start = 0 ;
		if(null!=str_start){
			start = Integer.parseInt(str_start);
		}
		List<Case> caselist = service.listAllCase(start,mark);
		request.setAttribute("caselist", caselist);
		String url = "";
		if(mark == 1){
			url = "/jsp/manage/lipeibaoanreplyed.jsp?start="+start;
		}else{
			url = "/jsp/manage/lipeibaoanunreply.jsp?start="+start;
		}
		request.getRequestDispatcher(url).forward(request, response);

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
