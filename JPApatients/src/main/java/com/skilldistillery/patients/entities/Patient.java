package com.skilldistillery.patients.entities;

import java.time.LocalDateTime;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "patient_info")
public class Patient {

	public Patient() {
	}

	public Patient(int id, String fullName, String reasonVisit, String insuranceInfo, LocalDateTime appointmentDate,
			String primaryDoctor, int heartRate, int systolic, int diastolic, int temperature, int respirationRate,
			LocalDateTime dateOfBirth) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.reasonVisit = reasonVisit;
		this.insuranceInfo = insuranceInfo;
		this.appointmentDate = appointmentDate;
		this.primaryDoctor = primaryDoctor;
		this.heartRate = heartRate;
		this.systolic = systolic;
		this.diastolic = diastolic;
		this.temperature = temperature;
		this.respirationRate = respirationRate;
		this.dateOfBirth = dateOfBirth;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "full_name")
	private String fullName;

	@Column(name = "reason_visit")
	private String reasonVisit;

	@Column(name = "insurance_info")
	private String insuranceInfo;

	@Column(name = "appointment_date")
	private LocalDateTime appointmentDate;

	@Column(name = "primary_doctor")
	private String primaryDoctor;

	@Column(name = "heart_rate")
	private int heartRate;

	private int systolic;

	private int diastolic;

	private int temperature;

	@Column(name = "respiration_rate")
	private int respirationRate;

	@Column(name = "date_of_birth")
	private LocalDateTime dateOfBirth;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getReasonVisit() {
		return reasonVisit;
	}

	public void setReasonVisit(String reasonVisit) {
		this.reasonVisit = reasonVisit;
	}

	public String getInsuranceInfo() {
		return insuranceInfo;
	}

	public void setInsuranceInfo(String insuranceInfo) {
		this.insuranceInfo = insuranceInfo;
	}

	public LocalDateTime getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(LocalDateTime appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public String getPrimaryDoctor() {
		return primaryDoctor;
	}

	public void setPrimaryDoctor(String primaryDoctor) {
		this.primaryDoctor = primaryDoctor;
	}

	public int getHeartRate() {
		return heartRate;
	}

	public void setHeartRate(int heartRate) {
		this.heartRate = heartRate;
	}

	public int getSystolic() {
		return systolic;
	}

	public void setSystolic(int systolic) {
		this.systolic = systolic;
	}

	public int getDiastolic() {
		return diastolic;
	}

	public void setDiastolic(int diastolic) {
		this.diastolic = diastolic;
	}

	public int getRespirationRate() {
		return respirationRate;
	}

	public void setRespirationRate(int respirationRate) {
		this.respirationRate = respirationRate;
	}

	@Override
	public int hashCode() {
		return Objects.hash(appointmentDate, dateOfBirth, diastolic, fullName, heartRate, id, insuranceInfo,
				primaryDoctor, reasonVisit, respirationRate, systolic, temperature);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Patient other = (Patient) obj;
		return Objects.equals(appointmentDate, other.appointmentDate) && Objects.equals(dateOfBirth, other.dateOfBirth)
				&& diastolic == other.diastolic && Objects.equals(fullName, other.fullName)
				&& heartRate == other.heartRate && id == other.id && Objects.equals(insuranceInfo, other.insuranceInfo)
				&& Objects.equals(primaryDoctor, other.primaryDoctor) && Objects.equals(reasonVisit, other.reasonVisit)
				&& respirationRate == other.respirationRate && systolic == other.systolic
				&& temperature == other.temperature;
	}

	@Override
	public String toString() {
		return "Patient [id=" + id + ", fullName=" + fullName + ", reasonVisit=" + reasonVisit + ", insuranceInfo="
				+ insuranceInfo + ", appointmentDate=" + appointmentDate + ", primaryDoctor=" + primaryDoctor
				+ ", heartRate=" + heartRate + ", systolic=" + systolic + ", diastolic=" + diastolic + ", temperature="
				+ temperature + ", respirationRate=" + respirationRate + ", dateOfBirth=" + dateOfBirth + "]";
	}

	public int getTemperature() {
		return temperature;
	}

	public void setTemperature(int temperature) {
		this.temperature = temperature;
	}

	public LocalDateTime getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(LocalDateTime dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

}
