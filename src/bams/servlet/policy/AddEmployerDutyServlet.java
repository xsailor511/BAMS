package bams.servlet.policy;

import java.io.IOException;





import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.EmployerDuty;
import bams.service.PolicyService;
import bams.util.StringUtil;

public class AddEmployerDutyServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddEmployerDutyServlet() {
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

		EmployerDuty employerduty= new EmployerDuty();

		String toubaorenmingcheng = request.getParameter("toubaorenmingcheng");
		String toubaorendizhi = request.getParameter("toubaorendizhi");
		String toubaorenlianxiren = request.getParameter("toubaorenlianxiren");
		String toubaorendianhua = request.getParameter("toubaorendianhua");
		String beibaoxianrenmingcheng = request.getParameter("beibaoxianrenmingcheng");
		String beibaoxianrendizhi = request.getParameter("beibaoxianrendizhi");
		String yingyexingzhi = request.getParameter("yingyexingzhi");
		String beizuzhijigoudaima = request.getParameter("beizuzhijigoudaima");
		String canjiashehuibaoxian= request.getParameter("canjiashehuibaoxian");
		String tebieyueding = request.getParameter("tebieyueding");
		String sifaguanxia = request.getParameter("sifaguanxia");
		String toubaorenqianzhang = request.getParameter("toubaorenqianzhang");
		
		double baoxianfei = Double.parseDouble(request.getParameter("baoxianfei"));
		String start_time = request.getParameter("start_time");
		String end_time = request.getParameter("end_time");
		String fufeiriqi = request.getParameter("fufeiriqi");
		String toubaoriqi = request.getParameter("toubaoriqi");
		
		toubaorenmingcheng = new String(toubaorenmingcheng.getBytes(StringUtil.getEncoding(toubaorenmingcheng)), "UTF-8");
		toubaorendizhi = new String(toubaorendizhi.getBytes(StringUtil.getEncoding(toubaorendizhi)), "UTF-8");
		toubaorenlianxiren = new String(toubaorenlianxiren.getBytes(StringUtil.getEncoding(toubaorenlianxiren)), "UTF-8");
		toubaorendianhua = new String(toubaorendianhua.getBytes(StringUtil.getEncoding(toubaorendianhua)), "UTF-8");
		beibaoxianrenmingcheng = new String(beibaoxianrenmingcheng.getBytes(StringUtil.getEncoding(beibaoxianrenmingcheng)), "UTF-8");
		beibaoxianrendizhi = new String(beibaoxianrendizhi.getBytes(StringUtil.getEncoding(beibaoxianrendizhi)), "UTF-8");
		yingyexingzhi = new String(yingyexingzhi.getBytes(StringUtil.getEncoding(yingyexingzhi)), "UTF-8");
		beizuzhijigoudaima = new String(beizuzhijigoudaima.getBytes(StringUtil.getEncoding(beizuzhijigoudaima)), "UTF-8");
		canjiashehuibaoxian = new String(canjiashehuibaoxian.getBytes(StringUtil.getEncoding(canjiashehuibaoxian)), "UTF-8");
		tebieyueding = new String(tebieyueding.getBytes(StringUtil.getEncoding(tebieyueding)), "UTF-8");
		sifaguanxia = new String(sifaguanxia.getBytes(StringUtil.getEncoding(sifaguanxia)), "UTF-8");
		toubaorenqianzhang = new String(toubaorenqianzhang.getBytes(StringUtil.getEncoding(toubaorenqianzhang)), "UTF-8");
		start_time = new String(start_time.getBytes(StringUtil.getEncoding(start_time)), "UTF-8");
		end_time = new String(end_time.getBytes(StringUtil.getEncoding(end_time)), "UTF-8");
		fufeiriqi = new String(fufeiriqi.getBytes(StringUtil.getEncoding(fufeiriqi)), "UTF-8");
		toubaoriqi = new String(toubaoriqi.getBytes(StringUtil.getEncoding(toubaoriqi)), "UTF-8");
		
