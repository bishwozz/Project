<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePP.aspx.cs" Inherits="WebApplication1.WebForm2" %>

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
                <li><a href="#">Change Password</a></li>
            </ul>
        </div>
        <!-- END Left wapper-->

        <!-- main container-->
        <div class="Main-comtainer">
            
            <div class="content">
                <h2>title page</h2>
                <p>-------------------------------------------------------------------------------</p>
                <h1>Change password</h1> 
                <p>-------------------------------------------------------------------------------</p>
                <div class="paal">

                    <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_oldpass" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_oldpass" ErrorMessage="please enter your old password." ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_newpass" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_newpass" ErrorMessage="please enter your new password." ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Confirm New Password"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_repass" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_repass" ErrorMessage="Enter the new password again." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_newpass" ErrorMessage="mismatch password." ForeColor="Red" ControlToValidate="txt_repass"></asp:CompareValidator>
                    <br />
                    <br />
                    <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
&nbsp;<br />
                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>

                </div>
            </div>
        </div>

        <!-- main container-->



    </div>
    <!-- END mainpage -->
    </form>
</body>
</html>
