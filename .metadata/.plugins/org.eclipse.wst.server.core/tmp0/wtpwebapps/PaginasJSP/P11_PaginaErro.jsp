<%-- 
    Document   : P11_PaginaErro.jsp
    Author     : TurtleLearning.com: Jose Aser
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>P11_PaginaErro</title>
    </head>
    <body>
        <h1>Página de erro</h1>
        <table border="1">
            <tr><td>Status                   </td><td> <%= response.getStatus() %>           </td></tr>
            <tr><td>Status                   </td><td> ${pageContext.errorData.statusCode}   </td></tr>
            <tr><td>Where occurred the error </td><td> ${pageContext.errorData.requestURI}   </td></tr>
            <tr><td>Error message long       </td><td> ${pageContext.exception}              </td></tr>
            <tr><td>Error message long       </td><td> <%= exception.toString() %>           </td></tr>
            <tr><td>Error message short      </td><td> <%= exception.getMessage() %>         </td></tr>
        </table>
        <%--${pageContext.errorData.requestURI} is the only way I found to discover the JSP that caused the error --%>
    </body>
</html>