package com.mmalz.dao;

import com.mmalz.model.UserRoles;
import com.mmalz.model.Users;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class UsersDAOImpl implements UsersDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void addUser(Users user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        Session session = sessionFactory.getCurrentSession();
        UserRoles role = (UserRoles) session.createQuery("from UserRoles where roleName = 'ROLE_USER'").getSingleResult();
        user.setRoleId(role.getRole_id());
        session.saveOrUpdate(user);
    }

    @Override
    public Users getUser(String username) {
        //TODO Change this
        Session session = sessionFactory.getCurrentSession();
        List<Users> userList= session.createQuery("from Users where username = :username").setParameter("username", username).getResultList();
        if (userList.size() > 0) {
            return userList.get(0);
        } else {
            return null;
        }
    }
}
