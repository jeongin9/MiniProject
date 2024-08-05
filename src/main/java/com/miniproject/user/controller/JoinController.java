package com.miniproject.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.miniproject.userImpl.UserDAO;
import com.miniproject.user.UserVO;


public class JoinController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        String name = request.getParameter("name");
        String nickname = request.getParameter("nickname");
        String phone = request.getParameter("phone");


        UserVO user = new UserVO(id, pass, name, nickname, phone);

   
        UserDAO dao = new UserDAO();
        dao.insertUser(user);


        response.sendRedirect("login.jsp");
    }
}