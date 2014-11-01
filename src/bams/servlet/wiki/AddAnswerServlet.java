package bams.servlet.wiki;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Answer;
import bams.service.AnswerService;
import bams.service.QuestionService;
import bams.util.StringUtil;

public class AddAnswerServlet extends HttpServlet {

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
		String reply = request.getParameter("reply");
		reply = new String(reply.getBytes(StringUtil.getEncoding(reply)),"UTF-8");
		String username = request.getParameter("username");
		Answer answer = new Answer();
		answer.setQuestion_id(question_id);
		answer.setReply(reply);
		answer.setUsername(username);
		QuestionService service = new QuestionService();
		if(service.getQuestion(question_id).getMark()==1){
			request.setAttribute("errMsg", "您已经回复过该问题了，每个问题只能回复一次");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}else{
			AnswerService as = new AnswerService();
			if(as.addAnswer(answer)){
				
				request.getRequestDispatcher("/servlet/MarkQuestionServlet?question_id="+question_id).forward(request, response);
			}else{
				request.setAttribute("errMsg", "回复提交失败");
				request.getRequestDispatcher("/error.jsp").forward(request, response);
			}
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
