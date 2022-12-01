package magazine;

public class mgzVO {
	private Integer recipeId;
	private String recipeImagepath;
	private String recipeName;
	private String recipeCategory;
	//private String customerId;
	private String recipeThumb;
	
	public mgzVO(Integer recipeId, String recipeImagepath, String recipeName, String recipeCategory, String recipeThumb) {
	this.recipeId = recipeId;
	this.recipeImagepath = recipeImagepath;
	this.recipeName = recipeName;
	this.recipeCategory = recipeCategory;
	this.recipeThumb = recipeThumb;
	}
	
//	public String getCustomerId() {
//		return customerId;
//	}
//	public void setCustomerId(String customerId) {
//		this.customerId = customerId;
//	}

	public Integer getRecipeId() {
		return recipeId;
	}

	public void setRecipeId(Integer recipeId) {
		this.recipeId = recipeId;
	}

	public String getRecipeImagepath() {
		return recipeImagepath;
	}

	public void setRecipeImagepath(String recipeImagepath) {
		this.recipeImagepath = recipeImagepath;
	}

	public String getRecipeName() {
		return recipeName;
	}

	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}

	public String getRecipeCategory() {
		return recipeCategory;
	}

	public void setRecipeCategory(String recipeCategory) {
		this.recipeCategory = recipeCategory;
	}

	public String getRecipeThumb() {
		return recipeThumb;
	}

	public void setRecipeThumb(String recipeThumb) {
		this.recipeThumb = recipeThumb;
	}

	@Override
	public String toString() {
		return "mgzVO [recipeId=" + recipeId + ", recipeImagepath=" + recipeImagepath + ", recipeName=" + recipeName
				+ ", recipeCategory=" + recipeCategory + ", recipeThumb=" + recipeThumb + "]";
	}

}
