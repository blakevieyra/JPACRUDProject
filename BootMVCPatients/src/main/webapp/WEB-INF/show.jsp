<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!-- <!-- dont forget to add the tag lib to access the EL
 -->

<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="styles.css">
<title>Patients</title>
</head>

<body>

	<div class="display">
		<!-- This is a null check so page doesnt break
 -->
		<c:choose>
			<c:when test="${! empty patients}">
				<ul>
					<li>Full Name: ${patients.fullName}</li>
					<li>Date of Appointment: ${patients.appointmentDate}</li>
					<li>Reason for Visit: ${patients.reasonVisit}</li>
					<li>Primary Doctor Name: ${patients.primaryDoctor}</li>
					<li>Heart Rate: ${patients.heartRate}</li>
					<li>Insurance on File: ${patients.insuranceInfo}</li>
					<li>Rate of respiration: ${patients.respirationRate}</li>
					<li>Systolic BP: ${patients.diastolic}</li>
					<li>Diastolic BP: ${patients.systolic}</li>
					<li>Temperature: ${patients.temperature}</li>
				</ul>

				<a href="updatePatient.do?id=${patients.id}">Update patient</a>
				<br>

				<a href="deletePatient.do?id=${patients.id}">Delete patient</a>
				<br>

			</c:when>
			<c:otherwise>
				<h4>No Patient found</h4>
			</c:otherwise>
		</c:choose>
	</div>


	<a href="/">Go Back</a>


</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>

</html>