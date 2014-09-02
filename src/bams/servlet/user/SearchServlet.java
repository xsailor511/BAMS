package bams.servlet.user;

import java.io.IOException;
import java.io.PrintWriter;
//import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import bams.entity.User;
import bams.service.UserService;

public class SearchServlet extends HttpServlet {

	/**
	 * @author xsailor
	 */
	private static final long serialVersionUID = 221103333257672689L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		System.out.println("search-user name----"+name);
		UserService userService=new UserService();
		PrintWriter writer = response.getWriter();
		try {
			//List<User> user_list = userService.listAllUser();
			User user = userService.getUser(name);
			if(user.getRole()==5){//不能检索管理员账户
				writer.write("none");
			}else{
				Gson gson = new Gson();
				String json = gson.toJson(user);//user in json string.
				System.out.println("json-user----"+json);
				writer.write(json);
			}
			
		} catch (Exception e) {
			writer.write("none");
		}finally{
			writer.flush();
			writer.close();
		}
		
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
	}

}
