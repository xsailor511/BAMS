package bams.servlet.wiki;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Question;
import bams.service.QuestionService;

public class ListQuestionByUserServlet extends HttpServlet {

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

		String username = request.getParameter("key");
		String str_start = request.getParameter("start");
		String tag = request.getParameter("tag");
		int start = 0;
		if(null!=str_start){
			start = Integer.parseInt(str_start);
		}
		int mark = 0;
		if(tag.equals("unreply")){
			mark = 0;
		}else if(tag.equals("replyed")){
			mark = 1;
		}else if(tag.equals("query")){
			mark = 0;
		}
		QuestionService service = new QuestionService();
		List<Question> questionlist = service.listQuestionByUser(username, start,mark);
		request.setAttribute("questionlist", questionlist);
		if(tag.equals("query")){//管理员查询用
			String result = "";
			if(questionlist.size()>0){
				result = "some";
			}else{
				result = "none";
			}
			
			request.getRequestDispatcher("/jsp/manage/query_question.jsp?key="+username+"&result="+result)
			.forward(request, response);
		}else if(tag.equals("unreply")){//用户查看未回复的咨询
			request.getRequestDispatcher("/jsp/user/unreply.jsp?start="+start)
			.forward(request, response);
		}else if(tag.equals("replyed")){//用户查看已回复的咨询
			request.getRequestDispatcher("/jsp/user/replyed.jsp?start="+start)
			.forward(request, response);
		}else{
			request.getRequestDispatcher("/error.jsp")
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

}
