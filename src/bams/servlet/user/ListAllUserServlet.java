package bams.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import bams.entity.User;
import bams.service.UserService;

public class ListAllUserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse response)
			throws ServletException, IOException {
		UserService service = new UserService();
		List<User> list;
		PrintWriter writer = response.getWriter();
		try {
			list = service.listAllUser();
			Gson gson  = new Gson();
			if(null==list){
				writer.write("none");
			}else{
				String json = gson.toJson(list);
				writer.write(json);
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

		writer.flush();
		writer.close();
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(req, response);
	}

	
}
