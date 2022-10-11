package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import oracle.jdbc.OracleTypes;
import java.sql.*;

public final class dispfine_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <title>Corona Admin</title>\n");
      out.write("    <!-- plugins:css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"vendors/mdi/css/materialdesignicons.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"vendors/css/vendor.bundle.base.css\">\n");
      out.write("    <!-- endinject -->\n");
      out.write("    <!-- Plugin css for this page -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"vendors/jvectormap/jquery-jvectormap.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"vendors/flag-icon-css/css/flag-icon.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"vendors/owl-carousel-2/owl.carousel.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"vendors/owl-carousel-2/owl.theme.default.min.css\">\n");
      out.write("    <!-- End plugin css for this page -->\n");
      out.write("    <!-- inject:css -->\n");
      out.write("    <!-- endinject -->\n");
      out.write("    <!-- Layout styles -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    <!-- End layout styles -->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/favicon.png\" />\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"container-scroller\">\n");
      out.write("        <!-- partial:../../partials/_sidebar.html -->\n");
      out.write("        <nav class=\"sidebar sidebar-offcanvas\" id=\"sidebar\">\n");
      out.write("            <div class=\"sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top\">\n");
      out.write("                <a class=\"sidebar-brand brand-logo\" href=\"index.html\"><img src=\"images/logo.svg\"\n");
      out.write("                        alt=\"logo\" /></a>\n");
      out.write("                <a class=\"sidebar-brand brand-logo-mini\" href=\"index.html\"><img src=\"images/logo-mini.svg\"\n");
      out.write("                        alt=\"logo\" /></a>\n");
      out.write("            </div>\n");
      out.write("            <ul class=\"nav\">\n");
      out.write("                <li class=\"nav-item menu-items\">\n");
      out.write("                    <a class=\"nav-link\" href=\"index.html\">\n");
      out.write("                        <span class=\"menu-icon\">\n");
      out.write("                            <i class=\"mdi mdi-speedometer\"></i>\n");
      out.write("                        </span>\n");
      out.write("                        <span class=\"menu-title\">Dashboard</span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item menu-items\">\n");
      out.write("                    <a class=\"nav-link\" data-toggle=\"collapse\" href=\"#ui-basic1\" aria-expanded=\"false\"\n");
      out.write("                        aria-controls=\"ui-basic\">\n");
      out.write("                        <span class=\"menu-icon\">\n");
      out.write("                            <i class=\"mdi mdi-book\"></i>\n");
      out.write("                        </span>\n");
      out.write("                        <span class=\"menu-title\">Books</span>\n");
      out.write("                        <i class=\"menu-arrow\"></i>\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"collapse\" id=\"ui-basic1\">\n");
      out.write("                        <ul class=\"nav flex-column sub-menu\">\n");
      out.write("                            <li class=\"nav-item\"> <a class=\"nav-link\" href=\"addbook.html\">Add\n");
      out.write("                                    Books</a></li>\n");
      out.write("                            <li class=\"nav-item\"> <a class=\"nav-link\" href=\"dispbook.html\">Manage\n");
      out.write("                                    Books</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item menu-items\">\n");
      out.write("                    <a class=\"nav-link\" data-toggle=\"collapse\" href=\"#ui-basic2\" aria-expanded=\"false\"\n");
      out.write("                        aria-controls=\"ui-basic\">\n");
      out.write("                        <span class=\"menu-icon\">\n");
      out.write("                            <i class=\"mdi mdi-face-profile\"></i>\n");
      out.write("                        </span>\n");
      out.write("                        <span class=\"menu-title\">Users</span>\n");
      out.write("                        <i class=\"menu-arrow\"></i>\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"collapse\" id=\"ui-basic2\">\n");
      out.write("                        <ul class=\"nav flex-column sub-menu\">\n");
      out.write("                            <li class=\"nav-item\"> <a class=\"nav-link\" href=\"adduser.html\">Add User</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\"> <a class=\"nav-link\" href=\"dispuser.html\">Display\n");
      out.write("                                    Users</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item menu-items\">\n");
      out.write("                    <a class=\"nav-link\" data-toggle=\"collapse\" href=\"#ui-basic3\" aria-expanded=\"false\"\n");
      out.write("                        aria-controls=\"ui-basic\">\n");
      out.write("                        <span class=\"menu-icon\">\n");
      out.write("                            <i class=\"mdi mdi-table\"></i>\n");
      out.write("                        </span>\n");
      out.write("                        <span class=\"menu-title\">Issue</span>\n");
      out.write("                        <i class=\"menu-arrow\"></i>\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"collapse\" id=\"ui-basic3\">\n");
      out.write("                        <ul class=\"nav flex-column sub-menu\">\n");
      out.write("                            <li class=\"nav-item\"> <a class=\"nav-link\" href=\"addissue.html\">Add\n");
      out.write("                                    Issue</a></li>\n");
      out.write("                            <li class=\"nav-item\"> <a class=\"nav-link\" href=\"dispissue.html\">Display\n");
      out.write("                                    Issues</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item menu-items\">\n");
      out.write("                    <a class=\"nav-link\" data-toggle=\"collapse\" href=\"#ui-basic4\" aria-expanded=\"false\"\n");
      out.write("                        aria-controls=\"ui-basic\">\n");
      out.write("                        <span class=\"menu-icon\">\n");
      out.write("                            <i class=\"mdi mdi-paypal\"></i>\n");
      out.write("                        </span>\n");
      out.write("                        <span class=\"menu-title\">Fine</span>\n");
      out.write("                        <i class=\"menu-arrow\"></i>\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"collapse\" id=\"ui-basic4\">\n");
      out.write("                        <ul class=\"nav flex-column sub-menu\">\n");
      out.write("                            <li class=\"nav-item\"> <a class=\"nav-link\" href=\"addfine.html\">Add Fine</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-item\"> <a class=\"nav-link\" href=\"dispfine.html\">Display\n");
      out.write("                                    Fines</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("        <!-- partial -->\n");
      out.write("        <div class=\"container-fluid page-body-wrapper\">\n");
      out.write("            <!-- partial:../../partials/_navbar.html -->\n");
      out.write("            <nav class=\"navbar p-0 fixed-top d-flex flex-row\">\n");
      out.write("                <div class=\"navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center\">\n");
      out.write("                    <a class=\"navbar-brand brand-logo-mini\" href=\"index.html\"><img src=\"images/logo-mini.svg\"\n");
      out.write("                            alt=\"logo\" /></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"navbar-menu-wrapper flex-grow d-flex align-items-stretch\">\n");
      out.write("                    <button class=\"navbar-toggler navbar-toggler align-self-center\" type=\"button\"\n");
      out.write("                        data-toggle=\"minimize\">\n");
      out.write("                        <span class=\"mdi mdi-menu\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <ul class=\"navbar-nav navbar-nav-right\">\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link\" id=\"profileDropdown\" href=\"#\" data-toggle=\"dropdown\">\n");
      out.write("                                <div class=\"navbar-profile\">\n");
      out.write("                                    <img class=\"img-xs rounded-circle\"\n");
      out.write("                                        src=\"https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3-bg.webp\"\n");
      out.write("                                        alt=\"\">\n");
      out.write("                                    <p class=\"mb-0 d-none d-sm-block navbar-profile-name\">Pankaj Matele</p>\n");
      out.write("                                    <i class=\"mdi mdi-menu-down d-none d-sm-block\"></i>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu dropdown-menu-right navbar-dropdown preview-list\"\n");
      out.write("                                aria-labelledby=\"profileDropdown\">\n");
      out.write("                                <h6 class=\"p-3 mb-0\">Profile</h6>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item preview-item\">\n");
      out.write("                                    <div class=\"preview-thumbnail\">\n");
      out.write("                                        <div class=\"preview-icon bg-dark rounded-circle\">\n");
      out.write("                                            <i class=\"mdi mdi-settings text-success\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"preview-item-content\">\n");
      out.write("                                        <p class=\"preview-subject mb-1\">Settings</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <a class=\"dropdown-item preview-item\">\n");
      out.write("                                    <div class=\"preview-thumbnail\">\n");
      out.write("                                        <div class=\"preview-icon bg-dark rounded-circle\">\n");
      out.write("                                            <i class=\"mdi mdi-logout text-danger\"></i>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"preview-item-content\">\n");
      out.write("                                        <p class=\"preview-subject mb-1\">Log out</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </a>\n");
      out.write("                                <div class=\"dropdown-divider\"></div>\n");
      out.write("                                <p class=\"p-3 mb-0 text-center\">Advanced settings</p>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <button class=\"navbar-toggler navbar-toggler-right d-lg-none align-self-center\" type=\"button\"\n");
      out.write("                        data-toggle=\"offcanvas\">\n");
      out.write("                        <span class=\"mdi mdi-format-line-spacing\"></span>\n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <!-- partial -->\n");
      out.write("            <div class=\"main-panel\">\n");
      out.write("                <div class=\"content-wrapper\">\n");
      out.write("                    <div class=\"page-header\">\n");
      out.write("                        <h3 class=\"page-title\"> Manage Fine </h3>\n");
      out.write("                        <nav aria-label=\"breadcrumb\">\n");
      out.write("                            <ol class=\"breadcrumb\">\n");
      out.write("                                <li class=\"breadcrumb-item\"><a href=\"#\">Forms</a></li>\n");
      out.write("                                <li class=\"breadcrumb-item active\" aria-current=\"page\">Manage Fine</li>\n");
      out.write("                            </ol>\n");
      out.write("                        </nav>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-12 grid-margin stretch-card\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                              <div class=\"card-body\">\n");
      out.write("                                <h4 class=\"card-title\">Fine</h4>\n");
      out.write("                                </p>\n");
      out.write("                                <div class=\"table-responsive\">\n");
      out.write("                                  <table class=\"table\">\n");
      out.write("                                    <thead>\n");
      out.write("                                      <tr>\n");
      out.write("                                       ");

                                    try {
                                        Class.forName("oracle.jdbc.driver.OracleDriver");
                                        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
                                        String sql = "{call dispfine(?,?,?,?,?,?,?)}";
                                        CallableStatement cs = con.prepareCall(sql);

                                        cs.registerOutParameter(1, OracleTypes.CURSOR);
                                        cs.registerOutParameter(2, java.sql.Types.INTEGER);
                                        cs.registerOutParameter(3, java.sql.Types.VARCHAR);
                                        cs.registerOutParameter(4, java.sql.Types.INTEGER);
                                        cs.registerOutParameter(5, java.sql.Types.DATE);
                                        cs.registerOutParameter(6, java.sql.Types.INTEGER);
                                        cs.registerOutParameter(7, java.sql.Types.VARCHAR);

                                        cs.executeQuery();

                                        ResultSet rs = (ResultSet) cs.getObject(1);
                                        out.print("<th>User Id</th>");
                                        out.print("<th>User Name</th>");
                                        out.print("<th>Book Id</th>");
                                        out.print("<th>Return Date</th>");
                                        out.print("<th>Days</th>");
                                        out.print("<th>Fine</th>");
                                        out.print("<th>Delete Fine</th>");
                                        out.print("</tr>");
                                        out.print("</thead>");
                                        out.print("<tbody>");

                                        while (rs.next()) {
                                            int uid = rs.getInt(1);
                                            String n = rs.getString(2);
                                            int bid = rs.getInt(3);
                                            Date rtd = rs.getDate(4);
                                            int  d = rs.getInt(5);
                                            String f = rs.getString(6);
                                            out.println("<tr><td>" + uid + "</td><td>" + n + "</td><td>" + bid + "</td><td>" + rtd + "</td><td>" + d + "</td><td>" + f + "</td><td>" + "<a href='delfine.jsp?uid=" +uid+ "&bid=" + bid + "'><i class='fa fa-trash-o'></i></a>" + "</td><tr>");
                                        }
                                    } catch (Exception e) {
                                        out.println(e.getMessage());
                                    }
                                
      out.write("\n");
      out.write("                                    </tbody>\n");
      out.write("                                  </table>\n");
      out.write("                                </div>\n");
      out.write("                              </div>\n");
      out.write("                            </div>\n");
      out.write("                          </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- content-wrapper ends -->\n");
      out.write("                <!-- partial:../../partials/_footer.html -->\n");
      out.write("                <footer class=\"footer\">\n");
      out.write("                    <div class=\"d-sm-flex justify-content-center justify-content-sm-between\">\n");
      out.write("                        <span class=\"text-muted d-block text-center text-sm-left d-sm-inline-block\">Copyright ©\n");
      out.write("                            bootstrapdash.com\n");
      out.write("                            2020</span>\n");
      out.write("                        <span class=\"float-none float-sm-right d-block mt-1 mt-sm-0 text-center\"> Free <a\n");
      out.write("                                href=\"https://www.bootstrapdash.com/bootstrap-admin-template/\" target=\"_blank\">Bootstrap\n");
      out.write("                                admin\n");
      out.write("                                templates</a> from Bootstrapdash.com</span>\n");
      out.write("                    </div>\n");
      out.write("                </footer>\n");
      out.write("                <!-- partial -->\n");
      out.write("            </div>\n");
      out.write("            <!-- main-panel ends -->\n");
      out.write("        </div>\n");
      out.write("        <!-- page-body-wrapper ends -->\n");
      out.write("    </div>\n");
      out.write("    <!-- container-scroller -->\n");
      out.write("  <!-- plugins:js -->\n");
      out.write("  <script src=\"vendors/js/vendor.bundle.base.js\"></script>\n");
      out.write("  <!-- endinject -->\n");
      out.write("  <!-- Plugin js for this page -->\n");
      out.write("  <script src=\"vendors/chart.js/Chart.min.js\"></script>\n");
      out.write("  <script src=\"vendors/progressbar.js/progressbar.min.js\"></script>\n");
      out.write("  <script src=\"vendors/jvectormap/jquery-jvectormap.min.js\"></script>\n");
      out.write("  <script src=\"vendors/jvectormap/jquery-jvectormap-world-mill-en.js\"></script>\n");
      out.write("  <script src=\"vendors/owl-carousel-2/owl.carousel.min.js\"></script>\n");
      out.write("  <!-- End plugin js for this page -->\n");
      out.write("  <!-- inject:js -->\n");
      out.write("  <script src=\"js/off-canvas.js\"></script>\n");
      out.write("  <script src=\"js/hoverable-collapse.js\"></script>\n");
      out.write("  <script src=\"js/misc.js\"></script>\n");
      out.write("  <script src=\"js/settings.js\"></script>\n");
      out.write("  <script src=\"js/todolist.js\"></script>\n");
      out.write("  <!-- endinject -->\n");
      out.write("  <!-- Custom js for this page -->\n");
      out.write("  <script src=\"js/dashboard.js\"></script>\n");
      out.write("  <!-- End custom js for this page -->\n");
      out.write("</body>\n");
      out.write("\n");
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
