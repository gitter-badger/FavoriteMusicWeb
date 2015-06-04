package mplanweb.music.web.board;

import java.io.Serializable;

import mplanweb.music.web.etc.BoardStringUtil;

@SuppressWarnings("serial")
public class Board implements Serializable {
	private int boardID; // : 고유키
	private String boardIDEncrypt; // : 고유키 암호화
	private String boardTitle; // : 제목
	private String boardContent; // : 내용
	private int priority; // : 우선순위
	private String userName; // : 작성자명
	private String userGender; // : 작성자성별 (M: man, F: female)
	private String registDate; // : 등록일

	public int getBoardID() {
		return boardID;
	}

	public void setBoardID(int boardID) {
		setBoardIDEncrypt(BoardStringUtil.getStringTmsEncryptoAesForInt(boardID));
		this.boardID = boardID;
	}

	public String getBoardIDEncrypt() {
		return boardIDEncrypt;
	}

	public void setBoardIDEncrypt(String boardIDEncrypt) {
		this.boardIDEncrypt = boardIDEncrypt;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getRegistDate() {
		return registDate;
	}

	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}
}