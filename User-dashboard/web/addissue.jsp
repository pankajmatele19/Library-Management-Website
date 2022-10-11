
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
                
                int uid = Integer.parseInt(request.getParameter("uid"));
                int bid = Integer.parseInt(request.getParameter("bid"));
                java.sql.Date isd = java.sql.Date.valueOf(request.getParameter("isd"));
                java.sql.Date rtd = java.sql.Date.valueOf(request.getParameter("retd"));
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");  
                CallableStatement cs = con.prepareCall("{call ADBMSproject.addissue(?,?,?,?)}");
                
                cs.setInt("usid", uid);
                cs.setInt("boid", bid);
                cs.setDate("issued", isd);
                cs.setDate("returnd", rtd);
                
                cs.execute();
                
                out.print("<script>");
                out.print("alert('Issue Added Successfully');");
                out.print("location='dispissue.jsp';");
                out.print("</script>");
                
            }
            catch(Exception e) {
                out.println(e.getMessage());
            }
         
        %>
    
</html>
