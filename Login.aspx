<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.index2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="css/maaa.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <!--Data or Content-->
        <div class="box-1">
            <div class="content-holder">
                <h2>Hello!</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.  </p>
                <button class="button-1"><a href="Register.aspx"> Sign up</a> </button>
                
            </div>
        </div> 
        <!--Forms-->
        <div class="box-2">
            <div class="login-form-container">
                <h1>Login Form</h1>
                <asp:TextBox ID="txt_name" runat="server" type="text" placeholder="Username" class="input-field"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="Username is required!!" ForeColor="Red"></asp:RequiredFieldValidator>
                <br/><br/>
                 <asp:TextBox ID="txt_pwd" runat="server" type="password" placeholder="Password" class="input-field"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pwd" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Password is Required!!</asp:RequiredFieldValidator>
                <br/><br/>
                
                <asp:Button ID="Button1" class="login-button" runat="server" Text="Login" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
            </div>

        </div>
     </div>
    </form>
</body>
</html>
