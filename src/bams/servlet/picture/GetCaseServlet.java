package bams.servlet.picture;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bams.entity.Case;
import bams.entity.Picture;
import bams.service.PictureService;

public class GetCaseServlet extends HttpServlet {

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
		int id = 0;
		if(str_id!=null){
			id = Integer.parseInt(str_id);
		}
		PictureService service = new PictureService();
		Case mycase = service.getCase(id);
		request.setAttribute("mycase", mycase);
		List<Picture> picturelist = service.listPictureByBaoxiandanhao(mycase.getBaoxiandanhao());
		request.setAttribute("picturelist", picturelist);
		request.getRequestDispatcher("/jsp/manage/replylipeibaoan.jsp").forward(request, response);
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
