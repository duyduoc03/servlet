package com.example.jpademo.dao;

import com.example.jpademo.entity.UserEntity;
import com.example.jpademo.until.PersistenceUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

public class UserDao {
    EntityManager em;
    EntityTransaction tran;
    public UserDao(){
        em = PersistenceUtil.getEntityManagerFactory().createEntityManager();
        tran = em.getTransaction();
    }

    public void inserUser(UserEntity user){
        try {
            tran.begin();
            em.persist(user);
            tran.commit();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
            tran.rollback();
        }
    }
}
