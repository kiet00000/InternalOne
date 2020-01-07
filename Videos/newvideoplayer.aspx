<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newvideoplayer.aspx.cs" Inherits="NewFinalFYP.Videos.newvideoplayer" %>

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
    <title>Elite Admin Template - The Ultimate Multipurpose admin template</title>
    <link rel="stylesheet" href="../UserTheme/dist/js/jPlayer/jplayer.flat.css" type="text/css" />
    <!-- Custom CSS -->
    <link href="../UserTheme/dist/css/pages/user-card.css" rel="stylesheet">
    <link href="../UserTheme/dist/css/style.min.css" rel="stylesheet">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>

    <link rel="stylesheet" href="../UserTheme/dist/js/jPlayer/jplayer.flat.css" type="text/css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <style>
        .modal-backdrop{
            z-index:1 !important;

        }
    </style>

</head>

<body class="skin-megna fixed-layout">

    <script language="javascript">
    var video=document.getElementById("#myVideo");
    var count=0;
    var video = document.getElementById(".myVideo"); //or
    var video = $(".myVideo").get(0); //or
    var video = $(".myVideo")[0];

        $(document).ready(function () {

           $(".play").click(function(){
            $(".myVideo").get(0).play();
           count= $('.myVideo').length();
           });
           $(".Pause").click(function(){
               $(".myVideo").get(0).pause();

           // $('#txt').text(count);
               duration();
           });

           $(".myVideo").on("timeupdate",function(event){
                onTrackedVideoFrame(this.currentTime, this.duration);
    });
             



        });
        function onTrackedVideoFrame(currentTime, duration){
            $("#current").text(currentTime); //Change #current to currentTime  
            $("#duration").text(duration);
            //openModal();
           <%-- document.getElementById('<%=HiddenField1.ClientID%>').value = currentTime;--%>
}


            function recursive(){
                    recursion();
            };
            function   recursion(){
                count++;
                
        }
    </script>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">Elite admin</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <form id="form1" runat="server"> 
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon --><b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="../UserTheme/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo icon -->
                            <img src="../UserTheme/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text --><span>
                         <!-- dark Logo text -->
                         <img src="../UserTheme/images/logo-text.png" alt="homepage" class="dark-logo" />
                         <!-- Light Logo text -->    
                         <img src="../UserTheme/images/logo-light-text.png" class="light-logo" alt="homepage" /></span> </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav mr-auto">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler d-block d-md-none waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        <li class="nav-item"> <a class="nav-link sidebartoggler d-none d-lg-block d-md-block waves-effect waves-dark" href="javascript:void(0)"><i class="icon-menu"></i></a> </li>
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->

                    </ul>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0">
                        <!-- ============================================================== -->
                        <!-- Comment -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="ti-email"></i>
                                <div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown">
                                <ul>
                                    <li>
                                        <div class="drop-title">Notifications</div>
                                    </li>
                                    <li>
                                        <div class="message-center">
                                            <!-- Message -->
                                            <a href="javascript:void(0)">
                                                <div class="btn btn-danger btn-circle"><i class="fa fa-link"></i></div>
                                                <div class="mail-contnet">
                                                    <h5>Luanch Admin</h5> <span class="mail-desc">Just see the my new admin!</span> <span class="time">9:30 AM</span> </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)">
                                                <div class="btn btn-success btn-circle"><i class="ti-calendar"></i></div>
                                                <div class="mail-contnet">
                                                    <h5>Event today</h5> <span class="mail-desc">Just a reminder that you have event</span> <span class="time">9:10 AM</span> </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)">
                                                <div class="btn btn-info btn-circle"><i class="ti-settings"></i></div>
                                                <div class="mail-contnet">
                                                    <h5>Settings</h5> <span class="mail-desc">You can customize this template as you want</span> <span class="time">9:08 AM</span> </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)">
                                                <div class="btn btn-primary btn-circle"><i class="ti-user"></i></div>
                                                <div class="mail-contnet">
                                                    <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span> <span class="time">9:02 AM</span> </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link text-center link" href="javascript:void(0);"> <strong>Check all notifications</strong> <i class="fa fa-angle-right"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- End Comment -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Messages -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" id="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="icon-note"></i>
                                <div class="notify"> <span class="heartbit"></span> <span class="point"></span> </div>
                            </a>
                            <div class="dropdown-menu mailbox dropdown-menu-right animated bounceInDown" aria-labelledby="2">
                                <ul>
                                    <li>
                                        <div class="drop-title">You have 4 new messages</div>
                                    </li>
                                    <li>
                                        <div class="message-center">
                                            <!-- Message -->
                                            <a href="javascript:void(0)">
                                                <div class="user-img"> <img src="../UserTheme/images/users/1.jpg" alt="user" class="img-circle"> <span class="profile-status online pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span> <span class="time">9:30 AM</span> </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)">
                                                <div class="user-img"> <img src="../UserTheme/images/users/2.jpg" alt="user" class="img-circle"> <span class="profile-status busy pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Sonu Nigam</h5> <span class="mail-desc">I've sung a song! See you at</span> <span class="time">9:10 AM</span> </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)">
                                                <div class="user-img"> <img src="../UserTheme/images/users/3.jpg" alt="user" class="img-circle"> <span class="profile-status away pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Arijit Sinh</h5> <span class="mail-desc">I am a singer!</span> <span class="time">9:08 AM</span> </div>
                                            </a>
                                            <!-- Message -->
                                            <a href="javascript:void(0)">
                                                <div class="user-img"> <img src="../UserTheme/images/users/4.jpg" alt="user" class="img-circle"> <span class="profile-status offline pull-right"></span> </div>
                                                <div class="mail-contnet">
                                                    <h5>Pavan kumar</h5> <span class="mail-desc">Just see the my admin!</span> <span class="time">9:02 AM</span> </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="nav-link text-center link" href="javascript:void(0);"> <strong>See all e-Mails</strong> <i class="fa fa-angle-right"></i> </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- End Messages -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- mega menu -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown mega-dropdown"> <a class="nav-link dropdown-toggle waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="ti-layout-width-default"></i></a>
                            <div class="dropdown-menu animated bounceInDown">
                                <ul class="mega-dropdown-menu row">
                                    <li class="col-lg-3 col-xlg-2 m-b-30">
                                        <h4 class="m-b-20">CAROUSEL</h4>
                                        <!-- CAROUSEL -->
                                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                                            <div class="carousel-inner" role="listbox">
                                                <div class="carousel-item active">
                                                    <div class="container"> <img class="d-block img-fluid" src="../UserTheme/images/big/img1.jpg" alt="First slide"></div>
                                                </div>
                                                <div class="carousel-item">
                                                    <div class="container"><img class="d-block img-fluid" src="../UserTheme/images/big/img2.jpg" alt="Second slide"></div>
                                                </div>
                                                <div class="carousel-item">
                                                    <div class="container"><img class="d-block img-fluid" src="../UserTheme/images/big/img3.jpg" alt="Third slide"></div>
                                                </div>
                                            </div>
                                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
                                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
                                        </div>
                                        <!-- End CAROUSEL -->
                                    </li>
                                    <li class="col-lg-3 m-b-30">
                                        <h4 class="m-b-20">ACCORDION</h4>
                                        <!-- Accordian -->
                                        <div class="accordion" id="accordionExample">
                                            <div class="card m-b-0">
                                                <div class="card-header bg-white p-0" id="headingOne">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                            Collapsible Group Item #1
                                                        </button>
                                                    </h5>
                                                </div>

                                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card m-b-0">
                                                <div class="card-header bg-white p-0" id="headingTwo">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false"
                                                            aria-controls="collapseTwo">
                                                            Collapsible Group Item #2
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card m-b-0">
                                                <div class="card-header bg-white p-0" id="headingThree">
                                                    <h5 class="mb-0">
                                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false"
                                                            aria-controls="collapseThree">
                                                            Collapsible Group Item #3
                                                        </button>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        Anim pariatur cliche reprehenderit, enim eiusmod high.
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="col-lg-3  m-b-30">
                                        <h4 class="m-b-20">CONTACT US</h4>
                                        <!-- Contact -->
                                        <form>
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="exampleInputname1" placeholder="Enter Name"> </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Enter email"> </div>
                                            <div class="form-group">
                                                <textarea class="form-control" id="exampleTextarea" rows="3" placeholder="Message"></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-info">Submit</button>
                                        </form>
                                    </li>
                                    <li class="col-lg-3 col-xlg-4 m-b-30">
                                        <h4 class="m-b-20">List style</h4>
                                        <!-- List style -->
                                        <ul class="list-style-none">
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> You can give link</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Give link</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Another Give link</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Forth link</a></li>
                                            <li><a href="javascript:void(0)"><i class="fa fa-check text-success"></i> Another fifth link</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- End mega menu -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- User Profile -->
                        <!-- ============================================================== -->
                        
                        <!-- ============================================================== -->
                        <!-- End User Profile -->
                        <!-- ============================================================== -->
                        <li class="nav-item right-side-toggle"> <a class="nav-link  waves-effect waves-light" href="javascript:void(0)"><i class="ti-settings"></i></a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
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
                                <li> <a href="../Videos/newvideoplayer.aspx">Video Player</a> </li>
                            </ul>
                        </li>
                        <li>
                            <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" CssClass="waves-effect waves-dark" runat="server" aria-expanded="false"><i class="far fa-circle text-success"></i><span class="hide-menu">Log Out</span></asp:LinkButton></li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
            
         <div class="row">
                    <!-- column -->
                    <div class="col-lg-8">
                        <div class="card">
                        </div>
                        </div>
                    </div>
         
                </div>

        <div class="page-wrapper">
            
     <asp:Button ID="PlayButton"  CssClass="play" OnClick="PlayButton_Click" runat="server" Text="Play" />
    <asp:Button ID="Pause"  CssClass="Pause" data-toggle="modal" data-target="#myModal" OnClick="PauseButtonclick" runat="server" Text="Pause" />

            <%--<button type="button" class="btn btn-info btn-lg" id="modalbtn" data-toggle="modal" data-target="#myModal">Open Modal</button>--%>



