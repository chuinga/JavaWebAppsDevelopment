<%-- 
    Document   : P09_Forward_a.jsp
    Author     : TurtleLearning.com: Jose Aser
--%>
<%@page import = "java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>P09_Forward_a</title>
    </head>
    <body>        
        <h1>Esta página foi chamada com <b>jsp:forward</b></h1>
        <h2>Ler parâmetros usando Java</h2>
        <% 
            String nome = request.getParameter("Nome");        
            String morada = request.getParameter("Morada");
            if (nome!=null && !nome.equals("")) {
                out.println("<p>Parametro Nome = " + nome +"</p>");
            } else {
                out.println("<p>Parametro Nome não foi enviado</p>");
            }
            if (morada!=null && !morada.equals("")) {
                morada = URLDecoder.decode(morada, "UTF-8");
                out.println("<p>Parametro Morada = " + morada +"</p>");
            } else {
                out.println("<p>Parametro Morada não foi enviado</p>");
            }
        %>
        <hr>
    </body>
</html>