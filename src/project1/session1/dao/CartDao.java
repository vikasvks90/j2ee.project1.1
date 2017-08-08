/**
* <h1>CartDao</h1>
* will interact with cart table in the database and will perform CRUD operations accordingly
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.dao;

import java.sql.*;

import project1.session1.bean.CartBean;
import project1.session1.factories.ConnectionFactory;


public class CartDao {
	Connection con = null;
	public String insertCart(CartBean cartBean){
		try {
			
			con = ConnectionFactory.getConnection();
			System.out.println("Inside Cart Dao");
			System.out.println("Connection is: "+con);
			
			PreparedStatement pst = con.prepareStatement("insert into cart(cart_id,user_id,product_id,qty) values(SEQ_CART.NEXTVAL,?,?,?)");
		    pst.setString(1,cartBean.getUserId());
		    pst.setString(2,cartBean.getProductId());
		    pst.setInt(3,cartBean.getQty());
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
	
	public String deleteCart(CartBean cartBean){
		try {
			
			con = ConnectionFactory.getConnection();
			System.out.println("Inside Cart Dao delete cart");
			System.out.println("Connection is: "+con);
			
			PreparedStatement pst = con.prepareStatement("delete from cart where user_id=? and product_id=?");
		    pst.setString(1,cartBean.getUserId());
		    pst.setString(2,cartBean.getProductId());
			pst.executeUpdate();
			
			pst.close();
		} catch (Exception e) {
			System.out.println("Error while deleting from cart");
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
