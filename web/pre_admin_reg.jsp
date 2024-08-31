<%-- 
    Document   : pre_admin_reg
    Created on : 23 Jul, 2023, 8:43:30 PM
    Author     : debar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.*"%>

        <%
            try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
            }
            catch(ClassNotFoundException e)
            {
                e.printStackTrace();
            }
            

        %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pre Admin Registration</title>
        
        <script>
            function openHTMLFile() {
             window.location.href = 'Admin_reg.html';
         }
         
               function openHTMLFile2() {
             window.location.href = 'wrongPass.html';
         }
        </script>
    </head>
    <body>
        <%
            
           String Admin_name = request.getParameter("name");
           String Password = request.getParameter("password");
 
           try{
               
               
               
               Class.forName("oracle.jdbc.driver.OracleDriver");
               Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                
               
               
                PreparedStatement ps = con.prepareStatement("select * from AdminLogin where Admin_name = ?And hr_password = ?");
                
                ps.setString(1, Admin_name);
                ps.setString(2, Password);
                
                ResultSet rs = ps.executeQuery();
                
                
                if(rs.next())
                { %>
                <script>
                        window.onload = openHTMLFile;
                </script>
                <%}else{%>
                        <script>             window.onload = openHTMLFile2;
</script>
                <%}

               
               
           }catch(Exception e)
           {
               e.printStackTrace();
           }
                
%>
    </body>
</html>
