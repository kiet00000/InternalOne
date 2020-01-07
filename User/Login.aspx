<%@ Page Language="C#" EnableEventValidation="true" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NewFinalFYP.User.Login" %>


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
        
        <!-- page css -->
        <link href="../UserTheme/dist/css/pages/login-register-lock.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="../UserTheme/dist/css/style.min.css" rel="stylesheet">
<%--    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">--%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
      <style>
          /*#wrapper{
              background-image: url("../UserTheme/images/background/login-register.jpg")
          }*/
      </style>
    </head>

    <body>
        <div class="preloader">
            <div class="loader">
                <div class="loader__figure"></div>
                <p class="loader__label">Elite admin</p>
            </div>
        </div>
        <section id="wrapper" class="login-register login-sidebar">
           


             <div class="login-box card">
                <form id="form" runat="server">
                    <div class="card-body">
                       <i class="font-bold font-25"> Log-in with your account </i>
                        <div class="form-group m-t-40">
                            <div class="col-xs-12">
                                <asp:TextBox ID="email1" class="form-control" type="text" required="" placeholder="UserEmail" runat="server"></asp:TextBox>
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <asp:TextBox ID="password1" class="form-control" type="password" required="" placeholder="Password" runat="server"></asp:TextBox>
                               
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <div class="d-flex no-block align-items-center">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="customCheck1">
                                        <label class="custom-control-label" for="customCheck1">Remember me</label>
                                    </div> 
                                    <div class="ml-auto">
                                        <a href="javascript:void(0)" id="to-recover" class="text-muted"><i class="fas fa-lock m-r-5"></i> Forgot Password?</a> 
                                    </div>
                                </div>   
                            </div>
                        </div>
                        </div>
                        <div class="form-group text-center m-t-20">
                            <div class="col-xs-12">
                                <asp:Button ID="Login_Button" OnClick="Login_Button_Click" class="btn btn-info btn-lg btn-block text-uppercase btn-rounded" runat="server" Text="Login" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 m-t-10 text-center">
                            </div>
                        </div>
                        <div class="form-group m-b-0">
                            <div class="col-sm-12 text-center">
                               <p>Don't have an account?</p><a href="Registration.aspx" class="text-primary m-l-5"><b>Sign Up</b></a>
                            </div>
                        </div>
                    </form>
                    <form class="form-horizontal" id="recoverform" action="index.html">
                        <div class="form-group ">
                            <div class="col-xs-12">
                                <h3>Recover Password</h3>
                                <p class="text-muted">Enter your Email and instructions will be sent to you! </p>
                            </div>
                        </div>
                        <div class="form-group ">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" required="" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group text-center m-t-20">
                            <div class="col-xs-12">
                                <%--<asp:Button ID="Reset_Button" OnClientClick="Reset_Button_click" class="btn btn-primary btn-lg btn-block text-uppercase waves-effect waves-light" runat="server" Text="Reset" />--%>

                            </div>
                       </div>    
                       
                    </form>
                </div>
        </section>
        <i class="font-bold font-25"> Recognition by camera </i>

<div class="col-xs-12">
<div id="my_camera"></div>
	
	<script type="text/javascript" src="../webcam.min.js"></script>
	<script language="JavaScript">
		Webcam.set({
			width: 320,
			height: 240,
			image_format: 'jpeg',
			jpeg_quality: 90
		});

		Webcam.attach( '#my_camera' );
	</script>



    <button id="camera_button"> Toggle Camera</button>

    <script>
        //$("#camera_button").toggle(
        //    function () {
        //        Webcam.set({
        //            width: 320,
        //            height: 240,
        //            image_format: 'jpeg',
        //            jpeg_quality: 90
        //        });

        //        Webcam.attach('#my_camera'); },
        //    function () { Webcam.reset('#my_camera') },
        //    );
    </script>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

	<script name="text/javascript">

function base64ToBlob(base64, mime) 
{
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

    return new Blob(byteArrays, {type: mime});
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
			Webcam.snap( function(data_uri) {
			               
var formData = new FormData();
formData.append('file', makeblob(data_uri));

        $.ajax({
            type: 'POST',
            url: 'http://127.0.0.1:5001/FaceRecognition_api',
            data: formData,
            contentType: false,
            cache: false,
            processData: false,
            success: function(data) {
                console.log(data)
                gettingdata(data);
            },
        }); 
    
			} );
		}


		function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}


	function chalonaJaan(){
		if(typeof Webcam === "object" && Webcam.live){
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
            window.location.replace("UserDashboard.aspx");
}
		window.setInterval(function(){
  chalonaJaan();
}, 1000);


	</script>

</div>


        <script src="../UserTheme/node_modules/jquery/jquery-3.2.1.min.js"></script>
        <script src="../UserTheme/node_modules/popper/popper.min.js"></script>
        <script src="../UserTheme/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
        <!--Custom JavaScript -->
        <script type="text/javascript">
            $(function () {
                $(".preloader").fadeOut();
            });
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            });
            $('#to-recover').on("click", function () {
                $("#loginform").slideUp();
                $("#recoverform").fadeIn();
            });
        </script>
    </body>
    </html>