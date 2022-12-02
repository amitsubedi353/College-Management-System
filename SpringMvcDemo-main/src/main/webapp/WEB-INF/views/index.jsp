<%@page import="com.springmvcweb.studentmgmt.models.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index file</title>

<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #04AA6D;
	color: white;
}

tr:hover {
	background-color: coral;
}
</style>

</head>
<body>

	<h2>Index File</h2>
	<hr>
	<h3>Get Data From Controller To View &nbsp;&nbsp;&nbsp;&nbsp; <a href="showjstlpage">JSTL Demo</a> </h3>

	<p>Using : ${types}</p>
	<p>Student Id : ${student_id}</p>


	<p>Using JSP Tags</p>

	<%
		String types = request.getAttribute("types").toString();
	//Integer student_id = (Integer) request.getAttribute("student_id");
	List<Student> slist = (List<Student>) request.getAttribute("slist");
	%>

	<%=types%>



	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>FirstName</th>
				<th>MiddleName</th>
				<th>LastName</th>
				<th>Gender</th>
				<th>Phone No</th>
				<th>Email</th>
			</tr>
		</thead>

		<tbody>

			<%
				for (Student student : slist) {
			%>
			<tr>
				<td><%=student.getStudentId()%></td>
				<td><%=student.getFirstName()%></td>
				<td><%=student.getMiddleName()%></td>
				<td><%=student.getLastName()%></td>
				<td><%=student.getGender()%></td>
				<td><%=student.getMobileNo()%></td>
				<td><%=student.getEmail()%></td>
			</tr>

			<%
				}
			%>
		</tbody>
	</table>


</body>
</html>