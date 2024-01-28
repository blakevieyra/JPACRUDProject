package com.skilldistillery.patients.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class PatientTest {

	private EntityManager em;
	private static EntityManagerFactory emf;
	private Patient patients;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("Patients");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		patients = em.find(Patient.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		patients = null;
		em.close();
	}

	@Test
	void test_Patients_entity_mapping() {
		assertNotNull(patients);
		assertEquals("Blake Vieyra", patients.getFullName());
		assertEquals(80, patients.getHeartRate());

	}
}