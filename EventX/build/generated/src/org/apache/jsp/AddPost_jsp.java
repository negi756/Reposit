package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddPost_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Sign-Up/Login Form</title>\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css\">\n");
      out.write("\n");
      out.write("  \n");
      out.write("   <link rel=\"stylesheet\" href=\"css/style1.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <!--Form Filed-->\n");
      out.write("\n");
      out.write("\t\t<div class=\"form\">\n");
      out.write("      \n");
      out.write("\t\t\n");
      out.write("      \n");
      out.write("\t\t\t<h1>Add Event Post</h1>\n");
      out.write("          \n");
      out.write("\t\t\t<form action=\"Demo.jsp\" method=\"post\">\n");
      out.write("          \n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"field-wrap\">\n");
      out.write("\t\t\t\t<label>\n");
      out.write("\t\t\t\t\tName Of Event<span class=\"req\">*</span>\n");
      out.write("\t\t\t\t</label>\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"ename\" required autocomplete=\"off\" />\n");
      out.write("\t\t\t\t</div>\n");
      out.write("        \n");
      out.write("\t\t\t\t<div class=\"field-wrap\">\n");
      out.write("\t\t\t\t<label>\n");
      out.write("                                     Type of Event<span class=\"req\">*</span>\n");
      out.write("                                </label>\n");
      out.write("                                    <input list=\"typeofevent\" name=\"etype\"/>\n");
      out.write("                                        <datalist id=\"typeofevent\">\n");
      out.write("                                            <option value=\"Workshop\">Workshop</option>\n");
      out.write("                                            <option value=\"Technical\">Technical</option>\n");
      out.write("                                            <option value=\"Cultural\">Cultural</option>\n");
      out.write("                                            <option value=\"Sports\">Sports</option>\n");
      out.write("                                            <option value=\"Management\">Management</option>\n");
      out.write("                                        </datalist>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"field-wrap\">\n");
      out.write("\t\t\t\t<label>\n");
      out.write("\t\t\t\t\tEvent Starting Date (YYYY-MM-DD)<span class=\"req\">*</span>\n");
      out.write("\t\t\t\t</label>\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"esdate\"required autocomplete=\"off\"/>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("          \n");
      out.write("\t\t\t\t<div class=\"field-wrap\">\n");
      out.write("\t\t\t\t<label>\n");
      out.write("\t\t\t\t\tEvent Ending Date (YYYY-MM-DD)<span class=\"req\">*</span>\n");
      out.write("\t\t\t\t</label>\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"eedate\"required autocomplete=\"off\"/>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("          \n");
      out.write("\t\t\t\t<div class=\"field-wrap\">\n");
      out.write("\t\t\t\t<label>\n");
      out.write("\t\t\t\t\tEvent Starting Time (HH:MM:SS)<span class=\"req\">*</span>\n");
      out.write("\t\t\t\t</label>\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"estime\"required autocomplete=\"off\"/>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("         \n");
      out.write("\t\t\t\t<div class=\"field-wrap\">\n");
      out.write("\t\t\t\t<label>\n");
      out.write("\t\t\t\t\tEvent Ending Time (HH:MM:SS)<span class=\"req\">*</span>\n");
      out.write("\t\t\t\t</label>\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"eetime\"required autocomplete=\"off\"/>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                \n");
      out.write("                                <div class=\"field-wrap\">\n");
      out.write("\t\t\t\t<label>\n");
      out.write("\t\t\t\t\tVenue<span class=\"req\">*</span>\n");
      out.write("\t\t\t\t</label>\n");
      out.write("\t\t\t\t<input type=\"text\" name=\"evenue\" required autocomplete=\"off\"/>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("          \n");
      out.write("\t\t\t\t<div class=\"field-wrap\">\n");
      out.write("\t\t\t\t    <textarea name=\"edescription\" rows=\"5\" placeholder=\"Description\" required></textarea>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("          \n");
      out.write("\t\t\t\t<button type=\"submit\" class=\"button button-block\"/>Post</button>\n");
      out.write("          \n");
      out.write("\t\t\t</form>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\t\t\t<!-- /form -->\n");
      out.write("  \n");
      out.write("\t\t\n");
      out.write("    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>\n");
      out.write("\n");
      out.write("    <script src=\"js/index.js\"></script>\n");
      out.write("    \n");
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
