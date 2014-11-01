package bams.servlet.goal;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Order;
import bams.service.OrderService;

public class ListOrderServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ListOrderServlet() {
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
		String page = request.getParameter("page");
		int start = 0;
		int mark  =0 ;
		if(null!=str_start){
			start = Integer.parseInt(str_start);
		}
		if(page.equals("undeal")){
			mark = 0;
		}else if(page.equals("dealed")){
			mark =1;
		}
		OrderService service = new OrderService();
		
		List<Order> orderlist = service.listAllOrder(start,mark);
		request.setAttribute("orderlist", orderlist);
		if(page.equals("undeal")){
			request.getRequestDispatcher("/jsp/manage/undeal.jsp?start="+start)
			.forward(request, response);
		}else if(page.equals("dealed")){
			request.getRequestDispatcher("/jsp/manage/dealed.jsp?start="+start)
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
