package com.kgu.www.vo;

public class InfoBoardVO {
	private int IBN_seq;
	private String type;
	private String title;
	private String content;
	private String userID;
	private String userNickname;
	private String regDate;
	private String modifyDate;
	private int hit;
	private int commentCnt;
	private String contentPW;
	private String imgName;
	
	
	public InfoBoardVO() {}
	public InfoBoardVO(int IBN_seq, String type, String title, String content, String userID, String userNickname, String regDate, String modifyDate, String contentPW, String imgName) {
		this.IBN_seq = IBN_seq;
		this.type = type;
		this.title = title;
		this.content = content;
		this.userID = userID;
		this.userNickname = userNickname;
		this.regDate = regDate;
		this.modifyDate = modifyDate;
		this.contentPW = contentPW;
		this.imgName = imgName;
	}
	
	public int getIBN_seq() {
		return IBN_seq;
	}
	public void setIBN_seq(int iBN_seq) {
		IBN_seq = iBN_seq;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getCommentCnt() {
		return commentCnt;
	}
	public void setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
	}
	public String getContentPW() {
		return contentPW;
	}
	public void setContentPW(String contentPW) {
		this.contentPW = contentPW;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
}
