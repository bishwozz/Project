<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Dash.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/koko.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <!-- navbar -->
  <div class="navbar">
  <a href="#home">TITLE</a>
  <div class="dropdown">
    <button class="dropbtn">Dropdown
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </div>
</div>
    <!-- END navbar -->
    <!-- Main Page -->
    <div class="Main-Wapper">
        <!-- Left wapper-->
        <div class="Left-wapper">
            <ol>
                <li>DASHBOARD</li>
            </ol>
            <ul>
                <li><a href="#">USER PROFILE</a>

                </li>
                <li><a href="ChangePP.aspx">Change Password</a></li>
            </ul>
        </div>
        <!-- END Left wapper-->

        <!-- main container-->
        <div class="Main-comtainer">
            
            <div class="content">
                <h2>title page</h2>
                <p>-------------------------------------------------------------------------------</p>
                <asp:Label ID="lb1" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label><br /> 
                <p>-------------------------------------------------------------------------------</p>
            </div>
        </div>

        <!-- main container-->



    </div>
    <!-- END mainpage -->
</form>
</body>
</html>
