
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Patient</title>
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">


</head>
<body>
<h1>Add Patient</h1>
	<form method="post" action="addPatient.do">

		<label for="fullName">Full Name:</label> <input type="text"
			id="fullName" name="fullName"><br><br>
			 
		<label for="reasonVisit">Reason Visit:</label> <input type="text"
			id="reasonVisit" name="reasonVisit"><br><br>
			 
		<label for="dateOfBirth">Date of Birth: </label> <input type="datetime-local" id="dateOfBirth"
			name="dateOfBirth"><br><br> 
			
		<label for="appointmentDate">Appointment Date: </label> <input type="datetime-local" id="appointmentDate"
			name="appointmentDate"><br><br> 
			
		<label for="heartRate">Heart Rate: </label> <input type="number" id="heartRate"
			name="heartRate"><br><br> 			
			
		<label for="respirationRate">Respiration Rate: </label> <input type="number" id="respirationRate"
			name="respirationRate"><br><br> 			
			
		<label for="systolic">Systolic BP: </label> <input type="number" id="systolic"
			name="systolic"><br><br> 			
			
		<label for="diastolic">Diastolic BP: </label> <input type="number" id="diastolic"
			name="diastolic"><br><br> 			
			
		<label for="temperature">Temperature: </label> <input type="number" id="temperature"
			name="temperature"><br><br> 			
			
		<label for="insuranceInfo">Insurance Info: </label> <input type="text" id="insuranceInfo"
			name="insuranceInfo"><br><br>
			
		<label for="primaryDoctor">Primary Doctor: </label> <input type="text" id="primaryDoctor"
			name="primaryDoctor"><br><br>
						<input type="submit" value="Submit">
			</form>						
	<p>
			<a href="/">Go Back</a>
	</p>
	

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>

</body>


</html>