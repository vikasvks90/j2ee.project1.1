/**
* <h1>BillingController</h1>
* will show the the final billing details to the user
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

import project1.session1.bean.BillingBean;
import project1.session1.bean.OrdersBean;
import project1.session1.dao.BillingDao;
import project1.session1.dao.OrdersDao;


/**
 * Servlet implementation class OrdersController
 */
@WebServlet("/BillingController")
public class BillingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BillingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	if (request.getParameter("submit1") != null) {
    	    // cancel order
    		HttpSession hs = request.getSession();
    		String userId = (String)hs.getAttribute("userId");
    			
    		OrdersDao ordersDao = new OrdersDao();
    		
    		OrdersBean ordersBean = new OrdersBean();
    		ordersBean = new OrdersBean();
    		ordersBean.setUserId(userId);
    		ordersDao.deleteOrders(ordersBean);
    		
    		RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
    		rd.include(request, response);
    		
    		
    	} else if (request.getParameter("submit2") != null) {
    		// place order
        	HttpSession hs = request.getSession();
    		String userId = (String)hs.getAttribute("userId");
    		int totalBill = (int) Double.parseDouble(request.getParameter("totalBill"));
    		
    		
    		response.setContentType("text/html");
    		System.out.println("Inside Billing Cart");
    		System.out.println(userId);
    		System.out.println(request.getParameter("totalBill"));
    		BillingDao dao = new BillingDao();
    		
    		BillingBean billingBean = new BillingBean();
    		billingBean.setUserId(userId);
    		billingBean.setTotalBill(totalBill);
    		dao.insertBill(billingBean);
    		
    		
    		OrdersDao ordersDao = new OrdersDao();
    		
    		OrdersBean ordersBean = new OrdersBean();
    		ordersBean = new OrdersBean();
    		ordersBean.setUserId(userId);
    		ordersDao.deleteOrders(ordersBean);
    		
    		RequestDispatcher rd = request.getRequestDispatcher("/billing.jsp");
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
