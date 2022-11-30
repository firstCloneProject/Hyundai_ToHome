package bestProducts;

public class bestVO {

	private String product_name;
	//private Integer salepercent;

//	public Integer getSalepercent() {
//		return salepercent;
//	}
//
//	public void setSalepercent(Integer salepercent) {
//		this.salepercent = salepercent;
//	}

	private String imagepath;
	private Integer price;
	private Integer salecals;
	private Integer salepercent;
	
	
	
	
	public bestVO() {
		System.out.println("saleVO생성자 호출");
	}

	public bestVO(String product_name, Integer salepercent,String imagepath, Integer price ,Integer salecals) {
		super();
		this.product_name = product_name;
		this.salepercent = salepercent;
		this.imagepath = imagepath;
		this.price = price;
		this.salecals=salecals;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getImagepath() {
		return imagepath;
	}

	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	
	public Integer getSaleprice() {
		return salecals;
	}

	public void setSaleprice(Integer saleprice) {
		this.salecals = saleprice;
	}

	@Override
	public String toString() {
		return "bestVO [product_name=" + product_name + ", imagepath=" + imagepath + ", price=" + price + ", saleprice="
				+ salecals + ", salepercent=" + salepercent + "]";
	}

	
	

	//@Override
//	public String toString() {
//		return "bestVO [ product_name=" + product_name + ", price=" + price
//				+ " ,imagepath=" + imagepath + "]";
//	}

}
