package org.apache.jsp.WEB_002dINF.inmobiliaria;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import es.inmobiliaria.hibernate.Inmueble;

public final class edit_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String id = request.getParameter("id");
    Inmueble p = new Inmueble();


      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <title>InmoWeb</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <!-- FONT\n");
      out.write("        –––––––––––––––––––––––––––––––––––––––––––––––––– -->\n");
      out.write("        <link href=\"//fonts.googleapis.com/css?family=Raleway:400,300,600\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("        <!-- CSS\n");
      out.write("      –––––––––––––––––––––––––––––––––––––––––––––––––– -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/normalize.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flexslider.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Edit Page</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!-- ..............................................HEADER...................................................................-->\n");
      out.write("        <div class=\"band header\">\n");
      out.write("            <header class=\"container main\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"twelve columns\">\n");
      out.write("                        <h1 class=\"logo\"><a href=\"#\">Inmobiliaria</a></h1>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("        </div>\n");
      out.write("        <!-- FIN HEADER-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- ..............................................NAV...................................................................-->\n");
      out.write("        <div class=\"band navigation\">\n");
      out.write("            <nav class=\"container primary\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"twelve columns\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\">Home</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"control?target=prueba&op=select&action=view\">Ver datos de la tabla</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"control?target=subir&op=select&action=view\">Subir Foto</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- FIN NAV-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- ..............................................MAIN AREA...................................................................-->\n");
      out.write("        <div class=\"band main\">\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <div class=\"twelve columns\">\n");
      out.write("\n");
      out.write("                        <h1>Editar Inmueble</h1>\n");
      out.write("                        <form name=\"control\" action=\"control\" method=\"POST\">\n");
      out.write("                            Titulo: <input type=\"text\" name=\"titulo\" value=\"");
      out.print(p.getTitulo());
      out.write("\" />\n");
      out.write("                            <br>\n");
      out.write("                            Direccion: <input type=\"text\" name=\"direccion\" value=\"");
      out.print(p.getDireccion());
      out.write("\" />\n");
      out.write("                            <br>\n");
      out.write("                            Usuario: <input type=\"text\" name=\"usuario\" value=\"");
      out.print(p.getUsuario());
      out.write("\" />\n");
      out.write("                            <br>\n");
      out.write("                            Precio: <input type=\"text\" name=\"precio\" value=\"");
      out.print(p.getPrecio());
      out.write("\" />\n");
      out.write("                            <br>\n");
      out.write("                            <input type=\"hidden\" name=\"target\" value=\"prueba\" />\n");
      out.write("                            <input type=\"hidden\" name=\"op\" value=\"edit\" />\n");
      out.write("                            <input type=\"hidden\" name=\"action\" value=\"op\" />\n");
      out.write("                            <input type=\"hidden\" name=\"id\" value=\"");
      out.print(p.getId());
      out.write("\" />\n");
      out.write("                            <input type=\"submit\" value=\"modificar\" />\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