<!-- Button trigger modal -->
<%--<button id="modalButton" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button>--%>
<style>
    .modal-ku {
  width: 740px;
  margin: auto;
}
</style>
<!-- Modal -->
<div class="modal fade" data-backdrop="static" data-keyboard="false" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Please Show Your Face</h5>
       
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="cameraWork">



        </div>
      </div>
      <div class="modal-footer">
    
      
      </div>
    </div>
  </div>
</div>



            























           
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
      <div class="modal-body">
<div class="col-xs-12">
<div id="my_camera"></div>
	<script type="text/javascript" src="../webcam.min.js"></script>
	<script language="JavaScript">
        Webcam.set({
            width: 750,
            height: 750,
            image_format: 'jpeg',
            jpeg_quality: 90
        });
	</script>


	<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

	<script language="JavaScript">

        function base64ToBlob(base64, mime) {
            mime = mime || '';
            var sliceSize = 1024;
            var byteChars = window.atob(base64);
            var byteArrays = [];

            for (var offset = 0, len = byteChars.length; offset < len; offset += sliceSize) {
                var slice = byteChars.slice(offset, offset + sliceSize);

                var byteNumbers = new Array(slice.length);
                for (var i = 0; i < slice.length; i++) {
                    byteNumbers[i] = slice.charCodeAt(i);
                }

                var byteArray = new Uint8Array(byteNumbers);

                byteArrays.push(byteArray);
            }

            return new Blob(byteArrays, { type: mime });
        }


        makeblob = function (dataURL) {
            var BASE64_MARKER = ';base64,';
            if (dataURL.indexOf(BASE64_MARKER) == -1) {
                var parts = dataURL.split(',');
                var contentType = parts[0].split(':')[1];
                var raw = decodeURIComponent(parts[1]);
                return new Blob([raw], { type: contentType });
            }
            var parts = dataURL.split(BASE64_MARKER);
            var contentType = parts[0].split(':')[1];
            var raw = window.atob(parts[1]);
            var rawLength = raw.length;

            var uInt8Array = new Uint8Array(rawLength);

            for (var i = 0; i < rawLength; ++i) {
                uInt8Array[i] = raw.charCodeAt(i);
            }

            return new Blob([uInt8Array], { type: contentType });
        }

        function take_snapshot() {
            Webcam.snap(function (data_uri) {

                var formData = new FormData();  
                formData.append('file', makeblob(data_uri));

                $.ajax({
                    type: 'POST',
                    url: 'http://127.0.0.1:5001/FaceRecognition_api',
                    data: formData,
                    contentType: false,
                    cache: false,
                    processData: false,
                    success: function (data) {
                        console.log(data)
                        //gettingdata(data);

                        
                    },
                });

            });
        }


        function sleep(ms) {
            return new Promise(resolve => setTimeout(resolve, ms));
        }






        function gettingdata(data) {
            $.ajax({
                type: "POST",
                url: "Login.aspx/GetData",
                contentType: "application/json; charset=utf-8",
                data: { value1: data },
                dataType: "json",
                success: onsuccess,
                failure: function (response) {
                    console.log(response.d);
                }

            });

        }
        function onsuccess(response) {
            console.log(response.d);
        }



	</script>

      </div>
    </div>
      </div>
  </div>


                 
                <asp:HiddenField ID="HiddenField1" runat="server" />
                
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h4 class="text-themecolor">Video Detail Page</h4>
                    </div>
                    
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    
                    <!-- column -->
                    <div class="col-lg-8">
                        <div class="card">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                           <div class="card-body">
                               
