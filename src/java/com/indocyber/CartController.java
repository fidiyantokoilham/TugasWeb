/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.indocyber;

import com.indocyber.Bean.CartBean;
import com.indocyber.dao.ProductService;
import com.indocyber.model.Product;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Acer
 */
@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    ProductService ps;

    CartBean cart = new CartBean();
    double totalHargaDalamChart;
    int key = 1;

    @RequestMapping(value = "/add/{productID}")
    public String addCart(@PathVariable Integer productID, Model model, HttpSession totalHarga, HttpSession session) {
        try {
            Product prod = ps.findById(productID);
            totalHargaDalamChart = totalHargaDalamChart + prod.getHarga();

            cart.getCarts().put(key++, prod);
            int count = cart.getCarts().size();
//            System.out.println("tot: "+count);
            totalHarga.setAttribute("total", totalHargaDalamChart);
            model.addAttribute("carts", count);
            session.setAttribute("cart", cart);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/product/all";
    }

    @RequestMapping(value = "/show")
    public String showCart(Model model, HttpSession session) {
        return "carts";
    }

    @RequestMapping(value = "/{productID}/{value}")
    public String removeCart(@PathVariable Integer productID, @PathVariable Integer value, HttpSession totalHarga, Model model, HttpSession session) {

        try {
            Product prod = ps.findById(productID);
            if (prod == null) {
                model.addAttribute("errMsg", "Belom ada barang yg dipilih");
                return "product";
            }
            totalHargaDalamChart = totalHargaDalamChart - prod.getHarga();
            cart.getCarts().remove(value, prod);
//            cart.getCarts().remove(ps);
            int count = cart.getCarts().size();
//            System.out.println("tot: "+count);
            totalHarga.setAttribute("total", totalHargaDalamChart);
            model.addAttribute("carts", count);
            session.setAttribute("cart", cart);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "carts";
    }
}
