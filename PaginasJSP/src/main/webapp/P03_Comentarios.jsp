<%-- 
    Document   : P03_Comentarios.jsp
    Author     : TurtleLearning.com: Aser
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<title>P03_Comentarios</title>
</head>
<body>

<h1>Comentários</h1>
<p>Numa página JSP encontramos comentários de 3 tipos: Scriptlet, Java e HTML.</p>
    
<h2>Comentários numa scriptlet:</h2>
<%--    
    Este comentário será ignorado pelo servlet containter (Tomcat ou Jetty) e não é enviado para a 
    geração do source code da servlet. Todo o restante texto será usado para produzir a servlet.
--%>

<h2>Comentários da linguagem Java dentro da scriptlet:</h2>
<% 
    /* Vamos criar um objeto da classe Date */
    java.util.Date d = new java.util.Date();
    //vamos escrever  oconteúdo do objeto
    out.println(d);
%> 
    
<h2>Comentários HTML:</h2> 
<!-- 
    Comentário HTML. Consulte o código da servlet para confirmar que foi
    passado para lá 
-->

</body>
</html>