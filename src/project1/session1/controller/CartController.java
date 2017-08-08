/**
* <h1>CartController</h1>
* when user adds any item to the cart it will handle that request
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project1.session1.bean.CartBean;
import project1.session1.dao.CartDao;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs = request.getSession();
		String userId = (String)hs.getAttribute("userId");
		String productId = request.getParameter("productId");
		int qty = Integer.parseInt(request.getParameter("qty"));
		
		response.setContentType("text/html");
		CartDao dao = new CartDao();
		
		CartBean cartBean = new CartBean();
		cartBean.setUserId(userId);
		cartBean.setProductId(productId);
		cartBean.setQty(qty);
		
		dao.insertCart(cartBean);
		RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
		rd.include(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
