<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>



<!DOCTYPE html>

<html>


<head>
<meta charset="UTF-8">
<title>Patients Home Page</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="styles.css">

<body>
	<!-- asks user for the film id, send film id to mapped controller getFilm.do, accesses the film id request from database
 -->
	<h2>Please select from the following options.</h2>
	<form action="getPatient.do" method="POST">
		Patient Id: <input type="number" name="id" /> <input type="submit"
			value="Show Patient" />
	</form>
	<br>

	<a href="addPatient.do">Add Patient</a>
	<br>
	<br>

	<!-- 	item and var should match what is in line 25 of controller. Ahref must to a get request only to controller .do.
 -->
	<div class="index">
		<h3>Patient Information</h3>
		<br>
		<th>Id&nbsp;&nbsp;&nbsp;Patient Name&nbsp;&nbsp;&nbsp;Date of
			Birth&nbsp;&nbsp;&nbsp;Appointment Time&nbsp;&nbsp;&nbsp;Reason for
			Visit&nbsp;&nbsp;&nbsp;Doctor Info</th> <br>
		<c:forEach items="${patients}" var="patients">
			${patients.id}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
				href="getPatient.do?id=${patients.id}">${patients.fullName}</a>${patients.dateOfBirth}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${patients.appointmentDate}&nbsp;&nbsp;&nbsp;${patients.reasonVisit}&nbsp;&nbsp;&nbsp;${patients.primaryDoctor}<br>
		</c:forEach>
	</div>



	<!-- 	item and var should match what is in controller. Ahref must to a get request only to controller .do.
 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>


</body>

</html>