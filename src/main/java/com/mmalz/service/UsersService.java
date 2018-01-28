package com.mmalz.service;

import com.mmalz.model.Users;

public interface UsersService {
    void addUser(Users user);
    Users getUser(String username);
}
