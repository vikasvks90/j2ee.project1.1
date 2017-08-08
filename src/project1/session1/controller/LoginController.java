/**
* <h1>LoginController</h1>
* handles login requests for the already registered users
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project1.session1.bean.UsersBean;
import project1.session1.dao.LoginDao;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("id");
        String password = request.getParameter("password");
        
        response.setContentType("text/html");
		UsersBean usersBean = new UsersBean();
		usersBean.setUserId(userId);
		usersBean.setPassword(password);
		System.out.println("Controller userId: "+usersBean.getUserId());
		System.out.println("Controller password: "+usersBean.getPassword());
		LoginDao dao = new LoginDao();
		try{
			String userName = dao.validateUser(usersBean);
			System.out.println("User Name is: "+userName);
			if(!userName.equals("")){
				HttpSession hs = request.getSession();
				hs.setAttribute("userName",userName);
				hs.setAttribute("userId",userId);
				hs.setMaxInactiveInterval(30*60);
				RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
				rd.forward(request, response);
			}
			else{
				PrintWriter out = response.getWriter();
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				out.println("<table align =\"center\"><tr><td><font color=red>Either userid or password is wrong.</font></td></tr></table>");
				rd.include(request, response);
			}
		}catch(Exception e){
			PrintWriter out = response.getWriter();
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
			out.println("<table align =\"center\"><tr><td><font color=red>Either userid or password is wrong.</font></td></tr></table>");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
