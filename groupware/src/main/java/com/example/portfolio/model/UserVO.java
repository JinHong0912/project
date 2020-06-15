package com.example.portfolio.model;

public class UserVO {
	
//	+-------------+-------------+------+-----+---------+----------------+
//	| Field       | Type        | Null | Key | Default | Extra          |
//	+-------------+-------------+------+-----+---------+----------------+
//	| uid         | int         | NO   | PRI | NULL    | auto_increment |
//	| userID      | varchar(20) | NO   |     | NULL    |                |
//	| passwd      | varchar(20) | NO   |     | NULL    |                |
//	| department  | int         | NO   |     | NULL    |                |
//	| userRank    | int         | NO   |     | NULL    |                |
//	| userName    | varchar(20) | NO   |     | NULL    |                |
//	| userEmail   | varchar(50) | YES  |     | NULL    |                |
//	| userPhone   | char(15)    | NO   |     | NULL    |                |
//	| auth        | varchar(20) | YES  |     | 일반  	   |                |
//	| userRegdate | datetime    | YES  |     | NULL    |                |
//	+-------------+-------------+------+-----+---------+----------------+

	private int uid;
	private String userID;
	private String passwd;
	private String department;
	private String userRank;
	private String userName;
	private String userEmail;
	private String userPhone;
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
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getUserRank() {
		return userRank;
	}
	public void setUserRank(String userRank) {
		this.userRank = userRank;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
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
