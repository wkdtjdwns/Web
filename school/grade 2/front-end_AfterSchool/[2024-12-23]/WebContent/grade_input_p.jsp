<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="layout/db_connect.jsp"%>
<%
	try {
		request.setCharacterEncoding("UTF-8");
		
		String sql = " insert into exam_tbl_03 values(?, ?, ?, ?, ?) ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, request.getParameter("sno"));
		pstmt.setInt(2, Integer.parseInt(request.getParameter("ekor")));
		pstmt.setInt(3, Integer.parseInt(request.getParameter("emath")));
		pstmt.setInt(4, Integer.parseInt(request.getParameter("eeng")));
		pstmt.setInt(5, Integer.parseInt(request.getParameter("ehist")));
		
		pstmt.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사관리 프로그램</title>
</head>
<body>
	<jsp:forward page="grade_input.jsp"></jsp:forward>
</body>
</html>