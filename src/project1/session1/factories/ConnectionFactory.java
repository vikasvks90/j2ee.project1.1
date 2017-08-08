/**
* <h1>ConnectionFactory</h1>
* ConnectionFactory class to get the connection from the database
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.factories;

import java.sql.*;
public class ConnectionFactory {
	public static Connection con = null;
			
	public static Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String username = "vikas";
			String password = "vikas";
			con = DriverManager.getConnection(dbURL, username, password);
			} catch (Exception e) {
			System.out.println("Error in connection factory");
			e.printStackTrace();
			}
		return con;
	}
}