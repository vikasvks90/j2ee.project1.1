/**
* <h1>UsersBean</h1>
* Bean Class corresponding to the Users table of the database
* it deals with the user details
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.bean;

public class UsersBean {
	private String userId;
	private String userName;
	private String password;
	private String address;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
