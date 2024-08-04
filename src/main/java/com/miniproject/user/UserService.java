package com.miniproject.user;

public interface UserService {
    UserVO loginUser(String id, String pass);
    boolean registerUser(UserVO user);
}
