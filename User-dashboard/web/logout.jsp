<%-- 
    Document   : logout
    Created on : 23 Aug, 2022, 5:47:13 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        if (session != null) {
            session.invalidate();
            response.sendRedirect("login.html");
        } else {
            response.sendRedirect("login.html");
        }
        %>
    </body>
</html>
