package tester;


import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ProductVO {
	private String productID;
	private String productName;
	private int productPrice;
	private int productPriceOri;
	private int salePercent;
	private String companyName;
	private String imagePath;
	private String category;
	private String takeType;
	private Date insertDate;
	private Date expireDate;
	private int remain;
	private int recipeID;
	private String desc;
	private String productFrom;
	
	public ProductVO( String productID, String productName, int productPrice, int productPriceOri, int salePercent, String companyName,
			String imagePath, String category) {
		this.productID = productID;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productPriceOri = productPriceOri;
		this.salePercent = salePercent;
		this.companyName = companyName;
		this.imagePath = imagePath;
		this.category = category;
	}


	public ProductVO( String productID, String productName, int productPriceOri, int productPrice, int salePercent, String companyName,
			String imagePath) {
		this.productID = productID;
		this.productName = productName;
		this.productPriceOri = productPriceOri;
		this.productPrice = productPrice;
		this.salePercent = salePercent;
		this.companyName = companyName;
		this.imagePath = imagePath;
	}

	public ProductVO(String productID, String productName, int productPrice, int productPriceOri, int salePercent,
			String companyName, String imagePath, String takeType, Date insertDate, Date expireDate, String desc, String productFrom) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productPriceOri = productPriceOri;
		this.salePercent = salePercent;
		this.companyName = companyName;
		this.imagePath = imagePath;
		this.takeType = takeType;
		this.insertDate = insertDate;
		this.expireDate = expireDate;
		this.desc = desc;
		this.productFrom = productFrom;
	}
	
	@Override
	public String toString() {
		return "ProductVO [productID=" + productID + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productPriceOri=" + productPriceOri + ", salePercent=" + salePercent + ", companyName="
				+ companyName + ", imagePath=" + imagePath + ", category=" + category + ", takeType=" + takeType
				+ ", insertDate=" + insertDate + ", expireDate=" + expireDate + ", remain=" + remain + ", recipeID="
				+ recipeID + "]";
	}




	
}
