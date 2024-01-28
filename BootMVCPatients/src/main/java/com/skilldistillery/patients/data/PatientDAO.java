package com.skilldistillery.patients.data;

import java.util.List;

import com.skilldistillery.patients.entities.Patient;

public interface PatientDAO {

	Patient findPatientById(int id);

	List<Patient> findAllPatients();

	void addPatient(Patient patient);

	boolean deletePatient(Patient patient);

	boolean updatePatient(int id, Patient patient);
}
