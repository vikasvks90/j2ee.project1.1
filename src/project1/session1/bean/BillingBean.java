/**
* <h1>BillingBean</h1>
* Bean Class corresponding to the Billing table of the database
* it deals with the billing details for any order
* @author  Vikas
* @version 1.0
* @since   2017-08-08 
*/
package project1.session1.bean;

public class BillingBean {
	private String billingId;
	private String userId;
	private int totalBill;
	public String getBillingId() {
		return billingId;
	}
	public void setBillingId(String billingId) {
		this.billingId = billingId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getTotalBill() {
		return totalBill;
	}
	public void setTotalBill(int totalBill) {
		this.totalBill = totalBill;
	}
	
}
