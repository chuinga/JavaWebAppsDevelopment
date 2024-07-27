<%-- 
    Document   : P09_Forward_b.jsp
    Author     : TurtleLearning.com: Jose Aser
--%>
<%@page import = "java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>P09_Forward_b</title>
    </head>
    <body>
        <h1>Chamar outra JSP com Forward e passando parâmetros</h1>
        <jsp:forward page="P09_Forward_a.jsp" >
            <jsp:param name="Nome"   value="Manuel Joaquim" />
            <jsp:param name="Morada" value="Rua do Lá Vai Um, 30, 1º Direito" />
        </jsp:forward>
        <hr>
        <%--
        <h1>Chamar outra JSP com Forward e sem passar parâmetros</h1>
        <jsp:forward page="P09_Forward_a.jsp" />
        <hr>
        --%>
    </body>
</html>