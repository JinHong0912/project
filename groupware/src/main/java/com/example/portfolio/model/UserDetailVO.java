package com.example.portfolio.model;

public class UserDetailVO {
//	+-----------------+--------------+------+-----+---------+----------------+
//	| Field           | Type         | Null | Key | Default | Extra          |
//	+-----------------+--------------+------+-----+---------+----------------+
//	| uid             | int          | NO   | PRI | NULL    | auto_increment |
//	| userDetail_id   | int          | NO   |     | NULL    |                |
//	| userName        | varchar(20)  | NO   |     | NULL    |                |
//	| userGender      | int          | NO   |     | NULL    |                |
//	| userBirth       | varchar(20)  | YES  |     | NULL    |                |
//	| userPhone       | char(15)     | NO   |     | NULL    |                |
//	| extensionNumber | varchar(20)  | YES  |     | NULL    |                |
//	| telephone       | varchar(20)  | YES  |     | NULL    |                |
//	| recruitment     | int          | YES  |     | NULL    |                |
//	| hopeJob         | varchar(200) | YES  |     | NULL    |                |
//	| userHeight      | varchar(15)  | YES  |     | NULL    |                |
//	| userWeight      | varchar(20)  | YES  |     | NULL    |                |
//	| militaryService | int          | YES  |     | NULL    |                |
//	| religion        | varchar(20)  | YES  |     | NULL    |                |
//	| userHobby       | varchar(100) | YES  |     | NULL    |                |
//	| userSpecialty   | varchar(100) | YES  |     | NULL    |                |
//	| disabledCk      | int          | NO   |     | NULL    |                |
//	| veteransCk      | int          | YES  |     | NULL    |                |
//	| marriageCk      | int          | YES  |     | NULL    |                |
//	| aboutMe         | text         | YES  |     | NULL    |                |
//	| userRegdate     | datetime     | YES  |     | NULL    |                |
//	+-----------------+--------------+------+-----+---------+----------------+


	private int uid;            
	private int userDetail_id;           
	private String userName;       
	private int userGender;     
	private String userBirth;      
	private String userPhone;      
	private String extensionNumber;
	private String telephone;      
	private int recruitment;    
	private String hopeJob;        
	private String userHeight;     
	private String userWeight;     
	private int militaryService;
	private int religion;       
	private String userHobby;      
	private String userSpecialty;  
	private int disabledCk;     
	private int veteransCk;     
	private int marriageCk;     
	private String aboutMe;        
	private String userRegdate;
	
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getUserDetail_id() {
		return userDetail_id;
	}
	public void setUserDetail_id(int userDetail_id) {
		this.userDetail_id = userDetail_id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserGender() {
		return userGender;
	}
	public void setUserGender(int userGender) {
		this.userGender = userGender;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getExtensionNumber() {
		return extensionNumber;
	}
	public void setExtensionNumber(String extensionNumber) {
		this.extensionNumber = extensionNumber;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public int getRecruitment() {
		return recruitment;
	}
	public void setRecruitment(int recruitment) {
		this.recruitment = recruitment;
	}
	public String getHopeJob() {
		return hopeJob;
	}
	public void setHopeJob(String hopeJob) {
		this.hopeJob = hopeJob;
	}
	public String getUserHeight() {
		return userHeight;
	}
	public void setUserHeight(String userHeight) {
		this.userHeight = userHeight;
	}
	public String getUserWeight() {
		return userWeight;
	}
	public void setUserWeight(String userWeight) {
		this.userWeight = userWeight;
	}
	public int getMilitaryService() {
		return militaryService;
	}
	public void setMilitaryService(int militaryService) {
		this.militaryService = militaryService;
	}
	public int getReligion() {
		return religion;
	}
	public void setReligion(int religion) {
		this.religion = religion;
	}
	public String getUserHobby() {
		return userHobby;
	}
	public void setUserHobby(String userHobby) {
		this.userHobby = userHobby;
	}
	public String getUserSpecialty() {
		return userSpecialty;
	}
	public void setUserSpecialty(String userSpecialty) {
		this.userSpecialty = userSpecialty;
	}
	public int getDisabledCk() {
		return disabledCk;
	}
	public void setDisabledCk(int disabledCk) {
		this.disabledCk = disabledCk;
	}
	public int getVeteransCk() {
		return veteransCk;
	}
	public void setVeteransCk(int veteransCk) {
		this.veteransCk = veteransCk;
	}
	public int getMarriageCk() {
		return marriageCk;
	}
	public void setMarriageCk(int marriageCk) {
		this.marriageCk = marriageCk;
	}
	public String getAboutMe() {
		return aboutMe;
	}
	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}
	public String getUserRegdate() {
		return userRegdate;
	}
	public void setUserRegdate(String userRegdate) {
		this.userRegdate = userRegdate;
	}

	
	
	
	
	
	
}
