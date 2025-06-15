<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Create Student Entry</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/studentEntry.css" />
</head>
<body>
	<div class="form-container">
		<h1>Student Entry Form</h1>
		<form:form method="post" modelAttribute="studentEntry"
			action="${pageContext.request.contextPath}/library/save">
			
			<form:hidden path="id" />

			<div class="form-group">
				<form:label path="name">Name:</form:label>
				<form:input path="name" cssClass="input-field" />
			</div>

			<div class="form-group">
				<form:label path="course">Course:</form:label>
				<form:input path="course" cssClass="input-field" />
			</div>

			<div class="form-group">
				<form:label path="entryTime">Entry Time:</form:label>
				<form:input path="entryTime" type="time" cssClass="input-field" />
			</div>

			<div class="form-group">
				<form:label path="exitTime">Exit Time:</form:label>
				<form:input path="exitTime" type="time" cssClass="input-field" />
			</div>

			<div class="form-group">
				<button type="submit" class="submit-btn">Submit</button>
			</div>

		</form:form>
	</div>
</body>
</html>
