package cart;
	
public class cartVO {
	// 데이터베이스에서 가져온 값들을 저장 ?
	private String customerId;
	private Integer productId;
	private String productName;
	private Integer price;
	private Integer salePercent;
	private String imagePath;
	private Integer remain;
	private String companyId;
	private Integer quantity;
	

	private Integer salePrice;
	private Integer deliveryPrice;
	private Integer totalPrice;
	private Integer count;
	
	
	

	public cartVO(String customerId, Integer productId, String productName, Integer price, Integer salePercent,
			String imagePath, Integer remain, String companyId, Integer quantity, Integer salePrice,
			Integer deliveryPrice, Integer totalPrice, Integer count) {
		this.customerId = customerId;
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.salePercent = salePercent;
		this.imagePath = imagePath;
		this.remain = remain;
		this.companyId = companyId;
		this.quantity = quantity;
		this.salePrice = salePrice;
		this.deliveryPrice = deliveryPrice;
		this.totalPrice = totalPrice;
		this.count = count;
	}

	

	public String getCustomerId() {
		return customerId;
	}



	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}



	public Integer getProductId() {
		return productId;
	}



	public void setProductId(Integer productId) {
		this.productId = productId;
	}



	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public Integer getPrice() {
		return price;
	}



	public void setPrice(Integer price) {
		this.price = price;
	}



	public Integer getSalePercent() {
		return salePercent;
	}



	public void setSalePercent(Integer salePercent) {
		this.salePercent = salePercent;
	}



	public String getImagePath() {
		return imagePath;
	}



	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}



	public Integer getRemain() {
		return remain;
	}



	public void setRemain(Integer remain) {
		this.remain = remain;
	}



	public String getCompanyId() {
		return companyId;
	}



	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}



	public Integer getQuantity() {
		return quantity;
	}



	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}



	public Integer getSalePrice() {
		return salePrice;
	}



	public void setSalePrice(Integer salePrice) {
		this.salePrice = salePrice;
	}



	public Integer getDeliveryPrice() {
		return deliveryPrice;
	}



	public void setDeliveryPrice(Integer deliveryPrice) {
		this.deliveryPrice = deliveryPrice;
	}



	public Integer getTotalPrice() {
		return totalPrice;
	}



	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}



	public Integer getCount() {
		return count;
	}



	public void setCount(Integer count) {
		this.count = count;
	}



	@Override
	public String toString() {
		return "cartVO [customerId=" + customerId + ", productId=" + productId + ", productName=" + productName
				+ ", price=" + price + ", salePercent=" + salePercent + ", imagePath=" + imagePath + ", remain="
				+ remain + ", companyId=" + companyId + ", quantity=" + quantity + ", salePrice=" + salePrice
				+ ", deliveryPrice=" + deliveryPrice + ", totalPrice=" + totalPrice + ", count=" + count + "]";
	}
	
	
	

}
