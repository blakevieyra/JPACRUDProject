
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Patient</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<div class = "header">
	<h2><em>Update Patient</em></h3>
</div>
	<div class="update">
		<form action="updatePatient.do" method="post">

			<input type="hidden" name="id" value="${patients.id}"> <label
				for="fullName">Patient name: </label> <input type="text"
				name="fullName" value="${patients.fullName}" required> <br>

			<label for="reasonVisit">Reason for visit: </label> <input
				type="text" name="reasonVisit" value="${patients.reasonVisit}"
				required> <br> <label for="dateOfBirth">Date of
				birth: </label> <input type="datetime-local" name="dateOfBirth"
				value="${patients.dateOfBirth}" required> <br> <label
				for="appointmentDate">Appointment Date: </label> <input
				type="datetime-local" name="appointmentDate"
				value="${patients.appointmentDate}" required> <br> <label
				for="systolic">Systolic BP: </label> <input type="number"
				name="systolic" value="${patients.systolic}" required> <br>

			<label for="diastolic">Diastolic BP: </label> <input type="number"
				name="diastolic" value="${patients.diastolic}" required> <br>

			<label for="heartRate">Heart Rate: </label> <input type="number"
				name="heartRate" value="${patients.heartRate}" required> <br>

			<label for="temperature">Temperature: </label> <input type="number"
				name="temperature" value="${patients.temperature}" required>
			<br> <label for="primaryDoctor">Primary Doctor: </label> <input
				type="text" name="primaryDoctor" value="${patients.primaryDoctor}"
				required> <br> <label for="insuranceInfo">Insurance
				Info: </label> <input type="text" name="insuranceInfo"
				value="${patients.insuranceInfo}" required> <br> <input
				type="submit" value="Submit">
		</form>
	</div>
	
	<div class="links">
		<p>
						<a class="btn" href="index.do">Go Back</a>

		</p>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>