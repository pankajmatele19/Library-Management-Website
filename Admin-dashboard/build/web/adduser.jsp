
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
        <% 
            String name = request.getParameter("name");
            String usern = request.getParameter("un");
            String pass = request.getParameter("pass");
            String em = request.getParameter("em");
            String cont = request.getParameter("con");
            try{
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");  
                CallableStatement cs = con.prepareCall("{call ADBMSproject.adduser(?,?,?,?,?,?)}");
                
                cs.setString("name",name);
                cs.setString("uname",usern);
                cs.setString("pass",pass);
                cs.setString("email",em);
                cs.setString("contact",cont);
                cs.registerOutParameter("ex", java.sql.Types.VARCHAR);
                
                cs.execute();
                
                String e = cs.getString("ex");
                
                if(e.equals("User Added Successfully")) {
                out.println("<script>");
                out.println("alert('" + e +"');");
                out.println("location='dispuser.jsp';");
                out.println("</script>");
                }
                else {
                out.println("<script>");
                out.println("alert('" + e +"');");
                out.println("location='addus.jsp';");
                out.println("</script>");
                }
            }
            catch(Exception e) {
                out.println(e.getMessage());
            }
         
        %>
    
</html>
