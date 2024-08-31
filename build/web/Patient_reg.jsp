<%-- 
    Document   : Patient_reg
    Created on : 23 Jul, 2023, 12:20:35 PM
    Author     : debar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>

<%
    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        
    }       catch(ClassNotFoundException e)
            {
                e.printStackTrace();
            }
            
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Registration</title>
        
        
             <script>
                    function openIndexPage() {
             window.location.href = 'index.html';
                }
                </script>
    </head>
    <body>
                
        <%
            String name = request.getParameter("name");
            String Guardian = request.getParameter("gname");
            int age = Integer.parseInt(request.getParameter("age"));
            String gender= request.getParameter("sex");
            String blood = request.getParameter("blood");
            long mobile = Long.parseLong(request.getParameter("no"));            
            String email = request.getParameter("email");
            String country = request.getParameter("country");
            String state = request.getParameter("state");
            String district = request.getParameter("dist");
            long pin = Long.parseLong(request.getParameter("pin"));
                        String username = request.getParameter("user");
                         String password = request.getParameter("password");
//                         

            



            try{
                
                 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                               

                 PreparedStatement ps = con.prepareStatement("insert into PRegistration values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

                 ps.setString(1, name);
                 ps.setString(2, Guardian);
                 ps.setInt(3, age);
                 ps.setString(4, gender);
                 ps.setString(5, blood);
                 ps.setLong(6, mobile);
                 ps.setString(7, email);
                 ps.setString(8, country);
                 ps.setString(9, state);
                 ps.setString(10, district);
                 ps.setLong(11, pin);
                 ps.setString(12, username);
                 ps.setString(13, password);
                 
                 ps.executeQuery();
               %>
               
                     <script>
                        alert("Patient Registration Completed");
                        window.onload = openIndexPage;
                    </script>
               
               
               <%
                          
                 



                
            }catch(Exception e)
            {
                
            }


            %>
            
    <center> <a href="index.html"> Click here To Login</a></center>
        
        
    </body>
</html>
