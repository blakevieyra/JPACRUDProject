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


<title>Patients Home Page</title>
</head>

<body>
	<!-- asks user for the film id, send film id to mapped controller getFilm.do, accesses the film id request from database
 -->
 <div class="head">
	<h3>Please enter a patient ID.</h3>
	<form action="getPatient.do" method="POST">
		Patient Id: <input type="number" name="id" /> <input type="submit"
			value="Show Patient" />
	</form>
	</div>
	<br>
	<a href="addPatient.do">Add Patient</a>

	<br>
	

	<!-- 	item and var should match what is in line 25 of controller. Ahref must to a get request only to controller .do.
 -->
	<div class="info">
		<h3>Patient Information</h3>
		<table>
			<tr>
				<th>Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th>Patient
					Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th>Date of
					Birth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th>Appointment
					Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th>Reason for
					Visit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
				<th>Doctor Info&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			</tr>
			<c:forEach items="${patients}" var="patients">
				<tr>
					<td>${patients.id}</td>
					<td><a href="getPatient.do?id=${patients.id}">${patients.fullName}</a></td>
					<td>${patients.dateOfBirth}</td>
					<td>${patients.appointmentDate}</td>
					<td>${patients.reasonVisit}</td>
					<td>${patients.primaryDoctor}
				</tr>

			</c:forEach>
		</table>
	</div>



	<!-- 	item and var should match what is in controller. Ahref must to a get request only to controller .do.
 -->


</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>

</html>