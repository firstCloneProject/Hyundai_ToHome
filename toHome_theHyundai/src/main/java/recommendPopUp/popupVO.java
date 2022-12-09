package recommendPopUp;

public class popupVO {
	Integer productId;
	String productName;
	String imagePath;
	String recipeName;
	String recipeThumb;
	
	public String getRecipeThumb() {
		return recipeThumb;
	}
	public void setRecipeThumb(String recipeThumb) {
		this.recipeThumb = recipeThumb;
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
	public popupVO(String productName, String imagePath, String recipeName, String recipeThumb) {
		super();
		this.productName = productName;
		this.imagePath = imagePath;
		this.recipeName = recipeName;
		this.recipeThumb = recipeThumb;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getRecipeName() {
		return recipeName;
	}
	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}
	public popupVO(Integer productId, String productName, String imagePath, String recipeName, String recipeThumb) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.imagePath = imagePath;
		this.recipeName = recipeName;
		this.recipeThumb = recipeThumb;
	}
	@Override
	public String toString() {
		return "popupVO [productId=" + productId + ", productName=" + productName + ", imagePath=" + imagePath
				+ ", recipeName=" + recipeName + ", recipeThumb=" + recipeThumb + "]";
	}
	
	
	
}
