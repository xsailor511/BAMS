package bams.servlet.policy;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Family;
import bams.service.PolicyService;
import bams.util.StringUtil;

public class AddFamilyServlet extends HttpServlet {

	/**
	 * 全家无忧保险
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddFamilyServlet() {
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
		Family family = new Family();
		//PrintWriter writer = response.getWriter();
		
		String baoxiancaichandizhi = request.getParameter("baoxiancaichandizhi");
		baoxiancaichandizhi = new String(baoxiancaichandizhi.getBytes(StringUtil.getEncoding(baoxiancaichandizhi)), "UTF-8");
		family.setBaoxiancaichandizhi(baoxiancaichandizhi);
		boolean caichanzonghebaoxian=false;
		boolean yiwaishanghaiyiliao=false;
		boolean chucichamingzhongji=false;
		boolean menjizhen=false;
		boolean jibingzhuyuan=false;
		boolean quantijiatingchengyuan = false;
		String toubaoxuanxiangs[] = request.getParameterValues("toubaoxuanxiang");
		for(int i=0;i<toubaoxuanxiangs.length;i++){
			if(toubaoxuanxiangs[i].equals("caichanzonghebaoxian"))
				caichanzonghebaoxian = true;
			if(toubaoxuanxiangs[i].equals("quantijiatingchengyuan")){
				quantijiatingchengyuan = true;
				double yiwaiyiliaobaoxianheji = Double.parseDouble(request.getParameter("yiwaiyiliaobaoxianheji"));
				family.setYiwaiyiliaobaoxianheji(yiwaiyiliaobaoxianheji);
				String jiatingchengyuanleixing = request.getParameter("jiatingchengyuanleixing");
				family.setJiatingchengyuanleixing(jiatingchengyuanleixing);
			}
				
		}
		String yiliaobaoxians[] = request.getParameterValues("yiliaobaoxian");
		
		if(null!=yiliaobaoxians){
			for(int i=0;i<yiliaobaoxians.length;i++){
				
				if(yiliaobaoxians[i].equals("chucichamingzhongji"))
					chucichamingzhongji = true;
				if(yiliaobaoxians[i].equals("menjizhen"))
					menjizhen = true;
				if(yiliaobaoxians[i].equals("jibingzhuyuan"))
					jibingzhuyuan = true;
				if(yiliaobaoxians[i].equals("yiwaishanghaiyiliao"))
					yiwaishanghaiyiliao = true;
			}
		}
//		System.out.println("chucichamingzhongji    "+chucichamingzhongji);
//		System.out.println("menjizhen    "+menjizhen);
//		System.out.println("jibingzhuyuan    "+jibingzhuyuan);
//		System.out.println("yiwaishanghaiyiliao    "+yiwaishanghaiyiliao);
		
		family.setCaichanzonghebaoxian(caichanzonghebaoxian);
		family.setChucichamingzhongji(chucichamingzhongji);
		family.setMenjizhen(menjizhen);
		family.setJibingzhuyuan(jibingzhuyuan);
		family.setYiwaishanghaiyiliao(yiwaishanghaiyiliao);
		family.setQuantijiatingchengyuan(quantijiatingchengyuan);
		
		
		double baoxianfeizongji = Double.parseDouble(request.getParameter("baoxianfeizongji"));
		
		
		family.setBaoxianfeizongji(baoxianfeizongji);
		String startdate = request.getParameter("startdate");
		String enddate = request.getParameter("enddate");
		String baoxianfeizongjichina = request.getParameter("baoxianfeizongjichina");
		baoxianfeizongjichina = new String(baoxianfeizongjichina.getBytes(StringUtil.getEncoding(baoxianfeizongjichina)), "UTF-8");
		family.setStartdate(startdate);
		family.setEnddate(enddate);
		family.setBaoxianfeizongjichina(baoxianfeizongjichina);
		String username = (String)request.getSession().getAttribute("name");
		family.setUsername(username);
		Date dt = new Date(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String   tag   =   sdf.format(dt);
        family.setTag(tag);
		String policyname = "全家无忧投保单";
		policyname = new String(policyname.getBytes(StringUtil.getEncoding(policyname)), "GB2312");
		String tablename = "family";
		PolicyService service = new PolicyService();
		if(service.addFamily(family)){
			this.getServletContext()
			.getRequestDispatcher("/servlet/AddPolicyIndexServlet?policyname="+policyname+"&tag="+tag+"&tablename="+tablename)
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
