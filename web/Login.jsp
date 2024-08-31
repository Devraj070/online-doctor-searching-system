<%-- 
    Document   : Login
    Created on : 21 Jul, 2023, 9:03:25 PM
    Author     : debaraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
        
                    <script>
    
            function openHTMLFile() {
             window.location.href = 'doctor_searching.html';
                }

                            function openHTMLFile2() {
             window.location.href = 'wrongPass.html';
                }
                
                
                
                                function AdminWork() {
             window.location.href = 'AdminWork.html';
                }
        </script>
        
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            String who = request.getParameter("who");
            
            
            if(who.equals("patient"))
            {
                
               try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
               Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                
               
               
                PreparedStatement ps = con.prepareStatement("select * from PRegistration where username = ?And password = ?");
                
                ps.setString(1, username);
                ps.setString(2, password);
                
                ResultSet rs = ps.executeQuery();
                
                
                if(rs.next())
                { %>
                <!--<h3>Login successful...</h3>-->
                <!--<a href="doctor_searching.html">j</a>-->
    <script>             window.onload = openHTMLFile;
</script>
                
                <%}
                else
                {%>
                    <script>             window.onload = openHTMLFile2;
</script>
               <% }
                
                }catch(Exception e){
                    System.out.println(e);
                }
                
            }

            else if(who.equals("admin"))
            {
                try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
               Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                
               
               
                PreparedStatement ps = con.prepareStatement("select * from ARegistration where username = ?And password = ?");
                
                ps.setString(1, username);
                ps.setString(2, password);
                
                ResultSet rs = ps.executeQuery();
                
                
                if(rs.next())
                { 
               
               %>
               
          <script>window.onload = AdminWork;</script>
               
                <%}
                else
                {%>
                    <script>window.onload = openHTMLFile2;</script>
               <% }
                
                }catch(Exception e){
                    System.out.println(e);
                }
            }

                        else if(who.equals("doctor"))
            {
                try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
               Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                
               
               
                PreparedStatement ps = con.prepareStatement("select * from DRegistration where username = ?And password = ?");
                
                ps.setString(1, username);
                ps.setString(2, password);
                
                ResultSet rs = ps.executeQuery();
                
                
                if(rs.next())
                { %>
                <h3>No Appointments till yet.....</h3>
                <%}
                else
                {%>
                    <script>window.onload = openHTMLFile2;</script>
               <% }
                
                }catch(Exception e){
                    System.out.println(e);
                }
            }
        %>
        
    </body>
</html>
