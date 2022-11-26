package tester;


import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ProductVO {
	private String productName;
	private int productPrice;	
	private int salePercent;
	private String companyName;
	private String imagePath;
	
	public ProductVO(String productName, int productPrice, int salePercent, String companyName, String imagePath) {
		super();
		this.productName = productName;
		this.productPrice = productPrice;
		this.salePercent = salePercent;
		this.companyName = companyName;
		this.imagePath = imagePath;
	}
}
