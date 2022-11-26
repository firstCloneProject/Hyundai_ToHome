package tester;


import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ProductVO {
	private String productName;
	private int productPrice;
	private int productPriceOri;
	private int salePercent;
	private String companyName;
	private String imagePath;
	private String category;
	
	public ProductVO(String productName, int productPrice, int productPriceOri, int salePercent, String companyName,
			String imagePath, String category) {
		this.productName = productName;
		this.productPrice = productPrice;
		this.productPriceOri = productPriceOri;
		this.salePercent = salePercent;
		this.companyName = companyName;
		this.imagePath = imagePath;
		this.category = category;
	}


	public ProductVO(String productName, int productPriceOri, int productPrice, int salePercent, String companyName,
			String imagePath) {
		this.productName = productName;
		this.productPriceOri = productPriceOri;
		this.productPrice = productPrice;
		this.salePercent = salePercent;
		this.companyName = companyName;
		this.imagePath = imagePath;
	}


	@Override
	public String toString() {
		return "ProductVO [productName=" + productName + ", productPrice=" + productPrice + ", productPriceOri="
				+ productPriceOri + ", salePercent=" + salePercent + ", companyName=" + companyName + ", imagePath="
				+ imagePath + ", category=" + category + "]";
	}






	
}
