package bams.servlet.goal;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Goods;
import bams.entity.Order;
import bams.service.GoodsService;
import bams.service.OrderService;

public class GetOrderServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public GetOrderServlet() {
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

		//String username = (String)request.getSession().getAttribute("name");
		String tag = request.getParameter("tag");
		String str_id = request.getParameter("id");
		int id = 0;
		if(null!=str_id){
			id = Integer.parseInt(str_id);
		}
		OrderService service = new OrderService();
		Order order = new Order();
		order = service.getOrder(id);
		
		GoodsService s2 = new GoodsService();
		Goods goods = s2.getGoods(order.getGoods_id());
		
		request.setAttribute("order", order);
		request.setAttribute("goods", goods);
		if(tag.equals("user")){
			request.getRequestDispatcher("/jsp/user/show_order.jsp").forward(request, response);
		}else if(tag.equals("manager")){
			request.getRequestDispatcher("/jsp/manage/about_order.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/error.jsp").forward(request, response);
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
