<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="NewFinalFYP.AdminDashboard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <title>Elite Admin Template - The Ultimate Multipurpose admin template</title>
    <!-- This page CSS -->
    <!-- This page CSS -->
    <link href="../assets/node_modules/morrisjs/morris.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../dist/css/style.min.css" rel="stylesheet">
    <!-- Dashboard 1 Page CSS -->
    <link href="../dist/css/pages/dashboard4.css" rel="stylesheet">
   
  <%--  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>--%>

     <script src="../assets/node_modules/jquery/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap popper Core JavaScript -->
    <script src="../assets/node_modules/popper/popper.min.js"></script>
    <script src="../assets/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../dist/js/perfect-scrollbar.jquery.min.js"></script>
    <!--Wave Effects -->
    <script src="../dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../dist/js/custom.min.js"></script>
    <script src="../assets/node_modules/skycons/skycons.js"></script>
    <!--morris JavaScript -->
    <script src="../assets/node_modules/raphael/raphael-min.js"></script>
    <script src="../assets/node_modules/morrisjs/morris.min.js"></script>
    <script src="../assets/node_modules/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!-- Chart JS -->
    <script src="../dist/js/dashboard4.js"></script>
    </asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="body" runat="server">
   
   <div class="col-sm-12"><table id=" 3 " class="table table-bordered table-striped dataTable no-footer" role="grid" aria-describedby="myTable_info">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 157px;">Email</th>
                                                <th class="sorting" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 255px;">Password</th>
                                                <th class="sorting" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 116px;">Images</th>
                                        </thead>
                                        <tbody>
                                            
                                            
                                            <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                        <tr role="row" class="odd">
                                                <%--<td class="sorting_1"></td>--%>
                                                <td><%#Eval("E_Mail") %></td>
                                             <td><%#Eval("password") %></td>
                                        <td><%#Eval("Image_name") %></td>
                                               
                                            </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>

                                           
                                            
                                         </tbody>
                                    </table></div>
</asp:Content>
