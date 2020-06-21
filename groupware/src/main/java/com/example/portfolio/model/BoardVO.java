package com.example.portfolio.model;

public class BoardVO {
//	+-------------------------+--------------+------+-----+---------+----------------+
//	| Field                   | Type         | Null | Key | Default | Extra          |
//	+-------------------------+--------------+------+-----+---------+----------------+
//	| bid                     | int          | NO   | PRI | NULL    | auto_increment |
//	| grpboard_subject        | varchar(300) | NO   |     | NULL    |                |
//	| grpboard_writer         | varchar(20)  | NO   |     | NULL    |                |
//	| grpboard_userDepartment | varchar(20)  | YES  |     | NULL    |                |
//	| grpboard_userRank       | varchar(20)  | YES  |     | NULL    |                |
//	| grpboard_userEamil      | varchar(30)  | YES  |     | NULL    |                |
//	| grpboard_type           | varchar(30)  | YES  |     | NULL    |                |
//	| grpboard_content        | text         | YES  |     | NULL    |                |
//	| grpboard_regdate        | datetime     | YES  |     | NULL    |                |
//	| grpboard_hit            | int          | YES  |     | NULL    |                |
//	| grpboard_fileName       | varchar(300) | YES  |     | NULL    |                |
//	| grpboard_fileOriName    | varchar(300) | YES  |     | NULL    |                |
//	| grpboard_fileUrl        | varchar(300) | YES  |     | NULL    |                |
//	| grpboard_ref            | int          | YES  |     | NULL    |                |
//	| grpboard_re_step        | int          | YES  |     | NULL    |                |
//	| grpboard_re_level       | int          | YES  |     | NULL    |                |
//	+-------------------------+--------------+------+-----+---------+----------------+

	
	private int bid;                     
	private String grpboard_subject;        
	private String grpboard_writer;         
	private String grpboard_userDepartment; 
	private String grpboard_userRank;       
	private String grpboard_userEamil;      
	private String grpboard_type;           
	private String grpboard_content;        
	private String grpboard_regdate;        
	private int grpboard_hit;            
	private String grpboard_fileName;       
	private String grpboard_fileOriName;    
	private String grpboard_fileUrl;        
	private int grpboard_ref;            
	private int grpboard_re_step;        
	private int grpboard_re_level;

	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getGrpboard_subject() {
		return grpboard_subject;
	}
	public void setGrpboard_subject(String grpboard_subject) {
		this.grpboard_subject = grpboard_subject;
	}
	public String getGrpboard_writer() {
		return grpboard_writer;
	}
	public void setGrpboard_writer(String grpboard_writer) {
		this.grpboard_writer = grpboard_writer;
	}
	public String getGrpboard_userDepartment() {
		return grpboard_userDepartment;
	}
	public void setGrpboard_userDepartment(String grpboard_userDepartment) {
		this.grpboard_userDepartment = grpboard_userDepartment;
	}
	public String getGrpboard_userRank() {
		return grpboard_userRank;
	}
	public void setGrpboard_userRank(String grpboard_userRank) {
		this.grpboard_userRank = grpboard_userRank;
	}
	public String getGrpboard_userEamil() {
		return grpboard_userEamil;
	}
	public void setGrpboard_userEamil(String grpboard_userEamil) {
		this.grpboard_userEamil = grpboard_userEamil;
	}
	public String getGrpboard_type() {
		return grpboard_type;
	}
	public void setGrpboard_type(String grpboard_type) {
		this.grpboard_type = grpboard_type;
	}
	public String getGrpboard_content() {
		return grpboard_content;
	}
	public void setGrpboard_content(String grpboard_content) {
		this.grpboard_content = grpboard_content;
	}
	public String getGrpboard_regdate() {
		return grpboard_regdate;
	}
	public void setGrpboard_regdate(String grpboard_regdate) {
		this.grpboard_regdate = grpboard_regdate;
	}
	public int getGrpboard_hit() {
		return grpboard_hit;
	}
	public void setGrpboard_hit(int grpboard_hit) {
		this.grpboard_hit = grpboard_hit;
	}
	public String getGrpboard_fileName() {
		return grpboard_fileName;
	}
	public void setGrpboard_fileName(String grpboard_fileName) {
		this.grpboard_fileName = grpboard_fileName;
	}
	public String getGrpboard_fileOriName() {
		return grpboard_fileOriName;
	}
	public void setGrpboard_fileOriName(String grpboard_fileOriName) {
		this.grpboard_fileOriName = grpboard_fileOriName;
	}
	public String getGrpboard_fileUrl() {
		return grpboard_fileUrl;
	}
	public void setGrpboard_fileUrl(String grpboard_fileUrl) {
		this.grpboard_fileUrl = grpboard_fileUrl;
	}
	public int getGrpboard_ref() {
		return grpboard_ref;
	}
	public void setGrpboard_ref(int grpboard_ref) {
		this.grpboard_ref = grpboard_ref;
	}
	public int getGrpboard_re_step() {
		return grpboard_re_step;
	}
	public void setGrpboard_re_step(int grpboard_re_step) {
		this.grpboard_re_step = grpboard_re_step;
	}
	public int getGrpboard_re_level() {
		return grpboard_re_level;
	}
	public void setGrpboard_re_level(int grpboard_re_level) {
		this.grpboard_re_level = grpboard_re_level;
	}      
	
	
	
}
