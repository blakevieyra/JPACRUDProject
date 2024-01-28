package com.skilldistillery.patients.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.patients.entities.Patient;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class PatientDAOJpaImpl implements PatientDAO {
	// allows spring to auto-wire an entity manager

	@PersistenceContext
	private EntityManager em;

	// finds a single patient by id from the dao using em and return them
	@Override
	public Patient findPatientById(int id) {
		Patient foundPatient = em.find(Patient.class, id);
		return foundPatient;
	}

	// createQuery find all patients that match jpql statement in dao using em
	@Override
	public List<Patient> findAllPatients() {
		String jpql = "SELECT p FROM Patient p";
		List<Patient> patients = em.createQuery(jpql, Patient.class).getResultList();
		return patients;
	}

	// add a new patient into dao using em
	@Override
	public void addPatient(Patient patient) {
		em.persist(patient);
	}

	// Removes a patient from dao using em
	@Override
	public boolean deletePatient(Patient patient) {
		try {
			em.remove(patient);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	// Updates a patient from dao using em
	@Override
	public Patient updatePatient(Patient updatedPatient) {
		em.merge(updatedPatient);
		em.flush();
		return updatedPatient;
	}
}
