package bams.servlet.policy;

import java.io.IOException;





import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.AllProperty;
import bams.entity.PolicyIndex;
import bams.service.PolicyIndexService;
import bams.service.PolicyService;
import bams.util.StringUtil;

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
		String beibaoxianrenmingcheng = request.getParameter("beibaoxianrenmingcheng");
		String beibaoxianrendizhi = request.getParameter("beibaoxianrendizhi");
		String beibaoxianrenzuzhijigou = request.getParameter("beibaoxianrenzuzhijigou");
		String beibaoxianrenyingyexingzhi = request.getParameter("beibaoxianrenyingyexingzhi");
		String baoxiancaichandizhi = request.getParameter("baoxiancaichandizhi");
		String youzhengbianma = request.getParameter("youzhengbianma");
		double fangwujine = Double.parseDouble(request.getParameter("fangwujine"));
		double jiqishebeijine = Double.parseDouble(request.getParameter("jiqishebeijine"));
		double qitajine = Double.parseDouble(request.getParameter("qitajine"));
		double cunhuojine = Double.parseDouble(request.getParameter("cunhuojine"));
		double baoxianfei = Double.parseDouble(request.getParameter("baoxianfei"));
		String baoxianjinexiaoji = request.getParameter("baoxianjinexiaoji");
		String fujiatiaokuan = request.getParameter("fujiatiaokuan");
		String tebieyueding = request.getParameter("tebieyueding");

		String toubaorenqianzhang = request.getParameter("toubaorenqianzhang");
		String baoxianfeichina = request.getParameter("baoxianfeichina");
		String start_time = request.getParameter("start_time");
		String end_time = request.getParameter("end_time");
		String jiaofeishijian= request.getParameter("jiaofeishijian");
		String toubaoriqi = request.getParameter("toubaoriqi");
		
		toubaorenmingcheng = new String(toubaorenmingcheng.getBytes(StringUtil.getEncoding(toubaorenmingcheng)), "UTF-8");
		toubaorendizhi = new String(toubaorendizhi.getBytes(StringUtil.getEncoding(toubaorendizhi)), "UTF-8");
		toubaorenzuzhijigou = new String(toubaorenzuzhijigou.getBytes(StringUtil.getEncoding(toubaorenzuzhijigou)), "UTF-8");
		beibaoxianrenmingcheng = new String(beibaoxianrenmingcheng.getBytes(StringUtil.getEncoding(beibaoxianrenmingcheng)), "UTF-8");
		beibaoxianrendizhi = new String(beibaoxianrendizhi.getBytes(StringUtil.getEncoding(beibaoxianrendizhi)), "UTF-8");
		beibaoxianrenzuzhijigou = new String(beibaoxianrenzuzhijigou.getBytes(StringUtil.getEncoding(beibaoxianrenzuzhijigou)), "UTF-8");
		beibaoxianrenyingyexingzhi = new String(beibaoxianrenyingyexingzhi.getBytes(StringUtil.getEncoding(beibaoxianrenyingyexingzhi)), "UTF-8");
		baoxiancaichandizhi = new String(baoxiancaichandizhi.getBytes(StringUtil.getEncoding(baoxiancaichandizhi)), "UTF-8");
		youzhengbianma = new String(youzhengbianma.getBytes(StringUtil.getEncoding(youzhengbianma)), "UTF-8");
		baoxianjinexiaoji = new String(baoxianjinexiaoji.getBytes(StringUtil.getEncoding(baoxianjinexiaoji)), "UTF-8");
		baoxianfeichina = new String(baoxianfeichina.getBytes(StringUtil.getEncoding(baoxianfeichina)), "UTF-8");
		jiaofeishijian = new String(jiaofeishijian.getBytes(StringUtil.getEncoding(jiaofeishijian)), "UTF-8");
		fujiatiaokuan = new String(fujiatiaokuan.getBytes(StringUtil.getEncoding(fujiatiaokuan)), "UTF-8");
		tebieyueding = new String(tebieyueding.getBytes(StringUtil.getEncoding(tebieyueding)), "UTF-8");
		toubaorenqianzhang = new String(toubaorenqianzhang.getBytes(StringUtil.getEncoding(toubaorenqianzhang)), "UTF-8");
		
		allproperty.setToubaorenmingcheng(toubaorenmingcheng);
		allproperty.setToubaorendizhi(toubaorendizhi);
		allproperty.setToubaorendianhua(toubaorendianhua);
		allproperty.setToubaorenzuzhijigou(toubaorenzuzhijigou);
		allproperty.setBeibaoxianrenmingcheng(beibaoxianrenmingcheng);
		allproperty.setBeibaoxianrendizhi(beibaoxianrendizhi);
		allproperty.setBeibaoxianrenyingyexingzhi(beibaoxianrenyingyexingzhi);
		allproperty.setBeibaoxianrenzuzhijigou(beibaoxianrenzuzhijigou);
		allproperty.setBaoxiancaichandizhi(baoxiancaichandizhi);
		allproperty.setYouzhengbianma(youzhengbianma);
		allproperty.setFangwujine(fangwujine);
		allproperty.setJiqishebeijine(jiqishebeijine);
		allproperty.setQitajine(qitajine);
		allproperty.setCunhuojine(cunhuojine);
		allproperty.setBaoxianfei(baoxianfei);
		allproperty.setBaoxianjinexiaoji(baoxianjinexiaoji);
		allproperty.setFujiatiaokuan(fujiatiaokuan);
		allproperty.setTebieyueding(tebieyueding);
		allproperty.setToubaorenqianzhang(toubaorenqianzhang);
		allproperty.setBaoxianfeichina(baoxianfeichina);
		allproperty.setStart_time(start_time);
		allproperty.setEnd_time(end_time);
		allproperty.setJiaofeishijian(jiaofeishijian);
		allproperty.setToubaoriqi(toubaoriqi);

		String zhengyichuli = "";
		String zhengyichuli_ok = request.getParameter("zhengyichuli");
		if(zhengyichuli_ok.equals("zhongcai")){
			String zhongcaijigou = request.getParameter("zhongcaijigou");
			zhongcaijigou = new String(zhongcaijigou.getBytes(StringUtil.getEncoding(zhongcaijigou)), "UTF-8");
			zhengyichuli = zhengyichuli_ok+";"+zhongcaijigou;
			
		}else{
			zhengyichuli = zhengyichuli_ok;
		}
		allproperty.setZhengyichuli(zhengyichuli);
		//投保附件
		String toubaofujians[] = request.getParameterValues("toubaofujian");
		String toubaofujian = "";
		boolean mark = false;
		if(toubaofujians!=null){//toubaofujian is not null.
			for(int i=0;i<toubaofujians.length;i++){
				toubaofujian = toubaofujian+";"+toubaofujians[i];
				if(toubaofujians[i].equals("qita")){
					mark = true;
				}
			}
			if(mark){
				String qita = request.getParameter("qita");
				qita = new String(qita.getBytes(StringUtil.getEncoding(qita)), "UTF-8");
				toubaofujian = toubaofujian+";"+qita;
				
				int toubaofujianshuliang = Integer.parseInt(request.getParameter("toubaofujianshuliang"));
				allproperty.setToubaofujianshuliang(toubaofujianshuliang);
			}else{
				toubaofujian = toubaofujian+";none";
			}
		}
		
		allproperty.setToubaofujian(toubaofujian);//toubaofujian="", or "some;none";
		
		String shifoutouguo = request.getParameter("shifoutouguo");
		if(shifoutouguo.equals("shi")){
			String baoxiandanhao = request.getParameter("baoxiandanhao");
			baoxiandanhao = new String(baoxiandanhao.getBytes(StringUtil.getEncoding(baoxiandanhao)), "UTF-8");
			shifoutouguo = shifoutouguo + ";" + baoxiandanhao;
		}else{
			shifoutouguo = shifoutouguo + ";none";
		}
		allproperty.setShifoutouguo(shifoutouguo);
		//理赔记录
		String lipeijilu = request.getParameter("lipeijilu");
		if(lipeijilu.equals("you")){
			String chuxianshijian = request.getParameter("chuxianshijian");
			String sunshijine = request.getParameter("sunshijine");
			String chuxianyuanyin = request.getParameter("chuxianyuanyin");
			String gaijincuoshi = request.getParameter("gaijincuoshi");
			
			chuxianyuanyin = new String(chuxianyuanyin.getBytes(StringUtil.getEncoding(chuxianyuanyin)), "UTF-8");
			gaijincuoshi = new String(gaijincuoshi.getBytes(StringUtil.getEncoding(gaijincuoshi)), "UTF-8");
			lipeijilu = lipeijilu + ";" + chuxianshijian+";"+sunshijine+";"+chuxianyuanyin+";"+gaijincuoshi;
		}else{
			lipeijilu = lipeijilu + ";none;none;none;none";
		}
		allproperty.setLipeijilu(lipeijilu);
		String username = (String)request.getSession().getAttribute("name");
		allproperty.setUsername(username);
		String policyname = "财产一切险投保单";
		policyname = new String(policyname.getBytes(StringUtil.getEncoding(policyname)), "GB2312");
		
		PolicyService service = new PolicyService();
		if(service.addAllProperty(allproperty)){
			this.getServletContext()
			.getRequestDispatcher("/servlet/AddPolicyIndexServlet?policyname="+policyname)
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
