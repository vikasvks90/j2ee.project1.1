/**
* <h1>RegisterDao</h1>
* will interact with users table in the database and will perform CRUD operations accordingly
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.dao;

import java.sql.*;

import project1.session1.bean.UsersBean;
import project1.session1.factories.ConnectionFactory;

public class RegisterDao {
	Connection con = null;
	PreparedStatement pst = null;
	
	public String insertUsers(UsersBean usersBean){
		try {
			//if(con!= null && con.isClosed())
			con = ConnectionFactory.getConnection();
			pst = con.prepareStatement("insert into users(user_id,user_name,password,user_address) values(?,?,?,?)");
			System.out.println("userId: "+usersBean.getUserId());
			System.out.println("userName: "+usersBean.getUserName());
			System.out.println("userAddress: "+usersBean.getAddress());
			System.out.println("password: "+usersBean.getPassword());
		    pst.setString(1,usersBean.getUserId());
		    pst.setString(2,usersBean.getUserName());
		    pst.setString(3,usersBean.getPassword());
		    pst.setString(4,usersBean.getAddress());
			pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error while inserting into users");
			e.printStackTrace();
			return "error";
		} finally{
			try {
				pst.close();
				con.close();
			} catch (SQLException e) {
				System.out.println("Error while closing the connection");
				e.printStackTrace();
			}
		}
		return "success";
	}
}
