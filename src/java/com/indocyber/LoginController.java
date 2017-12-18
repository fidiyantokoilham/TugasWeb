/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.indocyber;

import com.indocyber.Bean.LoginBean;
import com.indocyber.dao.CustomerService;
import com.indocyber.model.Customer;
import com.indocyber.util.PasswordDigest;
import javax.servlet.http.HttpSession;
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
@RequestMapping("/login")
public class LoginController {
    
    @Autowired
    CustomerService cs;
    
    @RequestMapping("")
    public String goToLogin(Model model){
        LoginBean loginbean = new LoginBean();
        model.addAttribute("loginBean", loginbean);
        return"login";
    }
    
    @RequestMapping(value = "/check")
    public String checkLogin(HttpSession session, @ModelAttribute("loginBean") LoginBean loginBean, Model model) {
        Customer user = cs.findByUsername(loginBean.getUsername());
        if(user.getUsername()==null) {
            model.addAttribute("errMsg", "Username salah");
            return "login";
        }
        String encryptedPassword = PasswordDigest.createEncryptedPassword(loginBean.getPassword());
        if(!encryptedPassword.equals(user.getPassword())) {
            model.addAttribute("errMsg", "Password salah");
            return "login";
        }
        
        session.setAttribute("user", user);
        
        return "welcome";
    }
}
