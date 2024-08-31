<%-- 
    Document   : AdminDetails
    Created on : 25 Jul, 2023, 9:02:49 PM
    Author     : debar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.Statement"%>
        <%@page import="java.sql.Connection"%>
        
        
        
        
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
        <title>All Admin Details</title>
        
        
        
        <style>
            table,tr,td{
                border-collapse: collapse;
                padding: 18px;
                
                
            }
            body{
                background-color: aqua;
            }
            </style>
    </head>
    <body>
    <center> <h1 style="font-family: 'Franklin Gothic Medium', 'Arial Narrow'">All Admin Details</h1><button onclick="update()">Update</button><button>Delete</button></center>
    <center> <table border="2">
            <tr style="font-weight: bold; padding: 14px;background-color: greenyellow">

                <td>Name</td>
            
            
                <td>Qualification</td>
                <td>Username</td>
                <td>Password</td>
                
                <td>Gender</td>
                <td>Age</td>
                <td>Contact</td>
                <td>Email</td>
             
                <td>State</td>
  
            </tr>
            <%
                try{
                    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                    
                    String sql="Select name,qualification,username,password,gender,age,contact,email,state from ARegistration";
                    
                    Statement statement=con.createStatement();
                    Connection connection=null;
                    ResultSet resultSet=statement.executeQuery(sql);
                    
                   
                    while(resultSet.next())
                    {
                        
                    %>
                    <tr>
                        <td><%=resultSet.getString("name") %></td>
                        <td><%=resultSet.getString("qualification") %></td>
                        <td><%=resultSet.getString("username") %></td>
                         <td><%=resultSet.getString("password") %></td>
                          <td><%=resultSet.getString("gender") %></td>
                          <td><%=resultSet.getInt("age") %></td>
                                                    <td><%=resultSet.getString("contact") %></td>
                                                     <td><%=resultSet.getString("email") %></td>
                                                    <td><%=resultSet.getString("state") %></td>

                                          
                                      


                         
                   
                        
                    </tr>
                 
                    <%
                        }
connection.close();
}
catch(Exception e)
                {
                    
                }
                
                %>
            
                <script> 
                function update()
                {
                    window.location.href="updateAdmin.html";
                }
                
                </script>
            
            
        </table></center>
            
   
        
    </body>
</html>