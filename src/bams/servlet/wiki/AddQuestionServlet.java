package bams.servlet.wiki;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Question;
import bams.service.QuestionService;
import bams.util.StringUtil;

public class AddQuestionServlet extends HttpServlet {

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

		String company = request.getParameter("company");
		String people = request.getParameter("people");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		//System.out.println(content);
		String title = request.getParameter("title");
		String fax = request.getParameter("fax");
		
		company = new String(company.getBytes(StringUtil.getEncoding(company)),"UTF-8");
		people = new String(people.getBytes(StringUtil.getEncoding(people)),"UTF-8");
		tel = new String(tel.getBytes(StringUtil.getEncoding(tel)),"UTF-8");
		email = new String(email.getBytes(StringUtil.getEncoding(email)),"UTF-8");
		content = new String(content.getBytes(StringUtil.getEncoding(content)),"UTF-8");
		title = new String(title.getBytes(StringUtil.getEncoding(title)),"UTF-8");
		fax = new String(fax.getBytes(StringUtil.getEncoding(fax)),"UTF-8");
		String username = (String)request.getSession().getAttribute("name");
		Question question = new Question();
		question.setCompany(company);
		question.setPeople(people);
		question.setTel(tel);
		question.setEmail(email);
		question.setContent(content);
		question.setUsername(username);
		question.setTitle(title);
		question.setFax(fax);
		QuestionService service = new QuestionService();
		if(service.addQuestion(question)){
			request.getRequestDispatcher("/success.jsp").forward(request, response);
		}else{
			request.setAttribute("errMsg", "咨询提交失败");
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
