package bams.servlet.policy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Freight;
import bams.service.PolicyService;

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
		PrintWriter writer = response.getWriter();
		String fax_from = request.getParameter("fax_from");
		String fax_to = request.getParameter("fax_to");
		String beibaoxianren = request.getParameter("beibaoxianren");
		String fapiaohao = request.getParameter("fapiaohao");
		String fapiaoriqi = request.getParameter("fapiaoriqi");
		String jinkouhetonghao = request.getParameter("jinkouhetonghao");
		String xinyongzhenghao = request.getParameter("xinyongzhenghao");
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
		String toubaorenqiangzhang = request.getParameter("toubaorenqiangzhang");
		String tianbiaoriqi = request.getParameter("tianbiaoriqi");
		
		freight.setChuanming(chuanming);
		freight.setJianzaonianfen(jianzaonianfen);
		freight.setChuanqi(chuanqi);
		freight.setQiyunriqi(qiyunriqi);
		freight.setQiyungang(qiyungang);
		freight.setVia(via);
		freight.setMudigang(mudigang);
		freight.setChengbaoxianbie(chengbaoxianbie);
		freight.setNote(note);
		freight.setToubaorenqiangzhang(toubaorenqiangzhang);
		freight.setTianbiaoriqi(tianbiaoriqi);
		
		PolicyService service = new PolicyService();
		if(service.addFreight(freight)){
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
