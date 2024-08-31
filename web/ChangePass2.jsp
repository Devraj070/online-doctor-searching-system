<%-- 
    Document   : ChangePass2
    Created on : 25 Jul, 2023, 2:45:25 PM
    Author     : debaraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import='java.sql.*' %>

<%
    try{
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        
    }catch(Exception e)
    {
        e.printStackTrace();
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <script>
                    function openIndexPage() {
             window.location.href = 'index.html';
                }
                </script>
                
                
                
    </head>
    <body>
        
        <%
            String CurrentPass = request.getParameter("password");
            String NewPassword = request.getParameter("npassword");
            String ConPassword = request.getParameter("conpassword");

            
            String who = request.getParameter("who");
            
           if(who.equals("patient"))
           {
           try{
                
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                PreparedStatement ps = con.prepareStatement("select * from PRegistration where password = ?");
                
                
                ps.setString(1, CurrentPass);
                
                ResultSet rs = ps.executeQuery();
                
                 if(rs.next())
                { 
                    
                    if(NewPassword.equals(ConPassword))
                    {
                    PreparedStatement ps1 = con.prepareStatement("update PRegistration set password = ? where password = ?");
                    ps1.setString(1, ConPassword);
                    ps1.setString(2, CurrentPass);
                
                    ps1.executeUpdate();
                    
                    
                    
                    %>
                    <script>
                        alert("password has been updated");
                        window.onload = openIndexPage;
                    </script>
                    
                    <%
                    }else 
                    {
                        out.println("New password and conform password should be same ");
                    }
            
                }
                else{
                    out.println("Enter Current Password correctly");
                }
                
            }catch(Exception e){
                e.printStackTrace();
            }
           }
           


             else if(who.equals("doctor"))
           {
           try{
                
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                PreparedStatement ps = con.prepareStatement("select * from DRegistration where password = ?");
                
                
                ps.setString(1, CurrentPass);
                
                ResultSet rs = ps.executeQuery();
                
                 if(rs.next())
                { 
                    
                    if(NewPassword.equals(ConPassword))
                    {
                    PreparedStatement ps1 = con.prepareStatement("update DRegistration set password = ? where password = ?");
                    ps1.setString(1, ConPassword);
                    ps1.setString(2, CurrentPass);
                
                    ps1.executeUpdate();


                           
                    %>
                    <script>
                        alert("password has been updated");
                        window.onload = openIndexPage;
                    </script>
                    
                    <%

                    
                    }else 
                    {
                        out.println("New password and conform password should be same ");
                    }
            
                }
                else{
                    out.println("Enter Current Password correctly");
                }
                
            }catch(Exception e){
                e.printStackTrace();
            }
           }
           

             else if(who.equals("admin"))
           {
           try{
                
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                PreparedStatement ps = con.prepareStatement("select * from ARegistration where password = ?");
                
                
                ps.setString(1, CurrentPass);
                
                ResultSet rs = ps.executeQuery();
                
                 if(rs.next())
                { 
                    
                    if(NewPassword.equals(ConPassword))
                    {
                    PreparedStatement ps1 = con.prepareStatement("update ARegistration set password = ? where password = ?");
                    ps1.setString(1, ConPassword);
                    ps1.setString(2, CurrentPass);
                
                    ps1.executeUpdate();
                           
                    %>
                    <script>
                        alert("password has been updated");
                        window.onload = openIndexPage;
                    </script>
                    
                    <%
                    }else 
                    {
                        out.println("New password and conform password should be same ");
                    }
            
                }
                else{
                    out.println("Enter Current Password correctly");
                }
                
            }catch(Exception e){
                e.printStackTrace();
            }
           }

        %>
        
        
    </body>
</html>
