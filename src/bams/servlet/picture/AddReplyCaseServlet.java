package bams.servlet.picture;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.ReplyCase;
import bams.service.PictureService;
import bams.service.ReplyCaseService;
import bams.util.StringUtil;

public class AddReplyCaseServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
		String username = request.getParameter("username");
		String content = request.getParameter("reply");
		String scase_id = request.getParameter("case_id");
		int case_id = Integer.parseInt(scase_id);
		content = new String(content.getBytes(StringUtil.getEncoding(content)), "UTF-8");
		ReplyCase rc = new ReplyCase();
		rc.setCase_id(case_id);
		rc.setContent(content);
		rc.setUsername(username);
		ReplyCaseService rcs = new ReplyCaseService();
		PictureService ps = new PictureService();
		if(ps.getCase(case_id).getMark()==1){
			request.setAttribute("errMsg", "您已经回复过该问题了，每个问题只能回复一次");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}else if(rcs.addReplyCase(rc)){
			request.getRequestDispatcher("/servlet/MarkLiPeiServlet?case_id="+case_id).forward(request, response);
		}else{
			request.setAttribute("errMsg", "添加回复失败");
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
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
