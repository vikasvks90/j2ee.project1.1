/**
* <h1>RegisterController</h1>
* this will handle the new user registration requests
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project1.session1.bean.UsersBean;
import project1.session1.dao.RegisterDao;

/**
 * Servlet implementation class RegisterUser
 */
@WebServlet("/RegisterUser")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("id");
		String userName = request.getParameter("name");
		String password = request.getParameter("password");
		String userAddress = request.getParameter("address");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		RegisterDao dao = new RegisterDao();
		
		UsersBean usersBean = new UsersBean();
		usersBean.setUserId(userId);
		usersBean.setUserName(userName);
		usersBean.setPassword(password);
		usersBean.setAddress(userAddress);
		System.out.println("Hi password "+password);
		System.out.println("Controller userId: "+usersBean.getUserId());
		System.out.println("Controller userName: "+usersBean.getUserName());
		System.out.println("Controller userAddress: "+usersBean.getAddress());
		System.out.println("Controller password: "+usersBean.getPassword());
		
		String result = dao.insertUsers(usersBean);
		
		if(result.equals("success")){
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>User registration Success</title>");
			out.println("<meta http-equiv = \"refresh\" content=\"1; URL=login.jsp\" />");
			out.println("</head>");
			out.println("<body>");
			out.println("<h2>User registration Successful!!!!</h2>");
			out.println("</body>");
			out.println("</html>");
		}
		else if(result.equals("error")){
			out.println("Error while registering user!!!");
		}
	}


}
