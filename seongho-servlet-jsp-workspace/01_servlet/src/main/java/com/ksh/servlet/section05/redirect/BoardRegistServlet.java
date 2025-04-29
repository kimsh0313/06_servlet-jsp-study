package com.ksh.servlet.section05.redirect;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/board/regist")
public class BoardRegistServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("게시글 등록용 Servlet 실행");
        // 요청시 전달되는 데이터 뽑기
        req.setCharacterEncoding("UTF-8");
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        //디비에 인설트 해야됨

        //응답페이지 : 게시글 목록 페이즤
//        req.getRequestDispatcher("/board/boardList.html").forward(req,resp);
        //포워딩을 통해 해당 페이지가 나오긴 하는데 url이 그대로
        //새로 추가된 데이터를 다시 조회해서 뿌려야 되는데 조회가 안 도미
        //해결방버업 . 게시글 데이터를 db로부터 조회해서 board.html로 포워딩해주는 Servlet이 존재함
        //              해당 서블릿을 재호출하면 됨 (url재요청 == /board/list redirect)
        resp.sendRedirect("/servlet/board/list");

    }

}