<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>project</title>
    <link href="css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <!--Data or Content-->
        <div class="box-1">
            <div class="content-holder">
                <h2>Hello!</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.  </p>
                <button class="button-1" onclick="signup()">Sign up</button>
                <button class="button-2" onclick="login()">Login</button>
            </div>
        </div>

        
        <!--Forms-->
        <div class="box-2">
            <div class="login-form-container">
                <h1>Login Form</h1>
                <input type="text" placeholder="Username" class="input-field">
                <br><br>
                <input type="password" placeholder="Password" class="input-field">
                <br><br>
                <button class="login-button" type="button">Login</button>
            </div>


<!--Create Container for Signup form-->
        <div class="signup-form-container">
            <h1>Sign Up Form</h1>
            <input type="text" placeholder="Username" class="input-field">
            <br><br>
            <input type="email" placeholder="Email" class="input-field">
            <br><br>
            <input type="password" placeholder="Password" class="input-field">
            <br><br>
            <button class="signup-button" type="button">Sign Up</button>
        </div>



        </div>
            <script src="js/main.js">
            </script>
    </form>
</body>
</html>
