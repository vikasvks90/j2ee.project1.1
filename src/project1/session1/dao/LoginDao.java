/**
* <h1>LoginDao</h1>
* will interact with users table in the database and will perform CRUD operations accordingly
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import project1.session1.bean.UsersBean;
import project1.session1.factories.ConnectionFactory;

public class LoginDao {
	Connection con = null;
	int rowCount = 0;
	String userName = null;
	public String validateUser(UsersBean usersBean){
		try {
			//if(con!= null && con.isClosed())
			con = ConnectionFactory.getConnection();
			PreparedStatement pst = con.prepareStatement("select * from users where user_id = ? and password = ?");    
			pst.setString(1,usersBean.getUserId());  
			pst.setString(2,usersBean.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next()){
				userName = rs.getString(2);
				rowCount++;
			}
			System.out.println("RowCount is: "+rowCount);
			rs.close();
			pst.close();
		} catch (Exception e) {
			System.out.println("Error while selecting from users");
			e.printStackTrace();
		} finally{
			try {
				con.close();
			} catch (SQLException e) {
				System.out.println("Error while closing the connection");
				e.printStackTrace();
			}
		}
		if(rowCount > 0){
			return userName;
		}
		return null;
	}
}
