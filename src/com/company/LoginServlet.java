package com.company;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "LoginServlet", urlPatterns = "/userinfo")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");
        String sex = req.getParameter("sex");
        int age = Integer.parseInt(req.getParameter("age"));
        String [] hobbies = req.getParameterValues("hobbies");
        String school = req.getParameter("schools");
        resp.setContentType("text/html;charset=utf-8");
        /*System.out.printf(name);
        System.out.printf(sex);
        System.out.printf(age);
        for(int i = 0;i < hobbies.length;i++){
            System.out.println(hobbies[i]);
        }
        System.out.printf(school);*/
        String [] targetSchools = {"外语学院","光电学院","管理学院"};
        if(age >= 18 && Arrays.asList(targetSchools).contains(school)){
            req.setAttribute("name",name);
            req.setAttribute("sex",sex);
            req.setAttribute("age",age);
            req.setAttribute("school",school);
            req.setAttribute("hobbies",hobbies);
            RequestDispatcher rd = req.getRequestDispatcher("/show.jsp");
            rd.forward(req,resp);

        }else {
            RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
            rd.forward(req,resp);
        }

    }
}
