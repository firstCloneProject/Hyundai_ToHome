package test;

public class testVO {
	private String customerid;

	public testVO() {
		System.out.println("testVO 생성자 호출");
	}
	
	public testVO(String customerid) {
		this.customerid = customerid;
	}

	public String getCustomerid() {
		return customerid;
	}

	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}



}
