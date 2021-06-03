package com.summer.board;

import java.sql.Date;

public class Board {
	private int boardNo;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private int readCount;
	//글의 논리적인 순서번호를 관리하기 위한 필드 (3개)
	private int groupNo;
	private int step;
	private int depth;


}
