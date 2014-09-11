package bams.servlet.policy;

import java.io.IOException;



import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.EnterprisePackage;
import bams.service.PolicyService;
import bams.util.StringUtil;

public class AddEnterprisePackageServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddEnterprisePackageServlet() {
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
		//response.setContentType("text/html;charset=utf-8");
		//request.setCharacterEncoding("UTF-8");
		EnterprisePackage enterprisepackage = new EnterprisePackage();
		String name = (String)request.getSession().getAttribute("name");
		//PrintWriter writer = response.getWriter();
		
		String weituoren = request.getParameter("weituoren");
		String dianhua = request.getParameter("dianhua");
		String lianxiren = request.getParameter("lianxiren");
		String baoxiangongsi = request.getParameter("baoxiangongsi");
		String weituorenzhucedizhi = request.getParameter("weituorenzhucedizhi");
		String weituorenfadingdaibiaoren = request.getParameter("weituorenfadingdaibiaoren");
		String shoutuorenzhucedizhi = request.getParameter("shoutuorenzhucedizhi");
		String shoutuorenfadingdaibiao = request.getParameter("shoutuorenfadingdaibiao");
		String weituorenqianzhang = request.getParameter("weituorenqianzhang");
		String startdate = request.getParameter("startdate");
		System.out.println("weituorenqianzhang encoding before   "+StringUtil.getEncoding(weituorenqianzhang));//ISO-8859-1
//		weituoren = new String(weituoren.getBytes(StringUtil.getEncoding(weituoren)), "GB2312");
//		dianhua = new String(dianhua.getBytes(StringUtil.getEncoding(dianhua)), "GB2312");
//		lianxiren = new String(lianxiren.getBytes(StringUtil.getEncoding(lianxiren)), "GB2312");
//		baoxiangongsi = new String(baoxiangongsi.getBytes(StringUtil.getEncoding(baoxiangongsi)), "GB2312");
//		weituorenzhucedizhi = new String(weituorenzhucedizhi.getBytes(StringUtil.getEncoding(weituorenzhucedizhi)), "GB2312");
//		weituorenfadingdaibiaoren = new String(weituorenfadingdaibiaoren.getBytes(StringUtil.getEncoding(weituorenfadingdaibiaoren)), "GB2312");
//		shoutuorenzhucedizhi = new String(shoutuorenzhucedizhi.getBytes(StringUtil.getEncoding(shoutuorenzhucedizhi)), "GB2312");
//		shoutuorenfadingdaibiao = new String(shoutuorenfadingdaibiao.getBytes(StringUtil.getEncoding(shoutuorenfadingdaibiao)), "GB2312");
//		weituorenqianzhang = new String(weituorenqianzhang.getBytes(StringUtil.getEncoding(weituorenqianzhang)), "GB2312");
		
		
		
		enterprisepackage.setWeituoren(weituoren);
		enterprisepackage.setDianhua(dianhua);
		enterprisepackage.setLianxiren(lianxiren);
		
		enterprisepackage.setWeituorenzhucedizhi(weituorenzhucedizhi);
		enterprisepackage.setWeituorenfadingdaibiaoren(weituorenfadingdaibiaoren);
		enterprisepackage.setShoutuorenzhucedizhi(shoutuorenzhucedizhi);
		enterprisepackage.setShoutuorenfadingdaibiao(shoutuorenfadingdaibiao);
		enterprisepackage.setWeituorenqianzhang(weituorenqianzhang);
		enterprisepackage.setBaoxiangongsi(baoxiangongsi);
		enterprisepackage.setStartdate(startdate);
		
		String enddate = request.getParameter("enddate");
		String tianbiaoriqi = request.getParameter("tianbiaoriqi");
		enddate = new String(enddate.getBytes(StringUtil.getEncoding(enddate)), "GB2312");
		tianbiaoriqi = new String(tianbiaoriqi.getBytes(StringUtil.getEncoding(tianbiaoriqi)), "GB2312");
		enterprisepackage.setEnddate(enddate);
		enterprisepackage.setTianbiaoriqi(tianbiaoriqi);
		
		String kexuanxianzhongs[] = request.getParameterValues("kexuanxianzhong");
		String kexuanxianzhong = "";
		if(null!=kexuanxianzhongs){
			for(int i=0;i<kexuanxianzhongs.length;i++){
				kexuanxianzhong = kexuanxianzhong+kexuanxianzhongs[i]+";";
			}
		}
		
		enterprisepackage.setKexuanxianzhong(kexuanxianzhong);
		enterprisepackage.setUsername(name);
		Date dt = new Date(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String   tag   =   sdf.format(dt);
        enterprisepackage.setTag(tag);
		String policyname = "中小企业一揽子保险委托书";
		policyname = new String(policyname.getBytes(StringUtil.getEncoding(policyname)), "GB2312");
		String tablename = "enterprisepackage";
		PolicyService service = new PolicyService();
		if(service.addEnterprisePackage(enterprisepackage)){
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
