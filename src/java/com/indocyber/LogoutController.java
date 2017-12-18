/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.indocyber;

import com.indocyber.Bean.CartBean;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Acer
 */
@Controller
@RequestMapping("/logout")
public class LogoutController {

    @RequestMapping()
    public String logout(HttpSession session, CartBean cb) {
        
        if (session.getAttribute("cart") != null) {
            cb = (CartBean) session.getAttribute("cart");
            cb.getCarts().clear();
        }

  
        session.removeAttribute("cart");
        session.invalidate();

        return "login";
    }
}
