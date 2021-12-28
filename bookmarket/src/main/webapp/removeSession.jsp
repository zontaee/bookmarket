<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    System.out.println("세션로그");
    session.invalidate();
    response.sendRedirect("thanksCustomer.jsp");
    %>
