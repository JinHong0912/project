package com.example.portfolio.model;

public class BoardVO {

//	+--------------+--------------+------+-----+---------+----------------+
//	| Field        | Type         | Null | Key | Default | Extra          |
//	+--------------+--------------+------+-----+---------+----------------+
//	| bid          | int          | NO   | PRI | NULL    | auto_increment |
//	| subject      | varchar(300) | NO   |     | NULL    |                |
//	| writer       | varchar(20)  | NO   |     | NULL    |                |
//	| boardContent | text         | YES  |     | NULL    |                |
//	| boardType    | varchar(20)  | YES  |     | NULL    |                |
//	| hit          | int          | YES  |     | 0       |                |
//	| fileName     | varchar(300) | YES  |     | NULL    |                |
//	| fileOriName  | varchar(300) | YES  |     | NULL    |                |
//	| fileUrl      | varchar(500) | YES  |     | NULL    |                |
//	| boardRegdate | datetime     | YES  |     | NULL    |                |
//	+--------------+--------------+------+-----+---------+----------------+
	
	private int bid;
	private String suject;
	private String writer;
	private String boardContent;
	private String boardType;
	private int hit;
	private String fileName;
	private String fileOriName;
	private String fileUrl;
	private String boardRegdate;
	
	
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getSuject() {
		return suject;
	}
	public void setSuject(String suject) {
		this.suject = suject;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileOriName() {
		return fileOriName;
	}
	public void setFileOriName(String fileOriName) {
		this.fileOriName = fileOriName;
	}
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}
	public String getBoardRegdate() {
		return boardRegdate;
	}
	public void setBoardRegdate(String boardRegdate) {
		this.boardRegdate = boardRegdate;
	}
	
	
	
	
}
