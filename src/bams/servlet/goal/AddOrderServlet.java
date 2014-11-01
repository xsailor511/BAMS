package bams.servlet.goal;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Goods;
import bams.entity.Order;
import bams.service.GoodsService;
import bams.service.OrderService;
import bams.util.StringUtil;

public class AddOrderServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddOrderServlet() {
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

		String address = request.getParameter("address");
		address = new String(address.getBytes(StringUtil.getEncoding(address)), "UTF-8");
		int goods_id = Integer.parseInt(request.getParameter("goods_id"));
		String username = (String)request.getSession().getAttribute("name");
		Date dt = new Date(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String   datetime   =   sdf.format(dt);
        int r = (int)(Math.random()*89)+10;
        String code = r+datetime;
        GoodsService s2 = new GoodsService();
        Goods goods = s2.getGoods(goods_id);
        s2.buy(username, goods.getValue());
        Order order = new Order();
        order.setAddress(address);
        order.setCode(code);
        order.setUsername(username);
        order.setGoods_id(goods_id);
        OrderService service = new OrderService();
        if(service.addOrder(order)){
        	request.getRequestDispatcher("/success.jsp").forward(request, response);
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
