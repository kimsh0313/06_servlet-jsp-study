package com.ksh.servlet.section04.forward;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/fs")
public class FirstStep extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("첫번째 목적지(경유지) 도착");

        String name = req.getParameter("name");
        int age = Integer.parseInt(req.getParameter("age"));

        System.out.println(name +"     "+ age);

        //servlet에서 servlet으로 이동 : forwarding (RequestDispatcher)
        RequestDispatcher rd = req.getRequestDispatcher("/ss");;
        rd.forward(req,resp);//현재 서블릿에서 생성된  req,resp 객체를 같이 전송해줌
        //이동되는 서블릿에서 ㅅㅏ용

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

}