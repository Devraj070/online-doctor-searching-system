package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;;

public final class ChangePass_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");

    
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        
    }       catch(ClassNotFoundException e)
            {
                e.printStackTrace();
            }
            

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Change your Password</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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
                PreparedStatement ps1 = con.prepareStatement("update PRegistration set password = ? where password = ?");
                    
                    ps1.setString(1, ConPassword);
                    ps1.setString(2, CurrentPass);
                
                    ps1.executeUpdate();
                    out.println("Password updated");
            
                }
                else{
                    out.println("Enter Current Password correctly");
                }
               }catch(Exception e)
                   
               {
                   e.printStackTrace();
               }
        
        
      out.write("\n");
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
