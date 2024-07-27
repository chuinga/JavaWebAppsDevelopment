<%-- 
    Document   : P05_Expressoes.jsp
    Author     : TurtleLearning.com: Jose Aser
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos.css" rel="stylesheet" type="text/css">
        <title>P05_Expressoes</title>
    </head>
    <body>
        <h1>Expressões aritméticas e lógicas dentro duma JSP</h1>
        <%
            int x = 2;
            int y = 30;
            int r;
            boolean b = x < 10 && y > 20; //true
            boolean c = x == 10 && y == 20; //false
            r = x + y;
            out.println("x+y=" + r);
            out.println("  b=" + b);
            out.println("  c=" + c);
        %>
        <p>
            O output pode ser melhorado se escrito no meio do HTML:
        </p>
        <p>
            O resultado de x + y é <% out.println(r); %>
        </p>
    </body>
</html>