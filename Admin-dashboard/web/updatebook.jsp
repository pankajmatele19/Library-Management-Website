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
                int q = Integer.parseInt(request.getParameter("q"));
                CallableStatement cs = con.prepareCall("{call ADBMSproject.updatebook(?,?)}");
                
                cs.setInt(1,bid);
                cs.setInt(2, q);
                cs.execute();
                
                out.print("<script>");
                out.print("alert('Book Updated Successfully');");
                out.print("location='dispbook.jsp';");
                out.print("</script>");
            }
            catch(Exception e) {
                out.println(e.getMessage());
            }
         
        %>
    
</html>
