<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<link href="/studentmgmt/resources/css/bootstrap.css" rel="stylesheet">
</head>
<body>

	<div class="container mt-5">
		<h3>Student Registration Form</h3>
		<hr>
		<form action="addstudentusingrequestparam" method="POST">
			<div class="mb-3">
				<label for="firstName" class="form-label">First Name</label> <input
					type="text" class="form-control" id="txtFirstName" name="firstName"
					required>
			</div>

			<div class="mb-3">
				<label for="middleName" class="form-label">Middle Name</label> <input
					type="text" class="form-control" id="txtMiddleName"
					name="middleName" required>
			</div>

			<div class="mb-3">
				<label for="lastName" class="form-label">Last Name</label> <input
					type="text" class="form-control" id="txtLastName" name="lastName"
					required>
			</div>

			<div class="mb-3">
				<label for="gender" class="form-label">Gender</label> <input
					type="text" class="form-control" id="txtGender" name="gender"
					required>
			</div>

			<div class="mb-3">
				<label for="mobileNo" class="form-label">Mobile Number</label> <input
					type="text" class="form-control" id="txtMobileNo" name="mobileNo"
					required>
			</div>

			<div class="mb-3">
				<label for="email" class="form-label">Email Address</label> <input
					type="email" class="form-control" id="txtEmail"
					aria-describedby="emailHelp" name="email" required>
				<div id="emailHelp" class="form-text"></div>
			</div>



			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>