package bams.servlet.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Picture;
import bams.entity.PolicyIndex;
import bams.entity.User;
import bams.service.PictureService;
import bams.service.PolicyIndexService;
import bams.service.UserService;

public class GetUserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public GetUserServlet() {
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

		String name = request.getParameter("name");
		UserService service = new UserService();
		PolicyIndexService piservice = new PolicyIndexService();
		List<PolicyIndex> indexlist = new ArrayList<PolicyIndex>();
		indexlist = piservice.getPolicyIndexByUserName(name);
		//System.out.println(indexlist.get(0).getTag());
		
		PictureService pservice = new PictureService();
		List<Picture> picturelist = pservice.listPictureByUser(name);
		try {
			User user= service.getUser(name);
			//HttpSession session = request.getSession();
	        request.setAttribute("user", user);
	        //mark 的作用是防止用户已经被删除之后，再次访问，导致空指针
	        if(user!=null)
	        	request.setAttribute("mark", "notnull");
	        request.setAttribute("picturelist", picturelist);
	        request.setAttribute("indexlist", indexlist);
	        RequestDispatcher rd;
	        rd = getServletContext().getRequestDispatcher("/jsp/manage/about_user.jsp");
	        rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
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
