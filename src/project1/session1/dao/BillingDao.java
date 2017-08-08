/**
* <h1>BillingDao</h1>
* will interact with billing table in the database and will perform CRUD operations accordingly
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.dao;

import java.sql.*;

import project1.session1.bean.BillingBean;
import project1.session1.factories.ConnectionFactory;


public class BillingDao {
	Connection con = null;
	public String insertBill(BillingBean billingBean){
		try {
			con = ConnectionFactory.getConnection();
			System.out.println("Inside Billing Dao");
			System.out.println("Connection is: "+con);
			
			PreparedStatement pst = con.prepareStatement("insert into billing(billing_id,user_id,total_bill) values (SEQ_BILLING.NEXTVAL,?,?)");
		    pst.setString(1,billingBean.getUserId());
		    pst.setInt(2,billingBean.getTotalBill());
			pst.executeUpdate();
			pst.close();
		} catch (Exception e) {
			System.out.println("Error while inserting into billing");
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
