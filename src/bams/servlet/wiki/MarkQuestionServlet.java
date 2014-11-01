package bams.servlet.wiki;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.service.QuestionService;

public class MarkQuestionServlet extends HttpServlet {

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
		String str_id = request.getParameter("question_id");
		int question_id = 0;
		if(str_id!=null){
			question_id = Integer.parseInt(str_id);
		}
		QuestionService service = new QuestionService();
		if(service.markQuestion(question_id)){
			String charencoding = request.getCharacterEncoding();
			String charencoding2 = response.getCharacterEncoding();
			System.out.println("request char encoding:"+charencoding);
			System.out.println("response char encoding:"+charencoding2);
			request.getRequestDispatcher("/success.jsp").forward(request, response);
		}else{
			request.setAttribute("errMsg", "修改问题状态失败");
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

}
