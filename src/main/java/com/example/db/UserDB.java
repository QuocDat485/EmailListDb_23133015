package com.example.db;

import com.example.model.User;
import com.example.util.DBUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.logging.Logger;

public class UserDB {
    private static final Logger LOGGER = Logger.getLogger(UserDB.class.getName());

    public static void insert(User user) {
        if (user == null) {
            LOGGER.severe("User object is null, cannot insert.");
            return;
        }
        EntityManager em = DBUtil.getEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            LOGGER.info("Persisting user: " + user.getEmail());
            em.persist(user);
            em.flush(); // Ép ghi dữ liệu ngay
            trans.commit();
            LOGGER.info("User inserted successfully: " + user.getEmail());
        } catch (Exception e) {
            if (trans.isActive()) {
                trans.rollback();
            }
            LOGGER.severe("Failed to insert user: " + e.getMessage());
        } finally {
            em.close();
        }
    }
}