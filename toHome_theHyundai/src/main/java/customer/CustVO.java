package customer;

public class CustVO {
	private String customerId;
	private String pwd;
	private String name;
	
	private String birth;
	private String gender;
	private String address;
	private String telNo;
	private String joinDate;
	
	public CustVO() {
		System.out.println("LoginVO 생성자 호출");
	}

//	//필수입력사항만 저장
//	public CustVO(String customerId, String pwd, String name, String telNo, String birth) {
//	
//		this.customerId = customerId;
//		this.pwd = pwd;
//		this.name = name;
//		this.telNo = telNo;
//		this.birth = birth;
//	}

	//모든 입력사항 저장
	public CustVO(String customerId, String pwd, String name, String birth, String address, String telNo, String joinDate, String gender) {
		this.customerId = customerId;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.address = address;
		this.telNo = telNo;
		this.joinDate = joinDate;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelNo() {
		return telNo;
	}

	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
	
	public String getJoinDate() {
		return joinDate;
	}
	
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	
	@Override
	public String toString() {
		return "CustVO [customerId=" + customerId + ", pwd=" + pwd + ", name=" + name + ", telNo=" + telNo + ", birth=" + birth
				+ ", gender=" + gender + ", address=" + address + "]";
	}
	
}

