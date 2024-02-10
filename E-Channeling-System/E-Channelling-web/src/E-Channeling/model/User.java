package E.Channelling.model;

public class User {
	private String UserId;
	private String UserFistName;
	private String UserLastName;
	private String UserContactNo;
	private String UserEmail;
	private String UserAdress;
	private String Password;
	
	
	
//constructor
public User(String userId, String userFistName, String userLastName, String userContactNo, String userEmail,
			String userAdress, String password) {
		UserId = userId;
		UserFistName = userFistName;
		UserLastName = userLastName;
		UserContactNo = userContactNo;
		UserEmail = userEmail;
		UserAdress = userAdress;
		Password = password;
}

public User() {}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}


	public String getUserId() {
		return UserId;
	}
	
	public void setUserId(String userId) {
		UserId = userId;
	}
	
	
	public String getUserFistName() {
		return UserFistName;
	}
	public void setUserFistName(String userFistName) {
		UserFistName = userFistName;
	}
	public String getUserLastName() {
		return UserLastName;
	}
	public void setUserLastName(String userLastName) {
		UserLastName = userLastName;
	}
	public String getUserContactNo() {
		return UserContactNo;
	}
	public void setUserContactNo(String userContactNo) {
		UserContactNo = userContactNo;
	}
	public String getUserEmail() {
		return UserEmail;
	}
	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}
	public String getUserAdress() {
		return UserAdress;
	}
	public void setUserAdress(String userAdress) {
		UserAdress = userAdress;
	} 

}
