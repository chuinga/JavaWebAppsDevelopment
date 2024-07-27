<%-- 
    Document   : P11_CriarErro.jsp
    Author     : TurtleLearning.com: Jose Aser
--%>
<%@ page import = "java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="P11_PaginaErro.jsp"%>
 
<%
    int i[] = new int[10]; 
    i[1] = 3;
    //i[1] = 4;
    if (i[1] == 3) {
        i[11] = 11; //java.lang.ArrayIndexOutOfBoundsException
        //throw (new java.lang.ArrayIndexOutOfBoundsException());
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P11_CriarErro</title>
</head>
<body>
<h1>Criar erro</h1>
<%
    if (i[1] == 4) {
        i[11] = 11; //java.lang.ArrayIndexOutOfBoundsException
        //throw (new SQLException("My error message"));
        //try {
        //    throw (new SQLException("My error message in P11_CriarErro.jsp"));
        //} catch (java.lang.Throwable t) {
        //    throw new ServletException(t);
        //}
    }
%>
</body>
</html>