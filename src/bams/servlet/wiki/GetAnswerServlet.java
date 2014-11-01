package bams.servlet.wiki;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Answer;
import bams.entity.Question;
import bams.service.AnswerService;
import bams.service.QuestionService;

public class GetAnswerServlet extends HttpServlet {

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

		String str_id = request.getParameter("id");
		//System.out.println("======="+str_id);
		int id = 0;
		if(str_id!=null){
			id = Integer.parseInt(str_id);
		}
		AnswerService as = new AnswerService();
		QuestionService qs = new QuestionService();
		Question question = qs.getQuestion(id);
		Answer answer = new Answer();
		answer = as.getAnswer(id);
		
		request.setAttribute("answer", answer);
		request.setAttribute("question", question);
		request.getRequestDispatcher("/jsp/user/show_answer.jsp").forward(request, response);
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
