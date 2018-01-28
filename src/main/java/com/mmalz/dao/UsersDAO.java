package com.mmalz.dao;

import com.mmalz.model.Users;

public interface UsersDAO {
    void addUser(Users user);
    Users getUser(String username);
}
