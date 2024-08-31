package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

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
      out.write("        <title>Login page</title>\n");
      out.write("        \n");
      out.write("                    <script>\n");
      out.write("    \n");
      out.write("            function openHTMLFile() {\n");
      out.write("             window.location.href = 'doctor_searching.html';\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                            function openHTMLFile2() {\n");
      out.write("             window.location.href = 'wrongPass.html';\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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
                { 
      out.write("\n");
      out.write("                <!--<h3>Login successful...</h3>-->\n");
      out.write("                <!--<a href=\"doctor_searching.html\">j</a>-->\n");
      out.write("    <script>             window.onload = openHTMLFile;\n");
      out.write("</script>\n");
      out.write("                \n");
      out.write("                ");
}
                else
                {
      out.write("\n");
      out.write("                    <script>             window.onload = openHTMLFile2;\n");
      out.write("</script>\n");
      out.write("               ");
 }
                
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
      out.write("\n");
      out.write("                <h3>Login successful...</h3>\n");
      out.write("                ");
}
                else
                {
      out.write("\n");
      out.write("                    <script>             window.onload = openHTMLFile2;\n");
      out.write("</script>\n");
      out.write("               ");
 }
                
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
                { 
      out.write("\n");
      out.write("                <h3>Login successful...</h3>\n");
      out.write("                ");
}
                else
                {
      out.write("\n");
      out.write("                    <script>             window.onload = openHTMLFile2;\n");
      out.write("</script>\n");
      out.write("               ");
 }
                
                }catch(Exception e){
                    System.out.println(e);
                }
            }
        
      out.write("\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
