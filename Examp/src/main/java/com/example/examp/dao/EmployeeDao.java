package com.example.examp.dao;

import com.example.examp.entity.EmployeeEntity;
import com.example.examp.until.PersistenceUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.List;

public class EmployeeDao {
    EntityManager em;
    EntityTransaction tran;
    public EmployeeDao(){
        em = PersistenceUtil.getEntityManagerFactory().createEntityManager();
        tran = em.getTransaction();
    }

    public List<EmployeeEntity> getAllEmployees() {
        TypedQuery<EmployeeEntity> query = em.createQuery("SELECT u FROM EmployeeEntity u", EmployeeEntity.class);
        List<EmployeeEntity> resultList = query.getResultList();
        return resultList;
    }

    public void insertEmployee(EmployeeEntity employee) {
        try {
            tran.begin();
            em.persist(employee);
            tran.commit();
        } catch (Exception e) {
            System.out.println(e.getMessage());
            tran.rollback();
        }
    }

    public void closeEntityManager() {
        em.close();
    }

}
