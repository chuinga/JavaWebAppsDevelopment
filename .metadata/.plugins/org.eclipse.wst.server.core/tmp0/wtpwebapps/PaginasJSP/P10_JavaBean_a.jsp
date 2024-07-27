<%-- 
    Document   : P10_JavaBean_a.jsp
    Author     : TurtleLearning.com: Jose Aser
--%>
<%@page import="pt.citeforma.utilizador.UtilizadorBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>P10_JavaBean_a</title>
    </head>
    <body>
        <h1>Utilizar JavaBean dentro de página JSP</h1>
        <h2>Esta primeira versão não usa as tags JSP</h2>
        <%
            UtilizadorBean utilizador = new UtilizadorBean();
            utilizador.setUserName("JoseAntonio");
            utilizador.setPwd("Xpto_1234");
        %>
        <p>Utilizador = <%= utilizador.getUserName() %></p>
        <p>Password = <%= utilizador.getPwd() %></p>
        <p>Utilizador autenticado? <%= utilizador.validatePassword("JoseAntonio","Xpto_1234") %></p>
    </body>
</html>