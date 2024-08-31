<%-- 
    Document   : Doctor_reg
    Created on : 23 Jul, 2023, 3:58:44 PM
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
        <title>Doctor Registration</title>
        
             <script>
                    function openIndexPage() {
             window.location.href = 'index.html';
                }
                </script>
    </head>
    <body>
        
        
        <%
            String name = request.getParameter("name");
            String Department = request.getParameter("dept");
            String gender= request.getParameter("sex");
            int age = Integer.parseInt(request.getParameter("age"));
            int experience = Integer.parseInt(request.getParameter("experience"));
            long mobile = Long.parseLong(request.getParameter("mobile"));
            long adhar = Long.parseLong(request.getParameter("adhar"));            
            String email = request.getParameter("email");
            String qualification = request.getParameter("qualification");
            
            String country = request.getParameter("country");

            String state = request.getParameter("state");
            
            String district = request.getParameter("dist");
            long pin = Long.parseLong(request.getParameter("pin"));
                        String username = request.getParameter("user");
                         String password = request.getParameter("password");
//                         

            



            try{
                
                 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                               

                 PreparedStatement ps = con.prepareStatement("insert into DRegistration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

                 ps.setString(1, name);
                 ps.setString(2, Department);
                 ps.setString(3, gender);
                 ps.setInt(4, age);
                 ps.setInt(5, experience);
                 ps.setLong(6, mobile);
                  ps.setLong(7, adhar);

                 ps.setString(8, email);
                 ps.setString(9, qualification);
                 ps.setString(10, country);
                                  ps.setString(11, state);

                 ps.setString(12, district);
                 ps.setLong(13, pin);
                 ps.setString(14, username);
                 ps.setString(15, password);
                 
                 ps.executeQuery();
%>

      <script>
                        alert("Doctor Registration Competed..");
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
