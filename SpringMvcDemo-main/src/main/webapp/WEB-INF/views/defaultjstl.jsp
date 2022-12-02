<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Tag</title>
</head>
<body>

	<h3><a href="showaddstudent">Add Student</a></h3>
	<hr />

	Type:
	<c:out value="${using}"></c:out>

	<table>
		<thead>
			<tr>
				<th>Student Id</th>
				<th>First Name</th>
				<th>Middle Name</th>
				<th>Last Name</th>
				<th>Gender</th>
				<th>Mobile No</th>
				<th>Email Address</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="student" items="${slist}">

				<tr>
					<td><c:out value="${student.studentId}"></c:out></td>
					<td><c:out value="${student.firstName}"></c:out></td>
					<td><c:out value="${student.middleName}"></c:out></td>
					<td><c:out value="${student.lastName}"></c:out></td>
					<td><c:out value="${student.gender}"></c:out></td>
					<td><c:out value="${student.mobileNo}"></c:out></td>
					<td><c:out value="${student.email}"></c:out></td>
				</tr>

			</c:forEach>
		</tbody>
	</table>
</body>
</html>