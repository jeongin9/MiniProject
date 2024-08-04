// LoginController.java
package com.miniproject.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.miniproject.user.UserService;
import com.miniproject.user.UserVO;

@Controller
@RequestMapping("/user")
public class LoginController {

    private final UserService userService;

    @Autowired
    public LoginController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String showLoginForm() {
        return "login"; // 로그인 폼을 보여줍니다.
    }

    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public ModelAndView login(String id, String pass) {
        UserVO user = userService.loginUser(id, pass);
        if (user != null) {
            return new ModelAndView("index", "user", user); // 로그인 성공 후 index.jsp로 이동
        } else {
            return new ModelAndView("login", "message", "Invalid credentials"); // 로그인 실패
        }
    }
}
