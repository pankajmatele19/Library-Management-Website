
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
        <% 
            int uid = Integer.parseInt(request.getParameter("uid"));
            int bid = Integer.parseInt(request.getParameter("bid"));
            java.sql.Date rtd = java.sql.Date.valueOf(request.getParameter("returnd"));
            int day = Integer.parseInt(request.getParameter("day"));
            String fine = request.getParameter("fine");
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");  
                CallableStatement cs = con.prepareCall("{call ADBMSproject.addfine(?,?,?,?,?)}");
                
                cs.setInt("uid", uid);
                cs.setInt("bid",bid);
                cs.setDate("issd",rtd);
                cs.setInt("d",day);
                cs.setString("f",fine);
                
                cs.execute();
                
                out.print("<script>");
                out.print("alert('Fine Added Successfully');");
                out.print("location='dispfine.jsp';");
                out.print("</script>");
                
            }
            catch(Exception e) {
                out.println(e.getMessage());
            }
         
        %>
    
</html>
