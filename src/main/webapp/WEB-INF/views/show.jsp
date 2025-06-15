<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
</head>
<body>
	<h2>Students</h2>
	<form action="${pageContext.request.contextPath}/student/add"
		method="post">
		<table border="1" cellpadding="5" cellspacing="0">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Course</th>
				<th>Number</th>
			</tr>
			<c:forEach var="stu" items="${stdList}" varStatus="status">
				<tr>
					<td>${stu.id}</td>
					<td>${stu.name}</td>
					<td>${stu.course}</td>
					<td>${stu.number}</td>


				</tr>
			</c:forEach>
		</table>
		<br /> <input type="submit" value="Add" />
	</form>
</body>
</html>