		boolean mark1 = false;
		if(canjiashehuibaoxian.equals("shi")){
			mark1 = true;
		}else{
			mark1 = false;
		}
		
		employerduty.setToubaorenmingcheng(toubaorenmingcheng);
		employerduty.setToubaorendizhi(toubaorendizhi);
		employerduty.setToubaorenlianxiren(toubaorenlianxiren);
		employerduty.setToubaorendianhua(toubaorendianhua);
		employerduty.setBeibaoxianrenmingcheng(beibaoxianrenmingcheng);
		employerduty.setBeibaoxianrendizhi(beibaoxianrendizhi);
		employerduty.setYingyexingzhi(yingyexingzhi);
		employerduty.setBeizuzhijigoudaima(beizuzhijigoudaima);
		employerduty.setTebieyueding(tebieyueding);
		employerduty.setSifaguanxia(sifaguanxia);
		employerduty.setToubaorenqianzhang(toubaorenqianzhang);
		employerduty.setBaoxianfei(baoxianfei);
		employerduty.setCanjiashehuibaoxian(mark1);
		employerduty.setStart_time(start_time);
		employerduty.setEnd_time(end_time);
		employerduty.setFufeiriqi(fufeiriqi);
		employerduty.setToubaoriqi(toubaoriqi);
	
		String guyuangongzhongs[] = request.getParameterValues("guyuangongzhong");
		String guyuanrenshus[] = request.getParameterValues("guyuanrenshu");
		String peichangsiwangs[] = request.getParameterValues("peichangsiwang");
		String peichangyiliaos[] = request.getParameterValues("peichangyiliao");
		String guyuangongzhong = "";
		String guyuanrenshu= "";
		String peichangsiwang= "";
		String peichangyiliao= "";
		
		for(int i=0;i<guyuangongzhongs.length;i++){
			if(guyuangongzhongs[i].trim().equals("")){
				guyuangongzhong = guyuangongzhong+";none";
				guyuanrenshu = guyuanrenshu+";none";
				peichangsiwang = peichangsiwang+";none";
				peichangyiliao = peichangyiliao+";none";
			}else{
				String temp = new String(guyuangongzhongs[i].getBytes(StringUtil.getEncoding(guyuangongzhongs[i])), "UTF-8");
				
				guyuangongzhong = guyuangongzhong+";" + temp;
				guyuanrenshu = guyuanrenshu+";"+guyuanrenshus[i];
				peichangsiwang = peichangsiwang+";"+peichangsiwangs[i];
				peichangyiliao = peichangyiliao+";"+peichangyiliaos[i];
			}
		}
		employerduty.setGuyuangongzhong(guyuangongzhong);
		employerduty.setGuyuanrenshu(guyuanrenshu);
		employerduty.setPeichangsiwang(peichangsiwang);
		employerduty.setPeichangyiliao(peichangyiliao);
		
		String zhengyichuli = "";
		String zhengyichuli_ok = request.getParameter("zhengyichuli");
		if(zhengyichuli_ok.equals("zhongcai")){
			String zhongcaijigou = request.getParameter("zhongcaijigou");
			zhongcaijigou = new String(zhongcaijigou.getBytes(StringUtil.getEncoding(zhongcaijigou)), "UTF-8");
			zhengyichuli = zhengyichuli_ok+";"+zhongcaijigou;
			
		}else{
			zhengyichuli = zhengyichuli_ok;
		}
		employerduty.setZhengyichuli(zhengyichuli);
		String username = (String)request.getSession().getAttribute("name");
		employerduty.setUsername(username);
		Date dt = new Date(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String   tag   =   sdf.format(dt);
        employerduty.setTag(tag);
		String policyname = "雇主责任险投保单";
		policyname = new String(policyname.getBytes(StringUtil.getEncoding(policyname)), "GB2312");
		String tablename = "employerduty";
		PolicyService service = new PolicyService();
		if(service.addEmployerDuty(employerduty)){
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
