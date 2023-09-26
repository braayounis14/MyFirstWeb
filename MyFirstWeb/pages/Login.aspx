<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyFirstWeb.pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign in</title>

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
                       <asp:TextBox ID="psw_txt" class="login__input" placeholder="Password" runat="server"></asp:TextBox>
	</div>

                <asp:Button ID="Button1" runat="server" Text="Log In Now" OnClick="Button1_Click" class="button login__submit" />


			</form>
			<div class="social-login">
				<h3>log in via</h3>
				<div class="social-icons">
					<a href="#" class="social-login__icon fab fa-instagram"></a>
					<a href="#" class="social-login__icon fab fa-facebook"></a>
					<a href="#" class="social-login__icon fab fa-twitter"></a>
				</div>
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
