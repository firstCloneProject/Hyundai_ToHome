package tester;


import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ProductVO {
	private String productName;
	private int price;	
	private int salePercent;
	private int companyID;
	private String imagePath;
	
	public ProductVO(String productName, int price, int salePercent, int companyID, String imagePath) {
		super();
		this.productName = productName;
		this.price = price;
		this.salePercent = salePercent;
		this.companyID = companyID;
		this.imagePath = imagePath;
	}
}
