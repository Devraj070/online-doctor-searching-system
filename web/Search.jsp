<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
        <%@page import="java.sql.ResultSet"%>
        <%@page import="java.sql.Statement"%>
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
        <title>All Doctor Details</title>
        <style>
            table,tr,td{
                border-collapse: collapse;
                padding: 8px;
                
            }
            body{
                background-color: aqua;
            }
             table,tr,td{
                border-collapse: collapse;
                padding: 18px;
                
            }
            </style>
    </head>
    <body>
          <center> <h1 style="font-family: 'Franklin Gothic Medium', 'Arial Narrow'">Nearby Doctors...</h1></center>
        <table border="2">
     
            <%
                String dept = request.getParameter("Department");
                String dist = request.getParameter("dist");

                
                try{
                    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","System");
                    
//                    String sql="Select name,department,gender,age,experience,mobile_no,adhar,email,qualification,country,state,district,pincode,username,password from DRegistration where department=? and  district=?";
                    
                    
                   PreparedStatement ps1 = con.prepareStatement("Select name,department,gender,age,experience,mobile_no,adhar,email,qualification,country,state,district,pincode,username,password from DRegistration where department=? and  district=?");

                    ps1.setString(1, dept);
                                        ps1.setString(2, dist);

//                    Statement statement=con.createStatement();
//                    Connection connection=null;
//                    ResultSet resultSet=statement.executeQuery(sql);


                        ResultSet resultSet = ps1.executeQuery();
                    
                   
                    if(resultSet.next())
                    {
                        
                    %>
                    
                          <tr style="font-weight: bold; text-align: center; background-color: greenyellow">

                <td>Name</td>
            
            
                <td><b>Department</td>
                <td>Gender</td>
                <td>age</td>
                
                <td>Experience</td>
                <td>Mobile</td>
               
                <td>Qualification</td>
                <td>Country</td>
                <td>State</td>
                <td>District</td>
                <td>PinCode</td>
                
            </tr>
                    
                    
                    <tr>
                        <td><%=resultSet.getString("name") %></td>
                        <td><%=resultSet.getString("department") %></td>
                        <td><%=resultSet.getString("gender") %></td>
                         <td><%=resultSet.getInt("age") %></td>
                          <td><%=resultSet.getInt("experience") %></td>
                          <td><%=resultSet.getString("mobile_no") %></td>
                                                    
                                                    <td><%=resultSet.getString("qualification") %></td>

                                                    <td><%=resultSet.getString("country") %></td>
                                                    <td><%=resultSet.getString("state") %></td>
                                                    <td><%=resultSet.getString("district") %></td>
                                                    <td><%=resultSet.getInt("pincode") %></td>
                                                   
                                      


                         
                   
                        
                    </tr>
                    
                       </table>
          
          <br><br>          <br><br>
          <br><br>
          
                  <form action="#" method="post" ><button class="button yourDetails">Book An Appointment</button></form>


                 
                    <%
                        }
else{
%>
<h3>No data found</h3>
                    <%
}
con.close();
}
catch(Exception e)
                {
                    
                }
                
                %>
            
            
            
            
     
            
   
        
    </body>
</html>