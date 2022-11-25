package tester;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class ProductDetailVO {
	private String productName;
	private int price;
	private String takeType;
	private String category;
	private int salePercent;
	private Date insertDate;
	private Date expireDate;
	private int remain;
	private int companyID;
	private String imagePath;
	private int recipeID;
	
	public ProductDetailVO(String productName, int price, String takeType, String category, int salePercent,
			Date insertDate, Date expireDate, int remain, int companyID, String imagePath, int recipeID) {
		super();
		this.productName = productName;
		this.price = price;
		this.takeType = takeType;
		this.category = category;
		this.salePercent = salePercent;
		this.insertDate = insertDate;
		this.expireDate = expireDate;
		this.remain = remain;
		this.companyID = companyID;
		this.imagePath = imagePath;
		this.recipeID = recipeID;
	}
	
}
