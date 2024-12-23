<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="layout/db_connect.jsp"%>
<%
	String sql = " select substr(s.sno, 1, 1) grade, substr(s.sno, 2, 2) class, substr(s.sno, 4, 2) num, " 
			+ " s.sname, e.ekor, e.emath, e.eeng, e.ehist, " 
			+ " (e.ekor + e.emath + e.eeng + e.ehist) sum, "
			+ " ((e.ekor + e.emath + e.eeng + e.ehist) / 4) avg, "
			+ " rank() over(order by nvl(e.ekor + e.emath + e.eeng + e.ehist, 0) desc) rank "
		+ " from student_tbl_03 s, exam_tbl_03 e "
		+ " where s.sno = e.sno(+) ";

String sql2 = "select sum(ekor) 국어합계, sum(emath) 수학합계, "
			+ " sum(eeng) 영어합계, sum(ehist) 역사합계, "
			+ " (sum(ekor)+sum(emath)+sum(eeng)+sum(ehist)) 총합계, "
			+ " ((sum(ekor)+sum(emath)+sum(eeng)+sum(ehist))/4) 총평균 "
		+ " from EXAM_TBL_03 "
		+ " union all "
		+ " select avg(ekor) 국어합계, avg(emath) 수학합계, "
			+ " avg(eeng) 영어합계, avg(ehist) 역사합계, "
			+ " (avg(ekor)+avg(emath)+avg(eeng)+avg(ehist)) 총합계, "
			+ " ((avg(ekor)+avg(emath)+avg(eeng)+avg(ehist))/4) 총평균 "
		+ " from EXAM_TBL_03 ";

	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>학사관리 프로그램</title>
</head>
<body>
	<jsp:include page="layout/header.jsp"></jsp:include>
	
	<jsp:include page="layout/nav.jsp"></jsp:include>
	
	<main id="section">
		<h3 class="title">학생성적</h3>
		<div class="scroll">
			<table class="table_line">
					<tr>
						<th>학년</th>
						<th>반</th>
						<th>번호</th>
						<th>이름</th>
						<th>국어</th>
						<th>수학</th>
						<th>영어</th>
						<th>역사</th>
						<th>합계</th>
						<th>평균</th>
						<th>순위</th>
					</tr>
				<%
				while(rs.next()){
			%>
				<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<% if(rs.getString(9)==null){ %>
						<td></td><td></td><td></td><td>
						</td><td></td><td></td><td></td>
						</tr>
					<%
						continue; 
						}
					%>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>
					<td><%=rs.getString(7)%></td>
					<td><%=rs.getString(8)%></td>
					<td><%=rs.getString(9)%></td>
					<td><%=rs.getString(10)%></td>
					<td><%=rs.getString(11)%></td>
				</tr>
			<% }
				pstmt = conn.prepareStatement(sql2);	
				rs = pstmt.executeQuery();
				rs.next();
			%>
				<tr>
					<th colspan="4">총  합</th>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= rs.getString(5) %></td>
					<td><%= rs.getString(6) %></td>
					<td></td>
				</tr>
				<% rs.next(); %>
				<tr>
					<th colspan="4">총평균</th>
					<td><%= rs.getString(1) %></td>
					<td><%= rs.getString(2) %></td>
					<td><%= rs.getString(3) %></td>
					<td><%= rs.getString(4) %></td>
					<td><%= rs.getString(5) %></td>
					<td><%= rs.getString(6) %></td>
					<td></td>
				</tr>
			</table>
		</div>
	</main>
	
	<jsp:include page="layout/footer.jsp"></jsp:include>
</body>
</html>