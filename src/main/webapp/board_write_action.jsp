<%@page import="com.summer.board.BoardService"%>
<%@page import="com.summer.board.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("board_list.jsp");
		return;
	}
	 
	Board board=new Board();
	board.setTitle(request.getParameter("title"));
	board.setWriter(request.getParameter("writer"));
	board.setContent(request.getParameter("content"));
	
	BoardService.getInstance().create(board);
	response.sendRedirect("board_list.jsp");
%>
