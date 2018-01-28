package com.mmalz.service;

import com.mmalz.dao.UsersDAO;
import com.mmalz.model.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UsersServiceImpl implements UsersService{

    @Autowired
    private UsersDAO usersDAO;

    @Override
    @Transactional
    public void addUser(Users user) {
        usersDAO.addUser(user);
    }

    @Override
    @Transactional
    public Users getUser(String username) {
        return usersDAO.getUser(username);
    }
}
