<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VideoPlayer.aspx.cs" Inherits="NewFinalFYP.Videos.Video_Player" %>

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
    <title> Ali And Usama </title>
    <link rel="stylesheet" href="../UserTheme/dist/js/jPlayer/jplayer.flat.css" type="text/css" />
    <!-- Custom CSS -->
    <link href="../UserTheme/dist/css/pages/user-card.css" rel="stylesheet">
    <link href="../UserTheme/dist/css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</head>

<body class="skin-megna fixed-layout">
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">Ali Usama</p>
        </div>
    </div>
    <div id="main-wrapper">
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                       <b>
                          
                            <img src="../UserTheme/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <img src="../UserTheme/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b><span>
                         <img src="../UserTheme/images/logo-text.png" alt="homepage" class="dark-logo" />  
                         <img src="../UserTheme/images/logo-light-text.png" class="light-logo" alt="homepage" /></span> </a>
                </div>
                <div class="navbar-collapse">
           
                    <ul class="navbar-nav my-lg-0">
                        <li class="nav-item right-side-toggle"> <a class="nav-link  waves-effect waves-light" href="javascript:void(0)"><i class="ti-settings"></i></a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">

                        <li><a href="../User/UserDashboard.aspx"   aria-expanded="false"><i class="ti-video-camera" ></i><span class="hide-menu">Dashboard </span></a>

                            <ul aria-expanded="false" class="collapse">
                                <li><a href="../Videos/VideoPlayer.aspx">Video Player</a> </li>
                            </ul>
                        </li>
                        <li><a href="../Videos/NewVideoWork.aspx" class="waves-effect waves-dark" aria-expanded="false"><i class="icon-speedometer"></i><span class="hide-menu">Videos</span></a>
                            <ul aria-expanded="false" class="collapse">
                            </ul>

                        </li>
                        <li> <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" CssClass="waves-effect waves-dark" runat="server" aria-expanded="false"><i class="far fa-circle text-success"></i><span class="hide-menu">Log Out</span></asp:LinkButton></li>
                    </ul>
                </nav>
            </div>
        </aside>
        <div class="page-wrapper">
            <div class="container-fluid">
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h4 class="text-themecolor">Video Player</h4>
                    </div>
                    <div class="col-md-7 align-self-center text-right">
                        <div class="d-flex justify-content-end align-items-center">
                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- column -->
                    <div class="col-lg-8">
                        <div class="card">
                        </div>
                        </div>
                    </div>
                </div>

            
    <!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
      <div class="modal-body">

<video autoplay></video>
<script>
  function update(stream) {
    document.querySelector('video').src = stream.url;
  }
</script>
     <video autoplay></video>
<script>
const constraints = {
  video: true
};

const video = document.querySelector('video');

navigator.mediaDevices.getUserMedia(constraints).
  then((stream) => {video.srcObject = stream});
</script>
      </div>
    </div>

  </div>


            <div class="row el-element-overlay">
                <!-- column -->
                <div class="col-md-12">
                    <form id ="dropform" runat="server">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">ALL VIDEOS </h5>
                            <asp:DropDownList ID="DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
                            <div class="row m-t-30">

                                <!-- column -->
<%--                                <asp:Button ID="videoplay" runat="server" Text="Play Video" />
                                <button style="color:white; font-style:normal; background-color: dodgerblue; border-radius:5px" id="play" onclick="playVid()" type="button">Play Video</button>
                                <button style="color:white; font-style:normal; background-color: dodgerblue; border-radius:5px" id="pauseVideo" onclick="pauseVid()" type="button">Pause Video</button>
                                <div id="chartdiv" style="width: 100%; height: 50px; background-color:white"></div>
                                <%--<video id="myVideo" width="480" height="360" controls>--%>
<script> 
    var vid = document.getElementById("#play");
    var dv = document.getElementById("#pauseVideo");
    var count = 0;
    function playVid() { 
        vid.play();
        recursiveCount();
       
} 

function pauseVid() { 
    dv.pause(); 
    
    } 
    function recursiveCount() {
        recursive();
    }
    function recursive() {
        count++;
        recursiveCount();
    }
</script>
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                             <ContentTemplate>
                                        <div class="col-lg-4 col-md-12">

                                            <div class="el-card-item">


                                                <div class="el-card-avatar el-overlay-1">
                                                    <div class="b-video">
                                                        <div class="vp">
                                                            <a href="NewVideoWork.aspx">
                                                                  <video height="auto" width="100%" controls>
                                                          
                                                            <source src="<%#Eval("VideoName") %>" type="video/ogg">
                                                        </video>

                                                            </a>
                                                        </div>
                                                       
                                                    </div>
                                                </div>
                                                <div class="el-card-content text-left">
                                                    <h5 class="card-title m-b-0"></h5>
                                                    <small class="text-muted"></small>
                                                </div>
                                            </div>


                                        </div>

                                        </div>
                                                 </ContentTemplate>
                            </asp:UpdatePanel>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>--%>
                        </div>
                    </div>
                        </form>
                </div>
                <!-- column -->
            </div>
                </div>
            
        </div>
        <footer class="footer">
            © 2019 Designed by Usama Khan & Ali Hassan Khan
        </footer>
    <script src="../UserTheme/node_modules/jquery/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../UserTheme/node_modules/popper/popper.min.js"></script>
    <script src="../UserTheme/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../UserTheme/dist/js/perfect-scrollbar.jquery.min.js"></script>
    <!--Wave Effects -->
    <script src="../UserTheme/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../UserTheme/dist/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script type="text/javascript" src="../UserTheme/dist/js/jPlayer/jquery.jplayer.min.js"></script>
    <script type="text/javascript" src="../UserTheme/dist/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
    <script type="text/javascript" src="../UserTheme/dist/js/jPlayer/init.js"></script>
    <!--Custom JavaScript -->
    <script src="../UserTheme/dist/js/custom.min.js"></script>
</body>

</html>
