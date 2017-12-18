/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.indocyber.dao;

import com.indocyber.model.Product;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Acer
 */
@Repository
@Transactional
public class ProductService {
    
    @PersistenceContext
    private EntityManager em;

    public ProductService() {
    }

    public ProductService(EntityManager em) {
        this.em = em;
    }

    /**
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }
    
    @Transactional
    public void addProduct(Product prod){
        this.em.persist(prod);
    }
    
    public List<Product> findAll(){
        List<Product> prod;
        prod = this.em.createNamedQuery("Product.findAll").getResultList();
        return prod;
    }
    
    public Product findById(Integer id){
        return em.find(Product.class, id);
    }
    
}
