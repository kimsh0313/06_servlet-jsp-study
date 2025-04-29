package com.ksh.jsp.controller;


import com.ksh.jsp.dto.BookDto;
import com.ksh.jsp.dto.PersonDto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/tag-element")
public class A_Tag extends HttpServlet{
        @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            int no = Integer.parseInt(req.getParameter("no"));
            BookDto bk = new BookDto(1, "JSP마스터","김ㅌㅌ");

            List<PersonDto> list = List.of(
                    new PersonDto(11,"홍길동","ㄵ"),

                    new PersonDto(13,"홍길슨","ㅇㅈ"),
                    new PersonDto(15,"홍말동","ㄵ")
            );

            req.setAttribute("book",bk);

            HttpSession session = req.getSession();
            session.setAttribute("list",list);

            ServletContext application = req.getServletContext();
            application.setAttribute("academy", "ssg");

            RequestDispatcher rd = req.getRequestDispatcher("/section01/tagElement.jsp");
            rd.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    }

}