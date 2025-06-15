<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<style>
body {
	font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f5f7fa;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	background-color: #ffffff;
	padding: 30px 25px;
	border-radius: 8px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
	width: 320px;
}

.form-container h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #2c3e50;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 6px;
	color: #34495e;
	font-size: 0.95rem;
}

.form-group input, .form-group select {
	width: 100%;
	padding: 8px 10px;
	font-size: 0.95rem;
	border: 1px solid #ced6e0;
	border-radius: 4px;
	transition: border-color 0.2s;
}

.form-group input:focus, .form-group select:focus {
	border-color: #1abc9c;
	outline: none;
}

.submit-btn {
	width: 100%;
	background-color: #1abc9c;
	color: #ffffff;
	padding: 10px;
	font-size: 0.95rem;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.2s;
}

.submit-btn:hover {
	background-color: #17a085;
}
</style>
</head>
<body>

	<div class="form-container">
		<h2>Student Registration</h2>
		<form action="save" method="post" >
			<div class="form-group">
				<label for="studentId">Student ID</label> <input type="text"
					id="studentId" name="id" required />
			</div>
			<div class="form-group">
				<label for="studentName">Name</label> <input type="text"
					id="name" name="name" required />
			</div>
			<div class="form-group">
				<label for="courseSelect">Course</label> <select id="course"
					name="course" required>
					<option value="" disabled selected>Select Course</option>
					<option value="BSc">B.Sc</option>
					<option value="BA">B.A</option>
					<option value="BCom">B.Com</option>
					<option value="BTech">B.Tech</option>
					<option value="MSc">M.Sc</option>
					<option value="MA">M.A</option>
					<option value="MCom">M.Com</option>
				</select>
			</div>
			<div class="form-group">
				<label for="mobileNumber">Mobile Number</label> <input type="tel"
					id="mobileNumber" name="number" pattern="[0-9]{10}"
					placeholder="e.g., 9876543210" required />
			</div>
			<button type="submit" class="submit-btn">Submit</button>
		</form>
	</div>

</body>
</html>
