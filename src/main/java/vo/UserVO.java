package vo;

public class UserVO {
	private String id;
	private String password;
	private String name;
	private String email;
	private String birthday;
	private String sex;
	private String phone;
	private String address;
	private String date;
	private int isEmployer;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getIsEmployer() {
		return isEmployer;
	}
	public void setIsEmployer(int isEmployer) {
		this.isEmployer = isEmployer;
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + ", birthday="
				+ birthday + ", sex=" + sex + ", phone=" + phone + ", address=" + address + ", date=" + date
				+ ", isEmployer=" + isEmployer + "]";
	}
}
