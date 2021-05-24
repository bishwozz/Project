<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.index3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/taa.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
        <!--Data or Content-->
        <div class="box-1">
            <div class="content-holder">
                <h2>Hello!</h2>
                <p>Welcome to Register page  </p>
          
                <button class="button-2" ><a href="Login.aspx">Login</a></button>
            </div>
        </div>

        
        <!--Forms-->


<!--Create Container for Signup form-->
        <div class="box-2">
            <div class="login-form-container">
            <h1>Sign Up Form</h1>
            
            <asp:TextBox ID="txt_name" runat="server" type="text" placeholder="Username" class="input-field"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="username required!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br><br>
            
            <asp:TextBox ID="txt_email" runat="server" type="email" placeholder="Email" class="input-field"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_email" ErrorMessage="email required!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br/><br/>
            
            <asp:TextBox ID="txt_mob" runat="server" type="phone" placeholder="Mobile No." class="input-field"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_mob" ErrorMessage="mobile.no required!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:TextBox ID="txt_role" runat="server" type="text" placeholder="Role" class="input-field"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_role" ErrorMessage="role required!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:TextBox ID="txt_id" runat="server" type="text" placeholder="User id" class="input-field"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_id" ErrorMessage="user id required!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:TextBox ID="txt_pwd" runat="server" type="Password" placeholder="Password" class="input-field"></asp:TextBox>

                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_pwd" ErrorMessage="password required!!" ForeColor="Red"></asp:RequiredFieldValidator>

            <br/><br/>
            
            <asp:Button ID="Button1" runat="server" Text="Sign Up" class="login-button" OnClick="Register" />
                
                <br />
                
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                
                <br />
                
            </div>
          </div>
        </div>
    </form>
</body> 
</html>
