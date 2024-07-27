<%-- 
    Document   : P10_JavaBean_b.jsp
    Author     : TurtleLearning.com: Jose Aser
--%>
<%@page import="pt.citeforma.utilizador.UtilizadorBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>P10_JavaBean_b</title>
    </head>
    <body>
        <h1>Utilizar JavaBean dentro de página JSP</h1>
        <h2>Esta versão usa as tags JSP</h2>
        <jsp:useBean id="utilizador" class="pt.citeforma.utilizador.UtilizadorBean" scope="page" />
        <jsp:setProperty name="utilizador" property="userName" value="JoseAntonio" />
        <jsp:setProperty name="utilizador" property="pwd" value="Xpto_1234" />

        <p>Utilizador = <jsp:getProperty name="utilizador" property="userName" /></p>
        <p>Password   = <jsp:getProperty name="utilizador" property="pwd" /></p>
        <p>Utilizador autenticado? <%= utilizador.validatePassword("JoseAntonio","Xpto_1234") %></p>
    </body>
</html>