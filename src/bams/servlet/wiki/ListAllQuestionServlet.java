package bams.servlet.wiki;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Question;
import bams.service.QuestionService;

public class ListAllQuestionServlet extends HttpServlet {

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
		String page = request.getParameter("page");
		String str_start = request.getParameter("start");
		int start = 0;
		if(null!=str_start){
			start = Integer.parseInt(str_start);
		}
		QuestionService service = new QuestionService();
		int mark = 0;
		if(page.equals("replyed")){
			mark = 1;
		}else if(page.equals("unreply")){
			mark = 0;
		}
		List<Question> questionlist = service.listAllQuestion(start,mark);
		request.setAttribute("questionlist", questionlist);
		if(null==page||page.equals("")){
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}else if(page.equals("replyed")){
			request.getRequestDispatcher("/jsp/manage/replyed_question.jsp?start="+start)
			.forward(request, response);
		}else if(page.equals("unreply")){
		request.getRequestDispatcher("/jsp/manage/unreply_question.jsp?start="+start)
		.forward(request, response);
		}else{
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
