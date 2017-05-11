package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!--\n");
      out.write("    Main page\n");
      out.write("-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    \n");
      out.write("    <title>EventX</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core CSS -->\n");
      out.write("    <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom Fonts -->\n");
      out.write("    <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    <!-- Plugin CSS -->\n");
      out.write("    <link href=\"vendor/magnific-popup/magnific-popup.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Theme CSS -->\n");
      out.write("    <link href=\"css/creative.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body id=\"page-top\">\n");
      out.write("    ");

        HttpSession hs=request.getSession(false);
        
    
      out.write("\n");
      out.write("    \n");
      out.write("    <nav id=\"mainNav\" class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span> Menu <i class=\"fa fa-bars\"></i>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand page-scroll\" href=\"#page-top\">EventX</a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                    <li>\n");
      out.write("                        <a class=\"page-scroll\" href=\"\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        ");

                            if(hs!=null){
                            out.println("<a class='page-scroll' href='Profile.jsp'>Profile</a>");
                            
                            }
                            else{
                                out.println("<a class='page-scroll' href='login.html'>Login/SignUp</a>");
                            }
                        
      out.write("        \n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.container-fluid -->\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <header>\n");
      out.write("        <div class=\"header-content\">\n");
      out.write("            <div class=\"header-content-inner\">\n");
      out.write("                <h1 id=\"homeHeading\">Your Favorite Source of Free Bootstrap Themes</h1>\n");
      out.write("                <hr>\n");
      out.write("                <p>Start Bootstrap can help you build better websites using the Bootstrap CSS framework! Just download your template and start going, no strings attached!</p>\n");
      out.write("                <a ");
 if(hs!=null){ out.println("href='AddPost.jsp'"); } else { out.println("href='login.html'"); } 
      out.write(" class=\"btn btn-primary btn-xl page-scroll\">Post Event</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <h3 align=\"center\">---------------Events------------------<h3>\n");
      out.write("    <section class=\"no-padding\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row no-gutter\">\n");
      out.write("                <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                    <a href=\"DisplayEvents.jsp?event_type=Workshop\" class=\"portfolio-box\">\n");
      out.write("                        <img src=\"img/eventpic/Workshop.jpg\" class=\"img-responsive\" alt=\"\" height=\"650\" width=\"250\">\n");
      out.write("                        <div class=\"portfolio-box-caption\">\n");
      out.write("                            <div class=\"portfolio-box-caption-content\">\n");
      out.write("                                <div class=\"project-name\">\n");
      out.write("                                    Workshop\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                    <a href=\"DisplayEvents.jsp?event_type=Technical\" class=\"portfolio-box\">\n");
      out.write("                        <img src=\"img/portfolio/thumbnails/2.jpg\" class=\"img-responsive\" alt=\"\">\n");
      out.write("                        <div class=\"portfolio-box-caption\">\n");
      out.write("                            <div class=\"portfolio-box-caption-content\">\n");
      out.write("                                <div class=\"project-name\">\n");
      out.write("                                    Technical\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                    <a href=\"DisplayEvents.jsp?event_type=Cultural\" class=\"portfolio-box\">\n");
      out.write("                        <img src=\"img/portfolio/thumbnails/3.jpg\" class=\"img-responsive\" alt=\"\">\n");
      out.write("                        <div class=\"portfolio-box-caption\">\n");
      out.write("                            <div class=\"portfolio-box-caption-content\">\n");
      out.write("                                <div class=\"project-name\">\n");
      out.write("                                    Cultural\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                    <a href=\"DisplayEvents.jsp?event_type=Sports\" class=\"portfolio-box\">\n");
      out.write("                        <img src=\"img/portfolio/thumbnails/4.jpg\" class=\"img-responsive\" alt=\"\">\n");
      out.write("                        <div class=\"portfolio-box-caption\">\n");
      out.write("                            <div class=\"portfolio-box-caption-content\">\n");
      out.write("                                <div class=\"project-name\">\n");
      out.write("                                   Sports\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                    <a href=\"DisplayEvents.jsp?event_type=Management\" class=\"portfolio-box\">\n");
      out.write("                        <img src=\"img/portfolio/thumbnails/5.jpg\" class=\"img-responsive\" alt=\"\">\n");
      out.write("                        <div class=\"portfolio-box-caption\">\n");
      out.write("                            <div class=\"portfolio-box-caption-content\">\n");
      out.write("                                <div class=\"project-name\">\n");
      out.write("                                    Management\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                    <a href=\"DisplayEvents.jsp?event_type=Other\" class=\"portfolio-box\">\n");
      out.write("                        <img src=\"img/portfolio/thumbnails/6.jpg\" class=\"img-responsive\" alt=\"\">\n");
      out.write("                        <div class=\"portfolio-box-caption\">\n");
      out.write("                            <div class=\"portfolio-box-caption-content\">\n");
      out.write("                                <div class=\"project-name\">\n");
      out.write("                                    Other Events\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("   \n");
      out.write("    <section id=\"contact\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-8 col-lg-offset-2 text-center\">\n");
      out.write("                    <h2 class=\"section-heading\">Let's Get In Touch!</h2>\n");
      out.write("                    <hr class=\"primary\">\n");
      out.write("                    <p>Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4 col-lg-offset-2 text-center\">\n");
      out.write("                    <i class=\"fa fa-phone fa-3x sr-contact\"></i>\n");
      out.write("                    <p>123-456-6789</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4 text-center\">\n");
      out.write("                    <i class=\"fa fa-envelope-o fa-3x sr-contact\"></i>\n");
      out.write("                    <p><a href=\"mailto:your-email@your-domain.com\">feedback@startbootstrap.com</a></p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <!-- jQuery -->\n");
      out.write("    <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core JavaScript -->\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Plugin JavaScript -->\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js\"></script>\n");
      out.write("    <script src=\"vendor/scrollreveal/scrollreveal.min.js\"></script>\n");
      out.write("    <script src=\"vendor/magnific-popup/jquery.magnific-popup.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Theme JavaScript -->\n");
      out.write("    <script src=\"js/creative.min.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
