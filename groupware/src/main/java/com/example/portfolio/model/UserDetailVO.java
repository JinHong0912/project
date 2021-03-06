package com.example.portfolio.model;

public class UserDetailVO {
//	
//	+---------------------+--------------+------+-----+---------+----------------+
//	| Field               | Type         | Null | Key | Default | Extra          |
//	+---------------------+--------------+------+-----+---------+----------------+
//	| uid                 | int          | NO   | PRI | NULL    | auto_increment |
//	| udid                | int          | NO   |     | NULL    |                |
//	| grp_userGender      | varchar(10)  | NO   |     | NULL    |                |
//	| grp_userBirth       | varchar(20)  | YES  |     | NULL    |                |
//	| grp_lunarCalendar   | varchar(20)  | YES  |     | NULL    |                |
//	| grp_extension       | varchar(10)  | YES  |     | NULL    |                |
//	| grp_extensionNumber | varchar(20)  | YES  |     | NULL    |                |
//	| grp_tele            | varchar(10)  | YES  |     | NULL    |                |
//	| grp_telephone       | varchar(20)  | YES  |     | NULL    |                |
//	| grp_recruitment     | varchar(20)  | YES  |     | NULL    |                |
//	| grp_hopeJob         | varchar(200) | YES  |     | NULL    |                |
//	| grp_userHeight      | varchar(20)  | YES  |     | NULL    |                |
//	| grp_userWeight      | varchar(20)  | YES  |     | NULL    |                |
//	| grp_militaryService | varchar(8)   | YES  |     | NULL    |                |
//	| grp_religion        | varchar(8)   | YES  |     | NULL    |                |
//	| grp_userHobby       | varchar(100) | YES  |     | NULL    |                |
//	| grp_userSpecialty   | varchar(100) | YES  |     | NULL    |                |
//	| grp_disabledCk      | varchar(20)  | NO   |     | NULL    |                |
//	| grp_veteransCk      | varchar(20)  | YES  |     | NULL    |                |
//	| grp_marriageCk      | varchar(20)  | YES  |     | NULL    |                |
//	| grp_finalEducation  | varchar(20)  | YES  |     | NULL    |                |
//	| grp_graduationYear  | varchar(25)  | YES  |     | NULL    |                |
//	| grp_graduate        | varchar(30)  | YES  |     | NULL    |                |
//	| grp_university      | varchar(30)  | YES  |     | NULL    |                |
//	| grp_grades          | varchar(20)  | YES  |     | NULL    |                |
//	| grp_graduation      | text         | YES  |     | NULL    |                |
//	| grp_aboutMe         | text         | YES  |     | NULL    |                |
//	| grp_userRegdate     | datetime     | YES  |     | NULL    |                |
//	+---------------------+--------------+------+-----+---------+----------------+
//	
	
	private int udid;
	private String grp_userGender;
	private String grp_userBirth;
	private String grp_lunarCalendar;
	private String grp_extension;
	private String grp_extensionNumber;
	private String grp_tele;
	private String grp_telephone;
	private String grp_recruitment;
	private String grp_hopeJob;
	private String grp_userHeight;
	private String grp_userWeight;
	private String grp_militaryService;
	private String grp_religion;
	private String grp_userHobby;
	private String grp_userSpecialty;
	private String grp_disabledCk;
	private String grp_veteransCk;
	private String grp_marriageCk;
	private String grp_finalEducation;
	private String grp_graduationYear;
	private String grp_graduate;
	private String grp_university;
	private String grp_grades;
	private String grp_graduation;
	private String grp_aboutMe;
	private String grp_userRegdate;
	private int  division;
	
	public int getDivision() {
		return division;
	}
	public void setDivision(int division) {
		this.division = division;
	}
	public int getUdid() {
		return udid;
	}
	public void setUdid(int udid) {
		this.udid = udid;
	}
	public String getGrp_userGender() {
		return grp_userGender;
	}
	public void setGrp_userGender(String grp_userGender) {
		this.grp_userGender = grp_userGender;
	}
	public String getGrp_userBirth() {
		return grp_userBirth;
	}
	public void setGrp_userBirth(String grp_userBirth) {
		this.grp_userBirth = grp_userBirth;
	}
	public String getGrp_lunarCalendar() {
		return grp_lunarCalendar;
	}
	public void setGrp_lunarCalendar(String grp_lunarCalendar) {
		this.grp_lunarCalendar = grp_lunarCalendar;
	}
	
