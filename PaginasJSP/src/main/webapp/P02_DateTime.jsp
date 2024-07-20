<%-- 
    Document   : P02_DateTime.jsp
    Author     : TurtleLearning.com: Jose Aser
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <title>P02_DateTime</title>
</head>
<body>
    <h1>Data e hora do sistema</h1>
    <p>Neste momento são: <%= new java.util.Date() %></p>
</body>
</html>