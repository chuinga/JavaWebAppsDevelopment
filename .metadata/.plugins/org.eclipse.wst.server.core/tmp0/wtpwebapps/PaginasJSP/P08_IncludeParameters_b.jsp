<%-- 
    Document   : P08_IncludeParameters_b.jsp
    Author     : TurtleLearning.com: Jose Aser
--%>
<%@page import = "java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>P08_IncludeParameters_b</title>
    </head>
    <body>
        <h1>Chamar outra JSP passando parâmetros</h1>
        <p>
            A servlet gerada pela JSP vai fazer automaticamente fazer o URLEncode do parameter:<br>
            <% String morada = "Rua do Lá Vai Um, 30, 1º Direito"; %>
            <%= morada %><br>
            <%= URLEncoder.encode(morada,"UTF-8") %>
        </p>
        <jsp:include page="P08_IncludeParameters_a.jsp" >
            <jsp:param name="Nome"   value="Manuel Joaquim" />
            <jsp:param name="Morada" value="Rua do Lá Vai Um, 30, 1º Direito" />
        </jsp:include>
        <hr>
        <h1>Chamar JSP sem passar parâmetros</h1>
        <jsp:include page="P08_IncludeParameters_a.jsp" />
        <hr>
    </body>
</html>