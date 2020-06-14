package com.example.portfolio.model;

public class UserVO {
//	
//	+-------------+-------------+------+-----+---------+----------------+
//	| Field       | Type        | Null | Key | Default | Extra          |
//	+-------------+-------------+------+-----+---------+----------------+
//	| uid         | int         | NO   | PRI | NULL    | auto_increment |
//	| userID      | varchar(20) | NO   |     | NULL    |                |
//	| passwd      | varchar(20) | NO   |     | NULL    |                |
//	| department  | int         | NO   |     | NULL    |                |
//	| userRank    | int         | NO   |     | NULL    |                |
//	| userName    | varchar(20) | NO   |     | NULL    |                |
//	| userPhone   | char(15)    | NO   |     | NULL    |                |
//	| userEmail   | varchar(50) | YES  |     | NULL    |                |
//	| userDomain  | varchar(50) | YES  |     | NULL    |                |
//	| auth        | varchar(20) | YES  |     | 일반    |                |
//	| userRegdate | datetime    | YES  |     | NULL    |                |
//	+-------------+-------------+------+-----+---------+----------------+

	private int uid;
	private String userID;
	private String passwd;
	private int department;
	private int userRank;
	private String userName;
	private String userPhone;
	private String userEmail;
	private String auth;
	private String userRegdate;
	
	

	//getter,setter
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public int getDepartment() {
		return department;
	}
	public void setDepartment(int department) {
		this.department = department;
	}
	public int getUserRank() {
		return userRank;
	}
	public void setUserRank(int userRank) {
		this.userRank = userRank;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getUserRegdate() {
		return userRegdate;
	}
	public void setUserRegdate(String userRegdate) {
		this.userRegdate = userRegdate;
	}
	
	
	
		
}
