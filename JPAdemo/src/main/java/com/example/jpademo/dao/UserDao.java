package com.example.jpademo.dao;

import com.example.jpademo.entity.UserEntity;
import com.example.jpademo.until.PersistenceUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.List;

public class UserDao {
    EntityManager em;
    EntityTransaction tran;
    public UserDao(){
        em = PersistenceUtil.getEntityManagerFactory().createEntityManager();
        tran = em.getTransaction();
    }

    public List<UserEntity> getAllUsers() {
        TypedQuery<UserEntity> query = em.createQuery("SELECT u FROM UserEntity u", UserEntity.class);
        List<UserEntity> resultList = query.getResultList();
        return resultList;
    }

    public List<UserEntity> searchUsersByName(String name) {
        TypedQuery<UserEntity> query = em.createQuery("SELECT u FROM UserEntity u WHERE u.name LIKE :name", UserEntity.class);
        query.setParameter("name", "%" + name + "%");
        List<UserEntity> resultList = query.getResultList();
        return resultList;
    }

    public void insertUser(UserEntity user) {
        try {
            tran.begin();
            em.persist(user);
            tran.commit();
        } catch (Exception e) {
            System.out.println(e.getMessage());
            tran.rollback();
        }
    }

    public UserEntity getUserById(Integer id) {
        UserEntity user = em.find(UserEntity.class, id);
        return user;
    }

    public void updateUser(UserEntity user) {
        try {
            tran.begin();
            em.merge(user);
            tran.commit();
        } catch (Exception e) {
            System.out.println(e.getMessage());
            tran.rollback();
        }
    }

    public void deleteUser(UserEntity user) {
        try {
            tran.begin();
            em.remove(user);
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
