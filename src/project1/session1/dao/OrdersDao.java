/**
* <h1>OrdersDao</h1>
* will interact with orders table in the database and will perform CRUD operations accordingly
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.dao;

import java.sql.*;
import project1.session1.bean.OrdersBean;
import project1.session1.factories.ConnectionFactory;


public class OrdersDao {
	Connection con = null;
	public String insertOrders(OrdersBean ordersbean){
		try {
			
			con = ConnectionFactory.getConnection();
			System.out.println("Inside Orders Dao");
			System.out.println("Connection is: "+con);
			
			PreparedStatement pst = con.prepareStatement("insert into orders(order_id,user_id,product_id,qty) values(SEQ_ORDERS.NEXTVAL,?,?,?)");
		    pst.setString(1,ordersbean.getUserId());
		    pst.setString(2,ordersbean.getProductId());
		    pst.setInt(3,ordersbean.getQty());
			pst.executeUpdate();
			
			pst.close();
		} catch (Exception e) {
			System.out.println("Error while inserting into cart");
			e.printStackTrace();
			return "error";
		} finally{
			try {
				
				con.close();
			} catch (SQLException e) {
				System.out.println("Error while closing the connection");
				e.printStackTrace();
			}
		}
		return "success";
	}
	
	public String deleteOrders(OrdersBean ordersbean){
		try {
			
			con = ConnectionFactory.getConnection();
			System.out.println("Inside Orders Dao delete orders");
			System.out.println("Connection is: "+con);
			
			PreparedStatement pst = con.prepareStatement("delete from orders where user_id = ?");
		    pst.setString(1,ordersbean.getUserId());
			pst.executeUpdate();
			
			pst.close();
		} catch (Exception e) {
			System.out.println("Error while inserting into cart");
			e.printStackTrace();
			return "error";
		} finally{
			try {
				
				con.close();
			} catch (SQLException e) {
				System.out.println("Error while closing the connection");
				e.printStackTrace();
			}
		}
		return "success";
	}
}
