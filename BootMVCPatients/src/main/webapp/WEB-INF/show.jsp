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
<link rel="stylesheet" type="text/css" href="styles.css">

<title>Patients Info</title>
</head>

<body>
	<h3>Patient Information</h3>
	<div class="display">
		<!-- This is a null check so page doesnt break
 -->
		<c:choose>
			<c:when test="${! empty patients}">
				<ul>
					<li><strong>Full Name:</strong> ${patients.fullName}</li>
					<li><strong>Date of Birth:</strong> ${patients.dateOfBirth}</li>
					<li><strong>Date of Appointment:</strong>
						${patients.appointmentDate}</li>
					<li><strong>Reason for Visit:</strong> ${patients.reasonVisit}</li>
					<li><strong>Primary Doctor Name:</strong>
						${patients.primaryDoctor}</li>
					<li><strong>Heart Rate:</strong> ${patients.heartRate}</li>
					<li><strong>Insurance on File:</strong>
						${patients.insuranceInfo}</li>
					<li><strong>Rate of respiration:</strong>
						${patients.respirationRate}</li>
					<li><strong>Systolic BP:</strong> ${patients.diastolic}</li>
					<li><strong>Diastolic BP:</strong> ${patients.systolic}</li>
					<li><strong>Temperature</strong> : ${patients.temperature}</li>
				</ul>
			</c:when>
			<c:otherwise>
				<h4>No Patient found</h4>
			</c:otherwise>
		</c:choose>
	</div>

	<div class="links">
		<a href="updatePatient.do?id=${patients.id}">Update patient</a> 
		<a href="deletePatient.do?id=${patients.id}">Delete patient</a> 
		<a href="/">Go Back</a>
	</div>

</body>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>

</html>