<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MyFirstWeb.pages.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>

    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

</head>
<body>



    <link href="../styles/Style2.css" rel="stylesheet" />


    <div class="container">
        <div class="screen">
            <div class="screen__content">
                <form id="form1" class="login" runat="server">


                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                        <asp:TextBox ID="user_txt" class="login__input" required="true" placeholder="UserName" runat="server"></asp:TextBox>
                    </div>

                     <div class="login__field">
     <i class="login__icon fas fa-user"></i>
     <asp:TextBox ID="email_txt" class="login__input" required="true" title="Please enter a valid email address (e.g., user@beststartupever.com)" placeholder="Email" pattern=".+@beststartupever\.com" runat="server" TextMode="Email"></asp:TextBox>
 </div>


                    <div class="login__field">
                        <i class="login__icon fas fa-lock"></i>
                        <asp:TextBox ID="psw" class="login__input" required="true" placeholder="Password" runat="server" TextMode="Password" MinLength="8" MaxLength="32"></asp:TextBox>
                    </div>

                    <div class="login__field">
    <i class="login__icon fas fa-lock"></i>
    <asp:TextBox ID="pswConfirm" class="login__input" placeholder="Confirm Password" MinLength="8" MaxLength="32" required="true" autocomplete="off" runat="server" TextMode="Password"></asp:TextBox>
</div>
                    

                    <asp:Button ID="SignUp_Btn" runat="server" Text="SignUp" class="button login__submit" OnClick="SignUp_Btn_Click" />


                </form>
                <div class="social-login">
                    
                    <h4>Have an account? <a href="Login.aspx">Login</a></h4>
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