<div id="abbu">
     <video class="myVideo" height="400" width="400" autoplay  controls src="<%#Eval("VideoName") %>"  >   
        <source id="ss"  type='video/mp4'>
    </video>
</div>



                               <script>



                                   function showPopup() {

                                       $("#modalButton").trigger("click");

                                       Webcam.set({
                                           width: 750,
                                           height: 500,
                                           image_format: 'jpeg',
                                           jpeg_quality: 90
                                       });

                                       Webcam.attach('#cameraWork');





                                       function base64ToBlob(base64, mime) {
                                           mime = mime || '';
                                           var sliceSize = 1024;
                                           var byteChars = window.atob(base64);
                                           var byteArrays = [];

                                           for (var offset = 0, len = byteChars.length; offset < len; offset += sliceSize) {
                                               var slice = byteChars.slice(offset, offset + sliceSize);

                                               var byteNumbers = new Array(slice.length);
                                               for (var i = 0; i < slice.length; i++) {
                                                   byteNumbers[i] = slice.charCodeAt(i);
                                               }

                                               var byteArray = new Uint8Array(byteNumbers);

                                               byteArrays.push(byteArray);
                                           }

                                           return new Blob(byteArrays, { type: mime });
                                       }


                                       makeblob = function (dataURL) {
                                           var BASE64_MARKER = ';base64,';
                                           if (dataURL.indexOf(BASE64_MARKER) == -1) {
                                               var parts = dataURL.split(',');
                                               var contentType = parts[0].split(':')[1];
                                               var raw = decodeURIComponent(parts[1]);
                                               return new Blob([raw], { type: contentType });
                                           }
                                           var parts = dataURL.split(BASE64_MARKER);
                                           var contentType = parts[0].split(':')[1];
                                           var raw = window.atob(parts[1]);
                                           var rawLength = raw.length;

                                           var uInt8Array = new Uint8Array(rawLength);

                                           for (var i = 0; i < rawLength; ++i) {
                                               uInt8Array[i] = raw.charCodeAt(i);
                                           }

                                           return new Blob([uInt8Array], { type: contentType });
                                       }

                                       function take_snapshot() {
                                           Webcam.snap(function (data_uri) {

                                               var formData = new FormData();
                                               formData.append('file', makeblob(data_uri));

                                               $.ajax({
                                                   type: 'POST',
                                                   url: 'http://127.0.0.1:5001/FaceRecognition_api',
                                                   data: formData,
                                                   contentType: false,
                                                   cache: false,
                                                   processData: false,
                                                   success: function (data) {
                                                       console.log(data)
                                                       //gettingdata(data);
                                                     
                                                       if (data.username != "") {
                                                           $("#exampleModal").modal("hide");
                                                           $(".myVideo").get(0).play();
                                                       }


                                                   },
                                               });

                                           });
                                       }


                                       function sleep(ms) {
                                           return new Promise(resolve => setTimeout(resolve, ms));
                                       }


                                       function chalonaJaan() {
                                           if (typeof Webcam === "object" && Webcam.live) {
                                               console.log(typeof Webcam);
                                               take_snapshot();
                                           }
                                       }



                                       function gettingdata(data) {
                                           console.log(data.username);
                                       
                                           if (data.username != "") {



                                               $.ajax({
                                                   type: "POST",
                                                   url: "Login.aspx/GetData",
                                                   contentType: "application/json; charset=utf-8",
                                                   data: JSON.stringify({ value1: data.username }),
                                                   dataType: "json",
                                                   success: onsuccess,
                                                   failure: function (response) {
                                                       console.log(response.d);
                                                   }

                                               });




                                           }



                                       }
                                       function onsuccess(response) {
                                           console.log(response.d);
                                           //window.location.replace("UserDashboard.aspx");


                                       }
                                       window.setInterval(function () {
                                           chalonaJaan();
                                       }, 1000);



                                   }



                                   $(".myVideo").click(function () {


                                       if (!this.paused) {

                                           setTimeout("showPopup()", 1000);
                                       }
                                     
                                   });


            </script>
<%--<button type="button" id="btn">Call Count</button>
<label id="txt">0</label>--%>

                               
<div id="current">0:00</div>
<div id="duration">0:00</div>
                           </div>
                                    </ItemTemplate>
                                </asp:Repeater>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer">
            © 2019 Eliteadmin by themedesigner.in
        </footer>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
                    </div>
                </div>
           
    
           </div>
        </form>
         
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
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