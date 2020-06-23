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
	private int grp_id; 
	private String grpBoard_subject;        
	private String grpBoard_writer;             
	private String grpBoard_boardType;           
	private String grpBoard_boardContents;        
	private String grpBoard_boardRegdate;        
	private int grpBoard_hit;            
	private String grpBoard_fileName;       
	private String grpBoard_fileOriName;    
	private String grpBoard_fileUrl;        
	private int grpboard_ref;            
	private int grpboard_re_step;        
	private int grpboard_re_level;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getGrp_id() {
		return grp_id;
	}
	public void setGrp_id(int grp_id) {
		this.grp_id = grp_id;
	}
	public String getGrpBoard_subject() {
		return grpBoard_subject;
	}
	public void setGrpBoard_subject(String grpBoard_subject) {
		this.grpBoard_subject = grpBoard_subject;
	}
	public String getGrpBoard_writer() {
		return grpBoard_writer;
	}
	public void setGrpBoard_writer(String grpBoard_writer) {
		this.grpBoard_writer = grpBoard_writer;
	}
	public String getGrpBoard_type() {
		return grpBoard_boardType ;
	}
	public void setGrpBoard_type(String grpBoard_type) {
		this.grpBoard_boardType  = grpBoard_type;
	}
	public String getGrpBoard_boardContents() {
		return grpBoard_boardContents;
	}
	public void setGrpBoard_boardContents(String grpBoard_boardContents) {
		this.grpBoard_boardContents = grpBoard_boardContents;
	}
	public String getGrpBoard_boardRegdate() {
		return grpBoard_boardRegdate;
	}
	public void setGrpBoard_boardRegdate(String grpBoard_boardRegdate) {
		this.grpBoard_boardRegdate = grpBoard_boardRegdate;
	}
	public int getGrpBoard_hit() {
		return grpBoard_hit;
	}
	public void setGrpBoard_hit(int grpBoard_hit) {
		this.grpBoard_hit = grpBoard_hit;
	}
	public String getGrpBoard_fileName() {
		return grpBoard_fileName;
	}
	public void setGrpBoard_fileName(String grpBoard_fileName) {
		this.grpBoard_fileName = grpBoard_fileName;
	}
	public String getGrpBoard_fileOriName() {
		return grpBoard_fileOriName;
	}
	public void setGrpBoard_fileOriName(String grpBoard_fileOriName) {
		this.grpBoard_fileOriName = grpBoard_fileOriName;
	}
	public String getGrpBoard_fileUrl() {
		return grpBoard_fileUrl;
	}
	public void setGrpBoard_fileUrl(String grpBoard_fileUrl) {
		this.grpBoard_fileUrl = grpBoard_fileUrl;
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
