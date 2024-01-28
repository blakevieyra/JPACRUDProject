package com.skilldistillery.patients.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.patients.data.PatientDAO;
import com.skilldistillery.patients.entities.Patient;

@Controller
public class PatientController {

	@Autowired
	private PatientDAO patientsDAO;

	// spring auto wires the home page to the jsp page in the WEB-INF folder. Inject
	// a model for data.
	@GetMapping({ "", "/", "index.do" })
	public String index(Model model) {
		List<Patient> patients = patientsDAO.findAllPatients();
		model.addAttribute("patients", patients);
		return "index";
	}

	// form request controller method, controller get requests, route must match
	// form action name. Create film object add to view. Inject model object as
	// param, spring uses model to add attribute.Can command object instead of
	// Request param: Film film if getter match.

	// this handle the user post request when filmId is entered into searchbar and
	// return film info from
	// home jsp to show

	@RequestMapping(path = "getPatient.do", params = "id")
	public String postPatientById(@RequestParam("id") int id, Model model) {
		Patient patients = patientsDAO.findPatientById(id);
		model.addAttribute("patients", patients);
		return "show";
	}

	// this handle the href get request from home jsp when user click on the title
	// link

	@GetMapping(path = "addPatient.do")
	public String addPatient() {
		return "addPatient";
	}

	@PostMapping(path = "addPatient.do")
	public ModelAndView addPatient(Patient patient, Model model) {
		ModelAndView mv = new ModelAndView();
		patientsDAO.addPatient(patient);
		mv.setViewName("complete");
		return mv;
	}

	@RequestMapping(path = "deletePatient.do", params = "id")
	public ModelAndView deletePatient(@RequestParam("id") int id, Model model) {
		ModelAndView mv = new ModelAndView();
		Patient patient = patientsDAO.findPatientById(id);
		boolean isDeleted = patientsDAO.deletePatient(patient);
		mv.addObject("Error", isDeleted);
		mv.setViewName("complete");
		return mv;
	}

	@GetMapping(path = "updatePatient.do")
	public String updatePatient(@RequestParam("id") int id, Model model) {
		System.out.println("********************************************************/updatePatient.do******************************************");
		Patient patient = patientsDAO.findPatientById(id);
		model.addAttribute("patients", patient);
		return "updatePatient";
	}

	@PostMapping("/update")
	public String updatePatient(@RequestParam("id") int id, @ModelAttribute Patient patient) throws SQLException {
		System.out.println("********************************************************/update******************************************");
		Patient existingPatient = patientsDAO.findPatientById(id);
		existingPatient.setFullName(patient.getFullName());
		existingPatient.setDateOfBirth(patient.getDateOfBirth());
		existingPatient.setSystolic(patient.getSystolic());
		existingPatient.setDiastolic(patient.getDiastolic());
		existingPatient.setHeartRate(patient.getHeartRate());
		existingPatient.setRespirationRate(patient.getRespirationRate());
		existingPatient.setAppointmentDate(patient.getAppointmentDate());
		existingPatient.setTemperature(patient.getTemperature());
		existingPatient.setInsuranceInfo(patient.getInsuranceInfo());
		existingPatient.setPrimaryDoctor(patient.getPrimaryDoctor());
		existingPatient.setReasonVisit(patient.getReasonVisit());
		patientsDAO.updatePatient(existingPatient);
		return "redirect:/getPatient.do?id=" + id;
	}

}
