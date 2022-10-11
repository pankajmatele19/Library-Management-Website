
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>


    <%
            String name = request.getParameter("bname");
            String au = request.getParameter("author");
            int q = Integer.parseInt(request.getParameter("quan"));
            String d = request.getParameter("dept");
            
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
                CallableStatement cs = con.prepareCall("{call ADBMSproject.addbooks(?,?,?,?,?)}");

                cs.setString(1, name);
                cs.setString(2, au);
                cs.setInt(3, q);
                cs.setString(4, d);
                cs.registerOutParameter(5, java.sql.Types.VARCHAR);

                cs.execute();
   
                String e = cs.getString(5);
                if(e.equals("Book Added Successfully")) {
                out.println("<script>");
                out.println("alert('" + e +"');");
                out.println("location='dispbook.jsp';");
                out.println("</script>");
                }
                else {
                out.println("<script>");
                out.println("alert('" + e +"');");
                out.println("location='addbo.jsp';");
                out.println("</script>");
                }
            }
            catch (Exception e) {
            out.println(e.getMessage());
            }

    %>

</html>
