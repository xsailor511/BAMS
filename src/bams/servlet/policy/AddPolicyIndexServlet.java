package bams.servlet.policy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.PolicyIndex;
import bams.service.PolicyIndexService;
import bams.util.StringUtil;

public class AddPolicyIndexServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddPolicyIndexServlet() {
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
		String policyname = request.getParameter("policyname");
		String tablename = request.getParameter("tablename");
		String tag = request.getParameter("tag");
		String username = (String)request.getSession().getAttribute("name");
		PolicyIndexService indexService = new PolicyIndexService();
		PolicyIndex index = new PolicyIndex();
		index.setTablename(tablename);
		index.setUsername(username);
        String policyName = username+"_"+policyname+"_"+tag;
        policyName = new String(policyName.getBytes(StringUtil.getEncoding(policyName)), "GB2312");
        System.out.println(policyName);
		index.setPolicyname(policyName);
		index.setTag(tag);
		if(indexService.addPolicyIndex(index)){
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
