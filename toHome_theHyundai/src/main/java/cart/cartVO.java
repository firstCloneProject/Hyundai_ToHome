package cart;
	
public class cartVO {
	// 데이터베이스에서 가져온 값들을 저장 ?
	private String customerId;
	private Integer productId;
	private Integer quantity;
	private Integer price;
	private String salePrice;
	private String deliveryPrice;
	private String totalPrice;
	private Integer count;
	
	
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
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(String salePrice) {
		this.salePrice = salePrice;
	}

	public String getDeliveryPrice() {
		return deliveryPrice;
	}

	public void setDeliveryPrice(String deliveryPrice) {
		this.deliveryPrice = deliveryPrice;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}
	
	public cartVO(String customerId, Integer productId, Integer quantity) {
		this.customerId = customerId;
		this.productId = productId;
		this.quantity = quantity;
	}
	public cartVO(String customerId, Integer productId, Integer quantity, Integer price, String salePrice, String totalPrice, Integer count) {
		this.customerId = customerId;
		this.productId = productId;
		this.quantity = quantity;
		this.price = price;
		this.salePrice = salePrice;
		this.totalPrice = totalPrice;
		this.count = count;
	}
	@Override
	public String toString() {
		return "cartVO [customerId=" + customerId + ", productId=" + productId + ", quantity=" + quantity + ", price="
				+ price + ", salePrice=" + salePrice + ", deliveryPrice=" + deliveryPrice + ", totalPrice=" + totalPrice
				+ ", count=" + count + "]";
	}
	
	
}
