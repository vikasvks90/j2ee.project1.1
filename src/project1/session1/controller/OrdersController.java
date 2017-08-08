/**
* <h1>OrdersController</h1>
* will show the order details, user can place or cancel the order further
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
import project1.session1.bean.OrdersBean;
import project1.session1.dao.CartDao;
import project1.session1.dao.OrdersDao;


/**
 * Servlet implementation class OrdersController
 */
@WebServlet("/OrdersController")
public class OrdersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrdersController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	if (request.getParameter("submit1") != null) {
    	    // Checkout and procede to orders
    		HttpSession hs = request.getSession();
    		String userId = (String)hs.getAttribute("userId");
    		String productId[] = request.getParameterValues("select");
    		String qty[] = request.getParameterValues("qty");
    		
    		
    		response.setContentType("text/html");
    		System.out.println("Inside Orders Cart");
    		System.out.println(userId);
    		System.out.println("product: "+request.getParameterValues("select"));
    		System.out.println("qty: "+request.getParameterValues("qty"));
    		OrdersDao ordersDao = new OrdersDao();
    		
    		OrdersBean ordersBean;
    		for(int i=0;i<productId.length;i++){
    			ordersBean = new OrdersBean();
    			ordersBean.setUserId(userId);
    			ordersBean.setProductId(productId[i]);
    			ordersBean.setQty(Integer.parseInt(qty[i]));
    			ordersDao.insertOrders(ordersBean);
    		}
    		
    		CartDao cartDao = new CartDao();
    		
    		CartBean cartBean;
    		for(int i=0;i<productId.length;i++){
    			cartBean = new CartBean();
    			cartBean.setUserId(userId);
    			cartBean.setProductId(productId[i]);
    			cartDao.deleteCart(cartBean);
    		}
    		
    		RequestDispatcher rd = request.getRequestDispatcher("/orders.jsp");
    		rd.include(request, response);
    		
    		
    	} else if (request.getParameter("submit2") != null) {
    		// delete item from cart
    		HttpSession hs = request.getSession();
    		String userId = (String)hs.getAttribute("userId");
    		String productId[] = request.getParameterValues("select");
    			
    		response.setContentType("text/html");
    		System.out.println("Inside Orders Cart");
    		System.out.println(userId);
    		System.out.println("product: "+request.getParameterValues("select"));
    	
    		
    		CartDao cartDao = new CartDao();
    		
    		CartBean cartBean;
    		for(int i=0;i<productId.length;i++){
    			cartBean = new CartBean();
    			cartBean.setUserId(userId);
    			cartBean.setProductId(productId[i]);
    			cartDao.deleteCart(cartBean);
    		}
    		
    		RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
    		rd.include(request, response);
    	}
    	
    	else if (request.getParameter("submit3") != null) {
    		// redirect to home page
    		RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
    		rd.include(request, response);
    	}
    	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
