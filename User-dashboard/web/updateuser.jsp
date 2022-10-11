
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
                int usid = Integer.parseInt(request.getParameter("uid"));
                String pass = request.getParameter("pass");
                String cont = request.getParameter("con");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");  
                CallableStatement cs = con.prepareCall("{call ADBMSproject.updateuser(?,?,?)}");
                
                cs.setInt("usid",usid);
                cs.setString("pass", pass);
                cs.setString("con", cont);
                
                cs.execute();
                
                out.print("<script>");
                out.print("alert('User Updated Successfully');");
                out.print("location='dispuser.jsp';");
                out.print("</script>");
                
            }
            catch(Exception e) {
                out.println(e.getMessage());
            }
         
        %>
    
</html>
