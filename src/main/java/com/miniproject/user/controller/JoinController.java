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
public class JoinController {

    private final UserService userService;

    @Autowired
    public JoinController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/join.do", method = RequestMethod.GET)
    public String showJoinForm() {
        return "join"; // 회원가입 폼을 보여줍니다.
    }

    @RequestMapping(value = "/join.do", method = RequestMethod.POST)
    public String join(UserVO user) {
        boolean isRegistered = userService.registerUser(user);
        if (isRegistered) {
            return "redirect:/user/login.do"; // 회원가입 성공 후 로그인 페이지로 리다이렉트
        } else {
            return "join"; // 회원가입 실패 시 다시 회원가입 페이지로
        }
    }
}
