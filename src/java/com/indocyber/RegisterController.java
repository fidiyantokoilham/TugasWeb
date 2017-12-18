/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.indocyber;

import com.indocyber.Bean.RegistrationFormBean;
import com.indocyber.dao.CustomerService;
import com.indocyber.model.Customer;
import com.indocyber.util.PasswordDigest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Acer
 */
@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    CustomerService cs;

    @RequestMapping("")
    public String registerForm(Model model) {
        RegistrationFormBean registerBean = new RegistrationFormBean();
        //registerBean.setLastName("Smith");
        model.addAttribute("registerBean", registerBean);
        return "registration";
    }

    @RequestMapping(value = "/save")
    public String saveRegistration(@ModelAttribute("registerBean") RegistrationFormBean registerBean,
            Model model) { // MODEL ITU DATA YANG DILEMPAR KE JSP. DAN CUMA BISA DIPANGGIL DI JSP ITU
        Customer user = new Customer();
        String encryptedPassword
                = PasswordDigest.createEncryptedPassword(registerBean.getPassword());
        user.setFirstname(registerBean.getFirstname());
        user.setLastname(registerBean.getLastname());
        user.setUsername(registerBean.getUsername());
        user.setAddress(registerBean.getAddress());
        user.setEmail(registerBean.getEmail());
        user.setPhone(registerBean.getPhone());
        user.setPassword(encryptedPassword);

        cs.saveCustomer(user);

        model.addAttribute("data", registerBean);
        return "successregistration";
    }

}
