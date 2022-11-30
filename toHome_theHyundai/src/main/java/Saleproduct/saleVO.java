package Saleproduct;

public class saleVO {

	
	private String product_name;
	private Integer salepercent;
	public Integer getSalepercent() {
		return salepercent;
	}







	public void setSalepercent(Integer salepercent) {
		this.salepercent = salepercent;
	}







	private String imagepath;
	private Integer price;
	
	
	
	
	
	
	







	public saleVO() {
		System.out.println("saleVO생성자 호출");	
	}
	
	
	
	
	
	

	public saleVO( String product_name,Integer salepercent, String imagepath,Integer price) {
		super();
		this.product_name = product_name;
		this.salepercent = salepercent;
		this.imagepath=imagepath;
		this.price = price;
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







	@Override
	public String toString() {
		return "saleVO [salepercent=" + salepercent + ", product_name=" + product_name + ", price=" + price + " ,imagepath=" + imagepath + "]";
	}









	
}