	public String getGrp_extension() {
		return grp_extension;
	}
	public void setGrp_extension(String grp_extension) {
		this.grp_extension = grp_extension;
	}
	public String getGrp_extensionNumber() {
		return grp_extensionNumber;
	}
	public void setGrp_extensionNumber(String grp_extensionNumber) {
		this.grp_extensionNumber = grp_extensionNumber;
	}
	public String getGrp_tele() {
		return grp_tele;
	}
	public void setGrp_tele(String grp_tele) {
		this.grp_tele = grp_tele;
	}
	public String getGrp_telephone() {
		return grp_telephone;
	}
	public void setGrp_telephone(String grp_telephone) {
		this.grp_telephone = grp_telephone;
	}
	public String getGrp_recruitment() {
		return grp_recruitment;
	}
	public void setGrp_recruitment(String grp_recruitment) {
		this.grp_recruitment = grp_recruitment;
	}
	public String getGrp_hopeJob() {
		return grp_hopeJob;
	}
	public void setGrp_hopeJob(String grp_hopeJob) {
		this.grp_hopeJob = grp_hopeJob;
	}
	public String getGrp_userHeight() {
		return grp_userHeight;
	}
	public void setGrp_userHeight(String grp_userHeight) {
		this.grp_userHeight = grp_userHeight;
	}
	public String getGrp_userWeight() {
		return grp_userWeight;
	}
	public void setGrp_userWeight(String grp_userWeight) {
		this.grp_userWeight = grp_userWeight;
	}
	public String getGrp_militaryService() {
		return grp_militaryService;
	}
	public void setGrp_militaryService(String grp_militaryService) {
		this.grp_militaryService = grp_militaryService;
	}
	public String getGrp_religion() {
		return grp_religion;
	}
	public void setGrp_religion(String grp_religion) {
		this.grp_religion = grp_religion;
	}
	public String getGrp_userHobby() {
		return grp_userHobby;
	}
	public void setGrp_userHobby(String grp_userHobby) {
		this.grp_userHobby = grp_userHobby;
	}
	public String getGrp_userSpecialty() {
		return grp_userSpecialty;
	}
	public void setGrp_userSpecialty(String grp_userSpecialty) {
		this.grp_userSpecialty = grp_userSpecialty;
	}
	public String getGrp_disabledCk() {
		return grp_disabledCk;
	}
	public void setGrp_disabledCk(String grp_disabledCk) {
		this.grp_disabledCk = grp_disabledCk;
	}
	public String getGrp_veteransCk() {
		return grp_veteransCk;
	}
	public void setGrp_veteransCk(String grp_veteransCk) {
		this.grp_veteransCk = grp_veteransCk;
	}
	public String getGrp_marriageCk() {
		return grp_marriageCk;
	}
	public void setGrp_marriageCk(String grp_marriageCk) {
		this.grp_marriageCk = grp_marriageCk;
	}
	public String getGrp_finalEducation() {
		return grp_finalEducation;
	}
	public void setGrp_finalEducation(String grp_finalEducation) {
		this.grp_finalEducation = grp_finalEducation;
	}
	public String getGrp_graduationYear() {
		return grp_graduationYear;
	}
	public void setGrp_graduationYear(String grp_graduationYear) {
		this.grp_graduationYear = grp_graduationYear;
	}
	public String getGrp_graduate() {
		return grp_graduate;
	}
	public void setGrp_graduate(String grp_graduate) {
		this.grp_graduate = grp_graduate;
	}
	public String getGrp_university() {
		return grp_university;
	}
	public void setGrp_university(String grp_university) {
		this.grp_university = grp_university;
	}
	public String getGrp_grades() {
		return grp_grades;
	}
	public void setGrp_grades(String grp_grades) {
		this.grp_grades = grp_grades;
	}
	public String getGrp_graduation() {
		return grp_graduation;
	}
	public void setGrp_graduation(String grp_graduation) {
		this.grp_graduation = grp_graduation;
	}
	public String getGrp_aboutMe() {
		return grp_aboutMe;
	}
	public void setGrp_aboutMe(String grp_aboutMe) {
		this.grp_aboutMe = grp_aboutMe;
	}
	public String getGrp_userRegdate() {
		return grp_userRegdate;
	}
	public void setGrp_userRegdate(String grp_userRegdate) {
		this.grp_userRegdate = grp_userRegdate;
	}
	
	
}
