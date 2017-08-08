/**
* <h1>CartBean</h1>
* Bean Class corresponding to the Cart table of the database
* it deals with the cart items of any user
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.bean;

public class CartBean {
	private String cartId;
	private String userId;
	private String productId;
	private int qty;
	public String getCartId() {
		return cartId;
	}
	public void setCartId(String cartId) {
		this.cartId = cartId;
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
