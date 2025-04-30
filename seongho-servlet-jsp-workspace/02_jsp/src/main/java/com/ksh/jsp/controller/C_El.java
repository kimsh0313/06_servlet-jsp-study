package com.ksh.jsp.controller;


import com.ksh.jsp.dto.BookDto;
import com.ksh.jsp.dto.PersonDto;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/el")
public class C_El extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // request Scope에 attribute 담기
        req.setAttribute("classroom", "2강인");
        req.setAttribute("student", new PersonDto(20,"홍긜뒹","ㄵ"));

        // session Scope에 attribute 담기
        HttpSession session = req.getSession();
        session.setAttribute("teacher", new PersonDto(20,"강보람","ㅇㅈ"));

        //application scope에 attribute 담기
        ServletContext application =req.getServletContext();
        application.setAttribute("academy", "ssg");

        //request 랑 session ,application에 동일한 attribute 담기
        req.setAttribute("scope","request에 담긴 데이타");
        session.setAttribute("scope","session에 담긴 데이타");
        application.setAttribute("scope","application에 담긴 데이타");

        req.setAttribute("big",10);
        req.setAttribute("small",3);

        req.setAttribute("str1" , "hi");
        req.setAttribute("str2", "hi");
        req.setAttribute("str3","bye");

        req.setAttribute("book1", new BookDto(1,"도서","저자"));
        req.setAttribute("book2",null);

        List<PersonDto> list1 = List.of(
                new PersonDto(20, "길동이", "남자"),
                new PersonDto(23, "개순이", "여자"),
                new PersonDto(25, "개똥이", "남자")
        );
        List<PersonDto> list2 = new ArrayList<>();
        req.setAttribute("list1",list1 );
        req.setAttribute("list2", list2);


        req.getRequestDispatcher("/section03/el.jsp").forward(req,resp);
    }



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

}