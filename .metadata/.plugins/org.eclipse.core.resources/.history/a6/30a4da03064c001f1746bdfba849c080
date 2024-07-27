<%-- 
    Document   : P07_ConstruirTabela.jsp
    Author     : TurtleLearning.com: Aser
--%>
<%@page import = "java.util.Map" %>
<%@page import = "java.util.HashMap" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% HashMap<String,String> userList = new HashMap<String,String>();
   userList.put("123","Antonio");
   userList.put("124","João");
   userList.put("125","Cristina");
   userList.put("126","Inês");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>P07_ConstruirTabela</title>
</head>
<body>
    <h2>Lista de utilizadores</h2>
    <table border="1">
        <tr>
            <th>Número</th>
            <th>Nome</th>
        </tr>
        <% for (String key: userList.keySet()) { %>
        <tr>
            <td><%= key %></td>
            <td><%= userList.get(key) %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>