<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Library Management System</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />

</head>
<body>
	<div class="container">
		<h1>Library Attendance Management</h1>
		<div class="action-buttons">
			<button
				onclick="location.href='${pageContext.request.contextPath}/library/saveEntry'">Mark
				Attendance</button>
			<button
				onclick="location.href='${pageContext.request.contextPath}/library/register'">Add
				Student</button>

		</div>
		<table class="customer-table">
			<thead>
				<tr>

					<th>ID</th>
					<th>Name</th>
					<th>Course</th>
					<th>Entry Time</th>
					<th>Entry Time</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="lab" items="${stdList}">


					<c:url var="deleteLink" value="/library/delete">
						<c:param name="id" value="${lab.sid}" />
					</c:url>

					<c:url var="exitLink" value="/library/exit">
						<c:param name="id" value="${lab.sid}" />
					</c:url>

					<tr>
						<td><c:out value="${lab.id}" /></td>
						<td><c:out value="${lab.name}" /></td>
						<td><c:out value="${lab.course}" /></td>
						<td><c:out value="${lab.entryTime}" /></td>
						<td><c:out value="${lab.exitTime}" /></td>

						<td><a href="${exitLink}">EXIT</a>&nbsp|&nbsp<a
							href="${deleteLink}"
							onclick="if(!(confirm('Are you sure you want to delete this record ?')))return false;">DELETE</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>

