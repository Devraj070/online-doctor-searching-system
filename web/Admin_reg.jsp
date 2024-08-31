<%-- 
    Document   : Admin_reg
    Created on : 23 Jul, 2023, 10:18:55 PM
    Author     : debar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        
    }       catch(ClassNotFoundException e)
            {
                e.printStackTrace();
            }
            
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Registration form</title>
        
        
             <script>
                    function openIndexPage() {
             window.location.href = 'index.html';
                }
                </script>
    </head>
    
    
    
    <body>
        <%
            String name = request.getParameter("name");
            String qualification = request.getParameter("Qualification");
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            String gender= request.getParameter("sex");
            int age = Integer.parseInt(request.getParameter("age"));
            long mobile = Long.parseLong(request.getParameter("mobile"));
            String email = request.getParameter("email");
            

            String state = request.getParameter("state");
            
//                         

            out.println(name+qualification+username+password+gender+age+mobile+email);



            try{
                
                 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                               
                 out.print("ok");
                PreparedStatement ps = con.prepareStatement("insert into ARegistration values(?,?,?,?,?,?,?,?,?)");

                                

                 ps.setString(1, name);
                 ps.setString(2, qualification);
                 ps.setString(3, username);
                 ps.setString(4, password);
                 ps.setString(5, gender);
                 ps.setInt(6, age);

                 
                 ps.setLong(7, mobile);

                 ps.setString(8, email);
                                  ps.setString(9, state);

                                 

                 ps.executeQuery();
              %>
              
                    <script>
                        alert("Admin Registration Competed..");
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
