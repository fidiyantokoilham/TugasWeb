/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.indocyber.dao;

import com.indocyber.model.Customer;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Acer
 */
@Repository
@Transactional
public class CustomerService {

    static final Logger logger = Logger.getLogger(CustomerService.class.getName());

    @PersistenceUnit
    EntityManagerFactory emf;

    private EntityManager em;

    @Transactional
    public void saveCustomer(Customer user) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(user);
        em.getTransaction().commit();
        em.close();
    }

    public Customer findByUsername(String username) {
        Customer user = new Customer();
        try {
            em = emf.createEntityManager();
            Query query = em.createNamedQuery("Customer.findByUsername");
            query.setParameter("username", username);
            user = (Customer) query.getSingleResult();

        } catch (NoResultException nre) {
            logger.severe("Username tidak ada");
        }
        return user;
    }

}
