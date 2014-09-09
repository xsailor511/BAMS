package bams.servlet.policy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Freight;
import bams.service.PolicyService;
import bams.util.StringUtil;

public class AddFreightServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AddFreightServlet() {
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
		Freight freight = new Freight();
		//PrintWriter writer = response.getWriter();
		String fax_from = request.getParameter("fax_from");
		String fax_to = request.getParameter("fax_to");
		String beibaoxianren = request.getParameter("beibaoxianren");
		String fapiaohao = request.getParameter("fapiaohao");
		String fapiaoriqi = request.getParameter("fapiaoriqi");
		String jinkouhetonghao = request.getParameter("jinkouhetonghao");
		String xinyongzhenghao = request.getParameter("xinyongzhenghao");
		
		fax_from = new String(fax_from.getBytes(StringUtil.getEncoding(fax_from)), "UTF-8");
		fax_to = new String(fax_to.getBytes(StringUtil.getEncoding(fax_to)), "UTF-8");
		beibaoxianren = new String(beibaoxianren.getBytes(StringUtil.getEncoding(beibaoxianren)), "UTF-8");
		fapiaohao = new String(fapiaohao.getBytes(StringUtil.getEncoding(fapiaohao)), "UTF-8");
		fapiaoriqi = new String(fapiaoriqi.getBytes(StringUtil.getEncoding(fapiaoriqi)), "UTF-8");
		jinkouhetonghao = new String(jinkouhetonghao.getBytes(StringUtil.getEncoding(jinkouhetonghao)), "UTF-8");
		xinyongzhenghao = new String(xinyongzhenghao.getBytes(StringUtil.getEncoding(xinyongzhenghao)), "UTF-8");
		int baozhuangshuliang = Integer.parseInt(request.getParameter("baozhuangshuliang"));
		
		freight.setFax_from(fax_from);
		freight.setFax_to(fax_to);
		freight.setBeibaoxianren(beibaoxianren);
		freight.setFapiaohao(fapiaohao);
		freight.setFapiaoriqi(fapiaoriqi);
		freight.setJinkouhetonghao(jinkouhetonghao);
		freight.setXinyongzhenghao(xinyongzhenghao);
		freight.setBaozhuangshuliang(baozhuangshuliang);
		
		String baoxianhuowumingcheng = request.getParameter("baoxianhuowumingcheng");
		String biaoji = request.getParameter("biaoji");
		String jiagetiaojian = request.getParameter("jiagetiaojian");
		double fapiaojine = Double.parseDouble(request.getParameter("fapiaojine"));
		double baoxianjine = Double.parseDouble(request.getParameter("baoxianjine"));
		double feilv = Double.parseDouble(request.getParameter("feilv"));
		double baoxianfei = Double.parseDouble(request.getParameter("baoxianfei"));
		
		baoxianhuowumingcheng = new String(baoxianhuowumingcheng.getBytes(StringUtil.getEncoding(baoxianhuowumingcheng)), "UTF-8");
		biaoji = new String(biaoji.getBytes(StringUtil.getEncoding(biaoji)), "UTF-8");
		jiagetiaojian = new String(jiagetiaojian.getBytes(StringUtil.getEncoding(jiagetiaojian)), "UTF-8");
		
		freight.setBaoxianhuowumingcheng(baoxianhuowumingcheng);
		freight.setBiaoji(biaoji);
		freight.setJiagetiaojian(jiagetiaojian);
		freight.setFapiaojine(fapiaojine);
		freight.setBaoxianjine(baoxianjine);
		freight.setFeilv(feilv);
		freight.setBaoxianfei(baoxianfei);
		
		String chuanming = request.getParameter("chuanming");
		String jianzaonianfen = request.getParameter("jianzaonianfen");
		String chuanqi = request.getParameter("chuanqi");
		String qiyunriqi = request.getParameter("qiyunriqi");
		String qiyungang = request.getParameter("qiyungang");
		String via = request.getParameter("via");
		String mudigang = request.getParameter("mudigang");
		String chengbaoxianbie = request.getParameter("chengbaoxianbie");
		String note = request.getParameter("note");
		String toubaorenqianzhang = request.getParameter("toubaorenqianzhang");
		String tianbiaoriqi = request.getParameter("tianbiaoriqi");
		
		chuanming = new String(chuanming.getBytes(StringUtil.getEncoding(chuanming)), "UTF-8");
		jianzaonianfen = new String(jianzaonianfen.getBytes(StringUtil.getEncoding(jianzaonianfen)), "UTF-8");
		chuanqi = new String(chuanqi.getBytes(StringUtil.getEncoding(chuanqi)), "UTF-8");
		qiyunriqi = new String(qiyunriqi.getBytes(StringUtil.getEncoding(qiyunriqi)), "UTF-8");
		qiyungang = new String(qiyungang.getBytes(StringUtil.getEncoding(qiyungang)), "UTF-8");
		via = new String(via.getBytes(StringUtil.getEncoding(via)), "UTF-8");
		mudigang = new String(mudigang.getBytes(StringUtil.getEncoding(mudigang)), "UTF-8");
		chengbaoxianbie = new String(chengbaoxianbie.getBytes(StringUtil.getEncoding(chengbaoxianbie)), "UTF-8");
		note = new String(note.getBytes(StringUtil.getEncoding(note)), "UTF-8");
		toubaorenqianzhang = new String(toubaorenqianzhang.getBytes(StringUtil.getEncoding(toubaorenqianzhang)), "UTF-8");
		tianbiaoriqi = new String(tianbiaoriqi.getBytes(StringUtil.getEncoding(tianbiaoriqi)), "UTF-8");
		
		freight.setChuanming(chuanming);
		freight.setJianzaonianfen(jianzaonianfen);
		freight.setChuanqi(chuanqi);
		freight.setQiyunriqi(qiyunriqi);
		freight.setQiyungang(qiyungang);
		freight.setVia(via);
		freight.setMudigang(mudigang);
		freight.setChengbaoxianbie(chengbaoxianbie);
		freight.setNote(note);
		freight.setToubaorenqianzhang(toubaorenqianzhang);
		freight.setTianbiaoriqi(tianbiaoriqi);
		
		String username = (String)request.getSession().getAttribute("name");
		freight.setUsername(username);
		
		String policyname = "货运险投保单";
		policyname = new String(policyname.getBytes(StringUtil.getEncoding(policyname)), "GB2312");
		
		PolicyService service = new PolicyService();
		if(service.addFreight(freight)){
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
