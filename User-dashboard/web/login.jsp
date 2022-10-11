<%-- 
    Document   : login
    Created on : 14 Aug, 2022, 8:03:22 AM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");

                String un = request.getParameter("un");
                String pass = request.getParameter("pass");

                CallableStatement cs = con.prepareCall("{? = call ADBMSproject.validate_login(?,?)}");

                cs.registerOutParameter(1, Types.VARCHAR);
                cs.setString(2, un);
                cs.setString(3, pass);
                cs.execute();
                String res = cs.getString(1);

                if (res.equals("Login successfully")) {
                    session.setAttribute("username", un);
//                    response.sendRedirect("index.jsp");
                    out.print("<script>");
                    out.print("alert('"+ cs.getString(1)+"');");
                    out.print("location='index.jsp';");
                    out.print("</script>");
                } else {
//                    RequestDispatcher rd = request.getRequestDispatcher("login.html");
//                    rd.forward(request, response);
                    out.print("<script>");
                    out.print("alert('"+ cs.getString(1)+"');");
                    out.print("location='login.html';");
                    out.print("</script>");
                }

            } catch (Exception e) {
                out.println(e.getMessage());
            }

        %>
    </body>
</html>
