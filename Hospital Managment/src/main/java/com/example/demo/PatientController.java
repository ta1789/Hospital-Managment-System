package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class PatientController{
    @Autowired
    private PatientRepository repo;

    @Autowired
    private ContactRepository repo1;

    @GetMapping("/")
    public String registration(){
        return "index";
    }
    @GetMapping("/registration")
    public String registration1(){
        return "patient/registration";
    }

    @GetMapping("/signin")
    public String signin(){
        return "patient/user-login";
    }

    @GetMapping("/dlogin")
    public String dloginin(){
        return "doctor/dlogin";
    }

    @GetMapping("/doctor-view")
    public String view(){
        return "doctor/view";
    }

    @GetMapping("/aboutus")
    public String aboutus(){
        return "About/aboutus";
    }

    @GetMapping("/contact")
    public String contact1(){
        return "contact";
    }

    @GetMapping("/adminlogin")
    public String adminlogin(){
        return "admin/index";
    }

    @PostMapping("/register")
    public String Registration1(@ModelAttribute Patient patient,Model model){
        System.out.println(patient.getName());
        System.out.println(patient.getAddress());
        System.out.println(patient.getCity());
        System.out.println(patient.getGender());
        System.out.println(patient.getPassword());
        System.out.println(patient.getEmail());
        System.out.println(patient.toString());
        Patient p= repo.save(patient);
        model.addAttribute("message",p.getEmail()+" Thank You for Registering!");
        return "patient/welcome";
    }

    @PostMapping("/contactus")
    public String Registration2(@ModelAttribute Contact contact,Model model){
        System.out.println(contact.getFullname());
        System.out.println(contact.getEmail());
        System.out.println(contact.getPassword());
        System.out.println(contact.getContactno());
        System.out.println(contact.getMessage());
        Contact p1= repo1.save(contact);
        model.addAttribute("message",p1.getEmail()+" Thank You for Contacting Us we will respond shortly!");
        return "welcome1";
    }

    /*@GetMapping("/signin")
    public List<Patient> signin(){

        String n1=repo.findById();
        model.addAttribute("message",p.getEmail()+" Thank You for Registering!");
        return "patient/welcome";
    }*/
}
