<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>



<!DOCTYPE html>

<html>


<head>
<meta charset="UTF-8">


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css">


<title>Home Page</title>
</head>

<body>
	<h2>
		<em>Please enter an ID to find, update, or delete a patient</em>
		</h2>
		<div class="head">
			<form action="getPatient.do" method="POST">
				<input type="number" name="id" /> <input type="submit"
					value="Find Patient" />
			</form>
		</div>

		<div class="header">
			<h2>
				<em>Patient Information</em>
				</h2>
		</div>

		<div class="info">
			<table>
				<tr id ="th">
					<th >Id</th>
					<th>Patient Name</th>
					<th>Date of Birth</th>
					<th>Reason for Visit</th>
					<th>Doctor Name</th>
					<th>Appointment Time</th>
					
				</tr>
				<c:forEach items="${patients}" var="patients">
					<tr>
						<td>${patients.id}</td>
						<td><a class="btn" href="getPatient.do?id=${patients.id}">${patients.fullName}</a></td>
						<td>${patients.dateOfBirth}</td>
						<td>${patients.reasonVisit}</td>
						<td>${patients.primaryDoctor}
						<td>${patients.appointmentDate}</td>

					</tr>
				</c:forEach>
			</table>
		</div>

		<div class="links">
			<a class="btn" href="addPatient.do">Add Patient</a>
		</div>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>

</html>