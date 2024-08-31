package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class PatientDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <h1>All Patient Details</h1>\n");
      out.write("        <table border=\"2\">\n");
      out.write("            <tr>\n");
      out.write("                <td>Name</td>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("                <td>DepartMent</td>\n");
      out.write("                <td>Gender</td>\n");
      out.write("                <td>Age</td>\n");
      out.write("                <td>Experience</td>\n");
      out.write("                <td>Mobile</td>\n");
      out.write("                <td>Addhar</td>\n");
      out.write("                <td>Email</td>\n");
      out.write("                <td>Qualification</td>\n");
      out.write("                <td>Country</td>\n");
      out.write("                <td>State</td>\n");
      out.write("                <td>District</td>\n");
      out.write("                <td>PinCode</td>\n");
      out.write("                <td>UserName</td>\n");
      out.write("                <td>Password</td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                try{
                    Connection con=DriverManager.getConnection(
  "jdbc:oracle:thin:@localhost:1521:xe","system","System");
                    
                    String sql="Select name,guardian_name,age,gender,blood_group,mobile_no,email,country,state,district,pincode,username,password from PRegistration";
                    
                    Statement statement=con.createStatement();
                    Connection connection=null;
                    ResultSet resultSet=statement.executeQuery(sql);
                    
                   
                    while(resultSet.next())
                    {
                        
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("name") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(resultSet.getString("guardian_name") );
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(resultSet.getInt("age") );
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(resultSet.getString("gender") );
      out.write("</td>\n");
      out.write("                          <td>");
      out.print(resultSet.getString("blood_group") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getInt("mobile_no") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(resultSet.getString("email") );
      out.write("</td>\n");
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
      out.write("                 \n");
      out.write("                    ");

                        }
connection.close();
}
catch(Exception e)
                {
                    
                }
                
                
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </table>\n");
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
