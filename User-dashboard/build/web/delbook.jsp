
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
        <% 
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");  
                
                int bid = Integer.parseInt(request.getParameter("bookid"));
                CallableStatement cs = con.prepareCall("{call ADBMSproject.delbook(?)}");
                
                cs.setInt("bookid",bid);
                
                cs.execute();
                
                out.print("<script>");
                out.print("alert('Book Deleted Successfully');");
                out.print("location='dispbook.jsp';");
                out.print("</script>");
                
            }
            catch(Exception e) {
                out.println(e.getMessage());
            }
         
        %>
    
</html>
