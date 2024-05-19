<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyFirstWeb.pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign in</title>
    <link rel="shortcut icon" href="../Images/Newegg_full_color_logo_RGB.SVG"/>
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

</head>
<body>
     
    <link href="../styles/Style1.css" rel="stylesheet" />
    <div class="container">
	<div class="screen">
		<div class="screen__content">
			<form id="form1" class="login" runat="server">
				

				<div class="login__field">
				<i class="login__icon fas fa-user"></i>
				<asp:TextBox ID="user_txt" class="login__input" placeholder="User name / Email" runat="server"></asp:TextBox>	
</div>


					<div class="login__field">
		<i class="login__icon fas fa-lock"></i>
                       <asp:TextBox ID="psw_txt" type="password" class="login__input" placeholder="Password" runat="server"></asp:TextBox>
	</div>

                <asp:Button ID="BtnSubmit" runat="server" Text="Log In Now" class="button login__submit" OnClick="BtnSubmit_Click" />


			</form>
			<div class="social-login">
				<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
	</div>

				<div class="social-login1">
                    <h6>Dont Have an Account?<a style="text-decoration:none" href="SignUp.aspx">SignUp</a></h6>
					</div>

		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>		
	</div>





</div>

</body>
</html>
