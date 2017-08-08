/**
* <h1>OrdersBean</h1>
* Bean Class corresponding to the Orders table of the database
* it deals with the order placed by any user
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.bean;

public class OrdersBean {
	private String orderId;
	private String userId;
	private String productId;
	private int qty;
	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
}
