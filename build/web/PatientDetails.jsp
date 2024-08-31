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
        <title>All patient Details</title>
        
        
        <style>
            table,tr,td{
                border-collapse: collapse;
                padding: 18px;
                
            }
            body{
                background-color: wheat;
            }
            </style>
    </head>
    <body>
          <center> <h1 style="font-family: 'Franklin Gothic Medium', 'Arial Narrow'">All Patient Details</h1><button>Update</button><button>Delete</button></center>
        <table border="2">
             <tr style="font-weight: bold; text-align: center; background-color: greenyellow">
                <td>Name</td>
            
            
                <td>Guardian name</td>
                <td>age</td>
                <td>Gender</td>
                <td>Blood group</td>
                <td>Mobile</td>
                <td>Email</td>
                <td>Country</td>
                <td>State</td>
                <td>District</td>
                <td>PinCode</td>
                <td>UserName</td>
                <td>Password</td>
            </tr>
            <%
                try{
                    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                    
                    String sql="Select name,guardian_name,age,gender,blood_group,mobile_no,email,country,state,district,pincode,username,password from PRegistration";
                    
                    Statement statement=con.createStatement();
                    Connection connection=null;
                    ResultSet resultSet=statement.executeQuery(sql);
                    
                   
                    while(resultSet.next())
                    {
                        
                    %>
                    <tr>
                        <td><%=resultSet.getString("name") %></td>
                        <td><%=resultSet.getString("guardian_name") %></td>
                        <td><%=resultSet.getInt("age") %></td>
                         <td><%=resultSet.getString("gender") %></td>
                          <td><%=resultSet.getString("blood_group") %></td>
                          <td><%=resultSet.getString("mobile_no") %></td>
                                                    <td><%=resultSet.getString("email") %></td>
                                                    <td><%=resultSet.getString("country") %></td>
                                                    <td><%=resultSet.getString("state") %></td>
                                                    <td><%=resultSet.getString("district") %></td>
                                                    <td><%=resultSet.getInt("pincode") %></td>
                                                    <td><%=resultSet.getString("username") %></td>
                                                                  <td><%=resultSet.getString("password") %></td>
                                      


                         
                   
                        
                    </tr>
                 
                    <%
                        }
connection.close();
}
catch(Exception e)
                {
                    
                }
                
                %>
            
            
            
            
        </table>
            
   
        
    </body>
</html>