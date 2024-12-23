<%@ page import="java.sql.*"%>
<%@ include file="layout/db_connect.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사관리 프로그램</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript">
	function checkValue() {
		var cv = document.data;
		if (!cv.sno.value) {
			alert("학번을 입력하세요.");
			cv.sno.focus();
			return false;
		}
		
		else if (!cv.ekor.value) {
			alert("국어점수를 입력하세요.");
			cv.ekor.focus();
			return false;
		}
		
		else if (!cv.emath.value) {
			alert("수학점수를 입력하세요.");
			cv.emath.focus();
			return false;
		}
		
		else if (!cv.eeng.value) {
			alert("영어점수를 입력하세요.");
			cv.eeng.focus();
			return false;
		}
		
		else if (!cv.ehist.value) {
			alert("역사점수를 입력하세요.");
			cv.ehist.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="layout/header.jsp"></jsp:include>
	</header>
	
	<nav>
		<jsp:include page="layout/nav.jsp"></jsp:include>
	</nav>
	
	<main id="section">
		<h3 class="title">성적입력</h3>
		<form name="data" action="grade_input_p.jsp" method="post" onsubmit="return checkValue()">
			<table class="table_line">
				<tr>
					<th>학번</th>
					<td><input type="text" name="sno" size="10" autofocus></td>
				</tr>
				<tr>
					<th>국어점수</th>
					<td><input type="text" name="ekor" size="5"></td>
				</tr>
				<tr>
					<th>수학점수</th>
					<td><input type="text" name="emath" size="5"></td>
				</tr>
				<tr>
					<th>영어점수</th>
					<td><input type="text" name="eeng" size="5"></td>
				</tr>
				<tr>
					<th>역사점수</th>
					<td><input type="text" name="ehist" size="5"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="등록하기">
					</td>
				</tr>
			</table>
		</form>
	</main>
	
	<footer>
		<jsp:include page="layout/footer.jsp"></jsp:include>
	</footer>
</body>
</html>