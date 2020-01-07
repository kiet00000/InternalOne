<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="NewFinalFYP.User.UserDashboard" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../UserTheme/images/favicon.png">
    <link href="../UserTheme/node_modules/morrisjs/morris.css" rel="stylesheet">
    <!-- Vector CSS -->
    <link href="../UserTheme/node_modules/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
    <!--c3 CSS -->
    <link href="../UserTheme/dist/css/pages/easy-pie-chart.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../UserTheme/dist/css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../UserTheme/node_modules/dropify/dist/css/dropify.min.css">
    <!-- Dashboard 1 Page CSS -->
    <link href="../UserTheme/dist/css/pages/dashboard2.css" rel="stylesheet">
    <title>UserDashboard</title>
</head>

<body class="skin-megna fixed-layout">
    <form id="a" runat="server">
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">A&U pvt ltd</p>
        </div>
    </div>
    <div id="main-wrapper">
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header">
                    <a class="navbar-brand" href="UserDashboard.aspx">
                        <b>
                            <img src="../UserTheme/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo icon -->
                            <img src="../UserTheme/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span>
                            <!-- dark Logo text -->
                            <img src="../UserTheme/images/logo-text.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo text -->
                            <img src="../UserTheme/images/logo-light-text.png" class="light-logo" alt="homepage" /></span> </a>
                </div>

            </nav>
        </header>
        
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li> <a class="waves-effect waves-dark" href="UserDashboard.aspx" aria-expanded="false"><i class="icon-speedometer"></i><span class="hide-menu">Dashboard</span></a></li>
                        <li> <a class="has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="ti-video-camera"></i><span class="hide-menu">Videos</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li> <a href="../Videos/VideoList.aspx">Video List</a> </li>
                                <%--<li> <a href="../Videos/newvideoplayer.aspx">Video Player</a> </li>--%>
                            </ul>
                        </li>
                         <li><asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" CssClass="waves-effect waves-dark" runat="server" aria-expanded="false"><i class="far fa-circle text-success"></i><span class="hide-menu">Log Out</span></asp:LinkButton></li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>




        <%--<aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li><a class="collapse" href="UserDashboard.aspx" aria-expanded="false">Dashboard</a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/Videos/VideoPlayer.aspx">VideoPlayer</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>--%>
        <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h4 class="text-themecolor">Uploads</h4>
                    </div>
                    <div class="col-md-7 align-self-center text-right">
                        <div class="d-flex justify-content-end align-items-center">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                <li class="breadcrumb-item active">Uploads</li>
                            </ol>
                            <button type="button" class="btn btn-info d-none d-lg-block m-l-15"><i class="fa fa-plus-circle"></i> Create New</button>
                        </div>
                    </div>
                </div>

        <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="card">
                            <div class="card-body" style="margin-left: 229px;">
                                <h4 class="card-title">File Upload1</h4>
                                <label for="input-file-now">Your so fresh input file — Default version</label>
                                <asp:DropDownList cssclass="dropdown-video-page" ID="CategoryDropDownList1" runat="server"></asp:DropDownList>
                               
                                <div class="dropify-wrapper">
                                    <div class="dropify-message"><span class="file-icon"></span>
                                        <p>Drag and drop a file here or click</p>
                                        <p class="dropify-error">Ooops, something wrong appended.</p>
                                    </div>
                                    <div class="dropify-loader"></div>
                                    <div class="dropify-errors-container">
                                        <ul></ul>
                                    </div>
                                    <%--<input type="file" id="input-file-now" class="dropify">--%>
                                    <asp:FileUpload ID="VideoUpload" CssClass="dropify" runat="server" />
                                    <asp:Label ID="CategoryLabel1" runat="server" Text=""></asp:Label>
                                    <button type="button" class="dropify-clear">Remove</button><div class="dropify-preview"><span class="dropify-render"></span>
                                        <div class="dropify-infos">
                                            <div class="dropify-infos-inner">
                                                <p class="dropify-filename"><span class="file-icon"></span><span class="dropify-filename-inner"></span></p>
                                                <p class="dropify-infos-message">Drag and drop or click to replace</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                              <asp:Button ID="Button1" class="btn btn-link collapsed" OnClick="Button1_Click" runat="server" autopostback="false" Text="Upload"/>
                             <asp:Button ID="Button2" class="btn btn-link collapsed" OnClick="Button2_Click" runat="server" autopostback="false" Text="Delete" />
                            
                            </div>
                        </div>  
                    </div>
                </div>
    </div>
            
        <footer class="footerr">
            © 2019 Designed by Ali & Usama
        </footer>
    <script src="../UserTheme/node_modules/jquery/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap popper Core JavaScript -->
    <script src="../UserTheme/node_modules/popper/popper.min.js"></script>
    <script src="../UserTheme/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../UserTheme/../UserTheme/dist/js/perfect-scrollbar.jquery.min.js"></script>
    <!--Wave Effects -->
    <script src="../UserTheme/../UserTheme/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../UserTheme/../UserTheme/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../UserTheme/../UserTheme/dist/js/custom.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->
    <!-- Flot Charts JavaScript -->
    <script src="../UserTheme/node_modules/flot/jquery.flot.js"></script>
    <script src="../UserTheme/node_modules/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <!--sparkline JavaScript -->
    <script src="../UserTheme/node_modules/sparkline/jquery.sparkline.min.js"></script>
    <!-- EASY PIE CHART JS -->
    <script src="../UserTheme/node_modules/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
    <script src="../UserTheme/node_modules/jquery.easy-pie-chart/easy-pie-chart.init.js"></script>
    <!-- Vector map JavaScript -->
    <script src="../UserTheme/node_modules/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="../UserTheme/node_modules/vectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- Chart JS -->
    <script src="dist/js/dashboard2.js"></script>
   
        </form>
</body>

</html>
