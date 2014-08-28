package bams.servlet.policy;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.AllProperty;
import bams.service.PolicyService;

public class AddAllPropertyServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddAllPropertyServlet() {
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
		PrintWriter writer = response.getWriter();
		AllProperty allproperty = new AllProperty();
		String toubaorenmingcheng = request.getParameter("toubaorenmingcheng");
		String toubaorendizhi = request.getParameter("toubaorendizhi");
		String toubaorendianhua = request.getParameter("toubaorendianhua");
		String toubaorenzuzhijigou = request.getParameter("toubaorenzuzhijigou");
		String beibaoxianrenmingchen = request.getParameter("beibaoxianrenmingchen");
		String beibaoxianrendizhi = request.getParameter("beibaoxianrendizhi");
		String beibaoxianrenyingyexingzhi = request.getParameter("beibaoxianrenyingyexingzhi");
		String baoxiancaichandizhi = request.getParameter("baoxiancaichandizhi");
		String youzhengbianma = request.getParameter("youzhengbianma");
		double fangwujine = Double.parseDouble(request.getParameter("fangwujine"));
		double jiqishebeijine = Double.parseDouble(request.getParameter("jiqishebeijine"));
		double qitajine = Double.parseDouble(request.getParameter("qitajine"));
		double cunhuojine = Double.parseDouble(request.getParameter("cunhuojine"));
		double baoxianfei = Double.parseDouble(request.getParameter("baoxianfei"));
		String baoxianjinexiaoji = request.getParameter("baoxianjinexiaoji");
		String jiaofeifangshi = request.getParameter("jiaofeifangshi");
		String fujiatiaokuan = request.getParameter("fujiatiaokuan");
		String tebieyueding = request.getParameter("tebieyueding");
		int toubaofujianshuliang = Integer.parseInt(request.getParameter("toubaofujianshuliang"));
		String toubaorenqianzhang = request.getParameter("toubaorenqianzhang");
		String baoxianfeichina = request.getParameter("baoxianfeichina");
		
		allproperty.setToubaorenmingcheng(toubaorenmingcheng);
		allproperty.setToubaorendizhi(toubaorendizhi);
		allproperty.setToubaorendianhua(toubaorendianhua);
		allproperty.setToubaorenzuzhijigou(toubaorenzuzhijigou);
		allproperty.setBeibaoxianrenmingchen(beibaoxianrenmingchen);
		allproperty.setBeibaoxianrendizhi(beibaoxianrendizhi);
		allproperty.setBeibaoxianrenyingyexingzhi(beibaoxianrenyingyexingzhi);
		allproperty.setBaoxiancaichandizhi(baoxiancaichandizhi);
		allproperty.setYouzhengbianma(youzhengbianma);
		allproperty.setFangwujine(fangwujine);
		allproperty.setJiqishebeijine(jiqishebeijine);
		allproperty.setQitajine(qitajine);
		allproperty.setCunhuojine(cunhuojine);
		allproperty.setBaoxianfei(baoxianfei);
		allproperty.setBaoxianjinexiaoji(baoxianjinexiaoji);
		allproperty.setJiaofeifangshi(jiaofeifangshi);
		allproperty.setFujiatiaokuan(fujiatiaokuan);
		allproperty.setTebieyueding(tebieyueding);
		allproperty.setToubaorenqianzhang(toubaorenqianzhang);
		allproperty.setToubaofujianshuliang(toubaofujianshuliang);
		allproperty.setBaoxianfeichina(baoxianfeichina);
		try {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date start = format.parse(request.getParameter("start_time"));
			java.sql.Date start_time= new java.sql.Date(start.getTime());
			java.util.Date end = format.parse(request.getParameter("end_time"));
			java.sql.Date end_time= new java.sql.Date(end.getTime());
			java.util.Date jiaofei= format.parse(request.getParameter("jiaofeishijian"));
			java.sql.Date jiaofeishijian = new java.sql.Date(jiaofei.getTime());
			java.util.Date toubaodate = format.parse(request.getParameter("toubaoriqi"));
			java.sql.Date toubaoriqi = new java.sql.Date(toubaodate.getTime());
			allproperty.setStart_time(start_time);
			allproperty.setEnd_time(end_time);
			allproperty.setJiaofeishijian(jiaofeishijian);
			allproperty.setToubaoriqi(toubaoriqi);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		PolicyService service = new PolicyService();
		if(service.addAllProperty(allproperty)){
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
