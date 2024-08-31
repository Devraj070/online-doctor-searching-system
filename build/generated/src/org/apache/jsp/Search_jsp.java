package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;

public final class Search_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("          ");

            try{
                 Class.forName("oracle.jdbc.driver.OracleDriver");
            }
            catch(ClassNotFoundException e)
            {
                e.printStackTrace();
            }
            
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>All Doctor Details</title>\n");
      out.write("        <style>\n");
      out.write("            table,tr,td{\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                padding: 8px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-color: aqua;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <center> <h1 style=\"font-family: 'Franklin Gothic Medium', 'Arial Narrow'\">Nearby Doctors...</h1></center>\n");
      out.write("        <table border=\"2\">\n");
      out.write("     \n");
      out.write("            ");

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
                        
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                          <tr style=\"font-weight: bold; text-align: center; background-color: greenyellow\">\n");
      out.write("\n");
      out.write("                <td>Name</td>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("                <td><b>Department</td>\n");
      out.write("                <td>Gender</td>\n");
      out.write("                <td>age</td>\n");
      out.write("                \n");
      out.write("                <td>Experience</td>\n");
      out.write("                <td>Mobile</td>\n");
      out.write("                <td>Adhar</td>\n");
      out.write("                <td>Email</td>\n");
      out.write("                <td>Qualification</td>\n");
      out.write("                <td>Country</td>\n");
      out.write("                <td>State</td>\n");
      out.write("                <td>District</td>\n");
      out.write("                <td>PinCode</td>\n");
      out.write("                <td>UserName</td>\n");
      out.write("                <td>Password</td>\n");
      out.write("            </tr>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("name") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("department") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("gender") );
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(resultSet.getInt("age") );
      out.write("</td>\n");
      out.write("                          <td>");
      out.print(resultSet.getInt("experience") );
      out.write("</td>\n");
      out.write("                          <td>");
      out.print(resultSet.getString("mobile_no") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("adhar") );
      out.write("</td>\n");
      out.write("                                                     <td>");
      out.print(resultSet.getString("email") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("qualification") );
      out.write("</td>\n");
      out.write("\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("country") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("state") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("district") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getInt("pincode") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("username") );
      out.write("</td>\n");
      out.write("                                                                  <td>");
      out.print(resultSet.getString("password") );
      out.write("</td>\n");
      out.write("                                      \n");
      out.write("\n");
      out.write("\n");
      out.write("                         \n");
      out.write("                   \n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                       </table>\n");
      out.write("          \n");
      out.write("          <br><br>          <br><br>\n");
      out.write("          <br><br>\n");
      out.write("          \n");
      out.write("                  <form action=\"#\" method=\"post\" ><button class=\"button yourDetails\">Book An Appointment</button></form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                 \n");
      out.write("                    ");

                        }
else{

      out.write("\n");
      out.write("<h3>No data found</h3>\n");
      out.write("                    ");

}
con.close();
}
catch(Exception e)
                {
                    
                }
                
                
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("     \n");
      out.write("            \n");
      out.write("   \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
