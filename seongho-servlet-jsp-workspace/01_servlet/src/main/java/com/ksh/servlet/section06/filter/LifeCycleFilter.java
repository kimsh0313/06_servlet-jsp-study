package com.ksh.servlet.section06.filter;

import jakarta.servlet.*;

import java.io.IOException;

public class LifeCycleFilter implements Filter {
    public LifeCycleFilter(){
        System.out.println("`````````````````실행`````````````");
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("init~~~~~~~~~~~~~~~~~~~~~~~~");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        //서블릿 실행전 실행할 코드
        System.out.println("~~~~~~~~~~~~~~~~~~~lifecyclefilter dofile() 메소드 실행 서블릿 실행 전 시점");

        filterChain.doFilter(servletRequest,servletResponse);// 다음 필터 or기존 서블릿 실행 구문
        //서블릿 실행후 실행할 코드
        System.out.println("~~~~~~~~~~~~~~~~~~~lifecyclefilter dofile() 메소드 실행 서블릿 실행 후 시점");

    }

    @Override
    public void destroy() {

        System.out.println("~~~~~~~~~~~~~~~~~~~lifecyclefilter destroy() 메소드 실행");
    }
}
