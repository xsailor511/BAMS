package bams.servlet.goal;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Goods;
import bams.entity.User;
import bams.service.GoodsService;
import bams.service.UserService;

public class ListGoodsServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ListGoodsServlet() {
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
		String str_start = request.getParameter("start");
		String name = (String)request.getSession().getAttribute("name");
		UserService userService = new UserService();
		int start = 0;
		if(null!=str_start){
			start = Integer.parseInt(str_start);
		}
		GoodsService service = new GoodsService();
		List<Goods> goodslist = service.listGoods(start);
		request.setAttribute("goodslist", goodslist);
		
		Integer role_int = (Integer)request.getSession().getAttribute("role");
		int role = role_int.intValue();
		if(role==5){
			request.getRequestDispatcher("/jsp/manage/goodsmanage.jsp").forward(request, response);
		}else{
			User user = null;
			try {
				user = userService.getUser(name);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.setAttribute("goal", user.getGoal());
			request.getRequestDispatcher("/jsp/user/goal2goods.jsp").forward(request, response);
			
			
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
