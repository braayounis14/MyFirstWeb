<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="MyFirstWeb.pages.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>testing</title>

    
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/5.0.6/jquery.inputmask.min.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var txtDate = document.getElementById("txtDate");
            txtDate.addEventListener("input", function () {
                var inputValue = txtDate.value.replace(/\D/g, '');
                if (inputValue.length > 0) {
                    var formattedValue = inputValue.match(/(\d{1,2})(\d{0,2})(\d{0,4})/);
                    if (formattedValue) {
                        txtDate.value = formattedValue[1] + (formattedValue[2] ? '/' + formattedValue[2] : '') + (formattedValue[3] ? '/' + formattedValue[3] : '');
                    }
                }
            });
        });
    </script>





</head>
<body>



    <link href="../styles/Style2.css" rel="stylesheet" />


    <div class="container">
        <div class="screen">
            <div class="screen__content">
                <form id="form1" class="login" runat="server">

                                        <div class="login__field">
    <i class="login__icon fas fa-user"></i>
 <asp:TextBox ID="TxtID" class="login__input" required="true" MaxLength="9" MinLength="9" title="ID Should Be Only Numbers" placeholder="Enter ID"  pattern="^\d+$" runat="server"></asp:TextBox>

</div>




                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                        <asp:TextBox ID="user_txt" class="login__input" required="true" placeholder="UserName" runat="server"></asp:TextBox>
                    </div>

                     <div class="login__field">
     <i class="login__icon fas fa-user"></i>
  <asp:TextBox ID="email_txt" class="login__input" required="true" title="Please enter a valid email address (user@domain.com)" placeholder="Email" pattern="^.+@[^@]+\.[^@]+$" runat="server" TextMode="Email"></asp:TextBox>
 </div>


        <div class="login__field">
    <i class="login__icon fas fa-user"></i>

          <asp:TextBox ID="txtDate" required="true" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" title="set your  birthday date format:1:(dd/mm/yyyy)  date should be real (past)!! " Class="login__input" placeholder="dd/mm/yyyy" runat="server" ClientIDMode="Static"></asp:TextBox>
                     
</div>



                    <div class="login__field">
                        <i class="login__icon fas fa-lock"></i>
                        <asp:TextBox ID="psw" class="login__input" required="true" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#%&!$*]).{8,32}$"
    title="Please enter a valid Password that contains:(Password should have at least one numerical digit(0-9).
Password's length should be in between 8 to 32 characters.
Password should have at least one lowercase letter(a-z).
Password should have at least one uppercase letter(A-Z).
Password should have at least one special character ( @, #, %, &, !, $, *)   .)"


                            placeholder="Password" runat="server" TextMode="Password" MinLength="8" MaxLength="32"></asp:TextBox>
                    </div>


                        
                    <div class="login__field">
    <i class="login__icon fas fa-lock"></i>
    <asp:TextBox ID="pswConfirm" class="login__input" placeholder="Confirm Password" MinLength="8" MaxLength="32" required="true" autocomplete="off" runat="server" TextMode="Password"></asp:TextBox>
</div>

                  
                    <asp:Button ID="SignUp_Btn" runat="server" Text="SignUp"  class="button login__submit" OnClick="SignUp_Btn_Click" />

              


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
