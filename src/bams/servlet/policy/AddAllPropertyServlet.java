package bams.servlet.policy;

import java.io.IOException;


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
		
		AllProperty allproperty = new AllProperty();
		String toubaorenmingcheng = request.getParameter("toubaorenmingcheng");
		String toubaorendizhi = request.getParameter("toubaorendizhi");
		String toubaorendianhua = request.getParameter("toubaorendianhua");
		String toubaorenzuzhijigou = request.getParameter("toubaorenzuzhijigou");
		String beibaoxianrenmingchen = request.getParameter("beibaoxianrenmingcheng");
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
		String start_time = request.getParameter("start_time");
		String end_time = request.getParameter("end_time");
		String jiaofeishijian= request.getParameter("jiaofeishijian");
		String toubaoriqi = request.getParameter("toubaoriqi");
		
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
		allproperty.setStart_time(start_time);
		allproperty.setEnd_time(end_time);
		allproperty.setJiaofeishijian(jiaofeishijian);
		allproperty.setToubaoriqi(toubaoriqi);

		String zhengyichuli = "";
		String zhengyichuli_ok = request.getParameter("zhengyichuli");
		if(zhengyichuli_ok.equals("zhongcai")){
			String zhongcaijigou = request.getParameter("zhongcaijigou");
			zhengyichuli = zhengyichuli_ok+";"+zhongcaijigou;
		}else{
			zhengyichuli = zhengyichuli_ok;
		}
		allproperty.setZhengyichuli(zhengyichuli);
		
		String toubaofujians[] = request.getParameterValues("toubaofujian");
		String toubaofujian = "";
		for(int i=0;i<toubaofujians.length;i++){
			if(toubaofujians[i]==null){
				toubaofujian = toubaofujian+";"+"no";
			}else{
				toubaofujian = toubaofujian+";"+toubaofujians[i];
			}
		}
		if(toubaofujians[3].equals("qita")){
			String qita = request.getParameter("qita");
			toubaofujian = toubaofujian+";"+qita;
		}else{
			toubaofujian = toubaofujian+";none";
		}
		allproperty.setToubaofujian(toubaofujian);
		
		String shifoutouguo = request.getParameter("shifoutouguo");
		if(shifoutouguo.equals("shi")){
			String baoxiandanhao = request.getParameter("baoxiandanhao");
			shifoutouguo = shifoutouguo + ";" + baoxiandanhao;
		}else{
			shifoutouguo = shifoutouguo + ";none";
		}
		allproperty.setShifoutouguo(shifoutouguo);
		
		String lipeijilu = request.getParameter("lipeijilu");
		if(lipeijilu.equals("you")){
			String chuxianshijian = request.getParameter("chuxianshijian");
			String sunshijine = request.getParameter("sunshijine");
			String chuxianyuanyin = request.getParameter("chuxianyuanyin");
			String gaijincuoshi = request.getParameter("gaijincuoshi");
			lipeijilu = lipeijilu + ";" + chuxianshijian+";"+sunshijine+";"+chuxianyuanyin+";"+gaijincuoshi;
		}else{
			lipeijilu = lipeijilu + ";none;none;none;none";
		}
		allproperty.setLipeijilu(lipeijilu);
		String username = (String)request.getSession().getAttribute("name");
		allproperty.setUsername(username);
		PolicyService service = new PolicyService();
		if(service.addAllProperty(allproperty)){
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
