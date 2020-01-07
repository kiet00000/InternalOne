<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="NewFinalFYP.Registration" %>

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
    
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    
<![endif]-->
</head>

<body>
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
    <section id="wrapper" class="login-register login-sidebar" style="background-image:url(../UserTheme/images/background/login-register.jpg);">
        <div class="login-box card">
           <form id="form1" runat="server">
             <div class="card-body">
               <%-- <form class="form-horizontal form-material" id="loginform" action="index.html">--%>
                    <div class="text-center">
                        <a href="javascript:void(0)" class="db"><img src="../UserTheme/images/logo-icon.png" alt="Home" /><br/><img src="../UserTheme/images/logo-text.png" alt="Home" /></a>
                    </div>
                    <h3 class="box-title m-t-40 m-b-0">Register Now</h3><small>Create your account and enjoy</small>
                    <div class="form-group m-t-20">
                       
                         <div class="col-xs-12">
                            <asp:TextBox ID="name1" type="text" placeholder="Name" cssclass="form-control" required="true" runat="server"></asp:TextBox>
                            <%--<input class="form-control" type="text"  >--%>
                        </div>
                           
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
                            
                            <asp:TextBox ID="email1" placeholder="Email" cssclass="form-control" type="text" required="true" runat="server"></asp:TextBox>
                         <%--   <input cssclass="form-control"   placeholder="Email">--%>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  ControlToValidate="email1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Invalid Email Address"></asp:RegularExpressionValidator>

                       </div>
                    </div>
                    <div class="form-group ">
                        <div class="col-xs-12">
                            
                            <asp:TextBox ID="password1" required="" placeholder="Password" cssclass="form-control" type="password" runat="server"></asp:TextBox>
                        <%--    <input class="form-control"  >--%>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            
                            <asp:TextBox ID="password2" type="password" cssclass="form-control" required="" placeholder="Confirm Password" runat="server"></asp:TextBox>
                          <%--  <input class="form-control" >--%>
                            <asp:Label ID="Label1"  runat="server" Text="" ForeColor="Red"></asp:Label>
                            
                        </div>
                    </div>
                   
                <div class="form-group">
                        <div class="col-xs-12">
                             <asp:Label ID="Label2"  runat="server" Text="Enter atleast 5 pictures" ForeColor="Black"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" cssclass="form-control" AllowMultiple="true"  required="true" runat="server" />
                            </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-12">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="customCheck1">
                                <label class="custom-control-label" for="customCheck1">I agree to all <a href="javascript:void(0)">Terms</a></label> 
                           
                            </div> 
                        </div>
                    </div>
                    
                    <div class="form-group text-center m-t-20">
                        
                        <div class="col-xs-12">
                            <asp:Button ID="SignUp_Button" OnClick="SignUp_Button_Click" UseSubmitBehavior="false"   class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" runat="server" Text="Submit" />
                            <%--<button class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" type="submit">Sign Up</button>--%>
                        </div>
                       
                    </div>
                    <div class="form-group m-b-0">
                        <div class="col-sm-12 text-center">
                            <p>Already have an account? <a href="Login.aspx" class="text-info m-l-5"><b>Sign In</b></a></p>
                        </div>
                    </div>
            </div>
               </form>
        </div>
    </section>
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
    <script type="text/javascript">
        $(function () {
            $(".preloader").fadeOut();
        });
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        });
        // ============================================================== 
        // Login and Recover Password 
        // ============================================================== 
        $('#to-recover').on("click", function () {
            $("#loginform").slideUp();
            $("#recoverform").fadeIn();
        });
    </script>
</body>

</html>
