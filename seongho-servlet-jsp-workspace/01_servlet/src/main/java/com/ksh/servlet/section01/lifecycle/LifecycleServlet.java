package com.ksh.servlet.section01.lifecycle;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
/*
    * 해당 Service의 rul mapping
    * /lifecycle 요청시 실행되도록
      http://localhost:8080/servlet/lifecycle
 */
public class LifecycleServlet extends HttpServlet {
    public LifecycleServlet(){
        System.out.println("LifeCycleServlet 실행");
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("lifecycleservlet init 실행");
    }

//    @Override
//    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.print("lifecycleservlet service 실행");
//        switch(req.getMethod().toUpperCase()){
//            case "GET" :
//                System.out.println("get 방식");
//                break;
//            case "POST" :
//                System.out.println("post 방식");
//                break;
//        }
//    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("lifecycleservlet  do get");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("lifecycleservlet  do post");
    }


    @Override
    public void destroy() {
        System.out.print("lifecycleservlet destroy 실행");
    }
}
