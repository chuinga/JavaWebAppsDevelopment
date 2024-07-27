<%-- 
    Document   : P08_IncludeParameters_a.jsp
    Author     : TurtleLearning.com: Jose Aser
--%>
<%@page import = "java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <!-- Página com conteúdo para ser incluído noutra JSP -->
        <h1>Este conteúdo foi incluído</h1>
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