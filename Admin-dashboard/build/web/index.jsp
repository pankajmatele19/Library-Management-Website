<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="oracle.jdbc.internal.OracleTypes"%>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Corona Admin</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- Plugin css for this page -->
        <link rel="stylesheet" href="vendors/jvectormap/jquery-jvectormap.css">
        <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel-2/owl.carousel.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel-2/owl.theme.default.min.css">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <!-- endinject -->
        <!-- Layout styles -->
        <link rel="stylesheet" href="css/style.css">
        <!-- End layout styles -->
        <link rel="shortcut icon" href="images/favicon.png" />
    </head>

    <body>
        <div class="container-scroller">
            <!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
                    <a class="sidebar-brand brand-logo" href="index.jsp" style="text-decoration: none; color:aliceblue; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Library Website</a>
                    <a class="sidebar-brand brand-logo-mini" href="index.jsp" style="text-decoration: none; color:aliceblue; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">LW</a>
                </div>
                <ul class="nav">
                    <li class="nav-item menu-items">
                        <a class="nav-link" href="index.jsp">
                            <span class="menu-icon">
                                <i class="mdi mdi-speedometer"></i>
                            </span>
                            <span class="menu-title">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item menu-items">
                        <a class="nav-link" data-toggle="collapse" href="#ui-basic1" aria-expanded="false" aria-controls="ui-basic">
                            <span class="menu-icon">
                                <i class="mdi mdi-book"></i>
                            </span>
                            <span class="menu-title">Books</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="ui-basic1">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"> <a class="nav-link" href="addbo.jsp">Add Books</a></li>
                                <li class="nav-item"> <a class="nav-link" href="dispbook.jsp">Manage Books</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item menu-items">
                        <a class="nav-link" data-toggle="collapse" href="#ui-basic2" aria-expanded="false" aria-controls="ui-basic">
                            <span class="menu-icon">
                                <i class="mdi mdi-face-profile"></i>
                            </span>
                            <span class="menu-title">Users</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="ui-basic2">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"> <a class="nav-link" href="addus.jsp">Add User</a></li>
                                <li class="nav-item"> <a class="nav-link" href="dispuser.jsp">Display Users</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item menu-items">
                        <a class="nav-link" data-toggle="collapse" href="#ui-basic3" aria-expanded="false" aria-controls="ui-basic">
                            <span class="menu-icon">
                                <i class="mdi mdi-table"></i>
                            </span>
                            <span class="menu-title">Issue</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="ui-basic3">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"> <a class="nav-link" href="addiss.jsp">Add Issue</a></li>
                                <li class="nav-item"> <a class="nav-link" href="dispissue.jsp">Display Issues</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item menu-items">
                        <a class="nav-link" data-toggle="collapse" href="#ui-basic4" aria-expanded="false" aria-controls="ui-basic">
                            <span class="menu-icon">
                                <i class="mdi mdi-paypal"></i>
                            </span>
                            <span class="menu-title">Fine</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="ui-basic4">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"> <a class="nav-link" href="addfin.jsp">Add Fine</a></li>
                                <li class="nav-item"> <a class="nav-link" href="dispfine.jsp">Display Fines</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_navbar.html -->
                <nav class="navbar p-0 fixed-top d-flex flex-row">
                    <div class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center">
                        <a class="navbar-brand brand-logo-mini" href="index.jsp"><img src="images/logo-mini.svg"
                                                                                       alt="logo" /></a>
                    </div>
                    <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
                        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                            <span class="mdi mdi-menu"></span>
                        </button>
                        <ul class="navbar-nav navbar-nav-right">
                            <li class="nav-item dropdown">
                                <a class="nav-link" id="profileDropdown" href="#" data-toggle="dropdown">
                                    <div class="navbar-profile">
                                        <% String name = (String) session.getAttribute("username"); %>
                                        <img class="img-xs rounded-circle" src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3-bg.webp" alt="">
                                        <p class="mb-0 d-none d-sm-block navbar-profile-name"><%=name %></p>
                                        <i class="mdi mdi-menu-down d-none d-sm-block"></i>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
                                     aria-labelledby="profileDropdown">
                                    
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item preview-item" href="logout.jsp">
                                        <div class="preview-thumbnail">
                                            <div class="preview-icon bg-dark rounded-circle">
                                                <i class="mdi mdi-logout text-danger"></i>
                                            </div>
                                        </div>
                                        <div class="preview-item-content">
                                            <p class="preview-subject mb-1">Log out</p>
                                        </div>
                                    </a>
                                </div>
                            </li>
                        </ul>
                        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                                data-toggle="offcanvas">
                            <span class="mdi mdi-format-line-spacing"></span>
                        </button>
                    </div>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="row">
                            <div class="col-sm-3 grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <h5>Total Books</h5>
                                        <div class="row">
                                            <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                                <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                    <%

                                        try {
                                            Class.forName("oracle.jdbc.driver.OracleDriver");
                                            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
                                            String sql = "{? = call ADBMSproject.coubook}";
                                            CallableStatement cs = con.prepareCall(sql);

                                            cs.registerOutParameter(1, java.sql.Types.INTEGER);

                                            cs.execute();
                                            out.print("<h5><strong>" + cs.getInt(1) + "</strong></h5>");

                                        } catch (Exception e) {
                                            out.println(e.getMessage());
                                        }


                                    %>
                                                </div>
                                            </div>
                                            <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                                <i class="icon-lg mdi mdi-book-multiple text-primary ml-auto"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3 grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <h5>Total Users</h5>
                                        <div class="row">
                                            <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                                <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                    <%                                        try {
                                            Class.forName("oracle.jdbc.driver.OracleDriver");
                                            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
                                            String sql = "{? = call ADBMSproject.couusers}";
                                            CallableStatement cs = con.prepareCall(sql);

                                            cs.registerOutParameter(1, java.sql.Types.INTEGER);

                                            cs.execute();
                                            out.print("<h5><strong>" + cs.getInt(1) + "</strong></h5>");
                                            
                                            
                                        } catch (Exception e) {
                                            out.println(e.getMessage());
                                        }


                                    %>
                                                </div>
                                            </div>
                                            <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                                <i class="icon-lg mdi mdi-face-profile text-primary ml-auto"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3 grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <h5>Total Issues</h5>
                                        <div class="row">
                                            <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                                <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                    <%                                        try {
                                            Class.forName("oracle.jdbc.driver.OracleDriver");
                                            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
                                            String sql = "{? = call ADBMSproject.couissue}";
                                            CallableStatement cs = con.prepareCall(sql);

                                            cs.registerOutParameter(1, java.sql.Types.INTEGER);

                                            cs.execute();
                                            out.print("<h5><strong>" + cs.getInt(1) + "</strong></h5>");
                                            
                                            
                                        } catch (Exception e) {
                                            out.println(e.getMessage());
                                        }


                                    %>
                                                </div>
                                            </div>
                                            <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                                <i class="icon-lg mdi mdi-table-plus text-primary ml-auto"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3 grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <h5>Total Fines</h5>
                                        <div class="row">
                                            <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                                <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                    <%                                        try {
                                            Class.forName("oracle.jdbc.driver.OracleDriver");
                                            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
                                            String sql = "{? = call ADBMSproject.coufine}";
                                            CallableStatement cs = con.prepareCall(sql);

                                            cs.registerOutParameter(1, java.sql.Types.INTEGER);

                                            cs.execute();
                                            out.print("<h5><strong>" + cs.getInt(1) + "</strong></h5>");
                                            
                                            
                                        } catch (Exception e) {
                                            out.println(e.getMessage());
                                        }


                                    %>
                                                </div>
                                            </div>
                                            <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                                <i class="icon-lg mdi mdi-paypal text-primary ml-auto"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center align-items-center">
                            <div class="col-md-12 col-xl-4" style="width:500px;">

                                <div class="card" style="border-radius: 15px; background-color: azure;">
                                    <div class="card-body text-center">
                                        <div class="mt-3 mb-4">
                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3-bg.webp"
                                                 class="rounded-circle img-fluid" style="width: 200px;" />
                                        </div>
                                        <h4 class="mb-2" style="color: black;"><%=name %></h4>
                                        <p class="text-muted mb-4">Admin <span class="mx-2">|</span> <a href="#!">Pillai
                                                College</a></p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:partials/_footer.html -->
                    <footer class="footer">
                        <div class="d-sm-flex justify-content-center justify-content-sm-between">
                            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com
                                2020</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a
                                    href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin
                                    templates</a> from Bootstrapdash.com</span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->
        <!-- plugins:js -->
        <script src="vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->

        <!-- inject:js -->
        <script src="js/off-canvas.js"></script>
        <script src="js/hoverable-collapse.js"></script>
        <script src="js/misc.js"></script>
        <script src="js/settings.js"></script>
        <script src="js/todolist.js"></script>
        <!-- endinject -->
        <script src="vendors/chart.js/Chart.min.js"></script>
        <script src="vendors/progressbar.js/progressbar.min.js"></script>
        <script src="vendors/jvectormap/jquery-jvectormap.min.js"></script>
        <script src="vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

        <!-- Custom js for this page -->
        <script src="js/dashboard.js"></script>
        <!-- End custom js for this page -->
    </body>

</html>