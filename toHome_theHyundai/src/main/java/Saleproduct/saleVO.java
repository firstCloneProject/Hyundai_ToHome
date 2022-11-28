package Saleproduct;

public class saleVO {

	private Integer salepercent;
	private String product_name;
	private Integer price;
	private String imagepath;
	
	public saleVO() {
		System.out.println("saleVO생성자 호출");	
	}
	
	
	
	
	
	

	public saleVO(Integer salepercent, String product_name, Integer price, String imagepath) {
		super();
		this.salepercent = salepercent;
		this.product_name = product_name;
		this.price = price;
		this.imagepath=imagepath;
	}







	public Integer getSalepercent() {
		return salepercent;
	}







	public void setSalepercent(Integer salepercent) {
		this.salepercent = salepercent;
	}







	public String getProduct_name() {
		return product_name;
	}







	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}







	public Integer getPrice() {
		return price;
	}







	public void setPrice(Integer price) {
		this.price = price;
	}







	@Override
	public String toString() {
		return "saleVO [salepercent=" + salepercent + ", product_name=" + product_name + ", price=" + price + " ,imagepath=" + imagepath + "]";
	}







	public String getImagepath() {
		return imagepath;
	}







	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}


	
}
