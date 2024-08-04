package com.miniproject.userImpl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miniproject.user.UserService;
import com.miniproject.user.UserVO;

@Service
public class UserServiceImpl implements UserService {
    private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    private final UserDAO userDAO;

    @Autowired
    public UserServiceImpl(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @Override
    public UserVO loginUser(String id, String pass) {
        logger.info("Logging in user with id: {}", id);
        return userDAO.selectUserByIdAndPassword(id, pass);
    }

    @Override
    public boolean registerUser(UserVO user) {
        logger.info("Registering user with id: {}", user.getId());
        return userDAO.insertUser(user);
    }
}
