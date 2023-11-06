<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="MyFirstWeb.pages.ChangePassword" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
   <meta charset="UTF-8">



       
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Multi-Step Form</title>
    <link rel="stylesheet" href="style.css">



   <title>Bootstrap 4 Footer with Social icons</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
   

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <script> 
            function checkPasswordConfirm() {
                const psw = document.querySelector('input[id=psw]');
                const pswString = psw.value;

                const pswConfirm = document.querySelector('input[id=pswConfirm]');
                const pswConfirmString = pswConfirm.value;

                if (pswConfirmString != pswString)
                    pswConfirm.setCustomValidity('password confirm is incorrect');
                else
                    pswConfirm.setCustomValidity('');
            }
        </script>




    <link href="../styles/MasterFooter.css" rel="stylesheet" />
    <link href="../styles/ForgetStyle.css" rel="stylesheet" />


       <div class="features">
    <div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4 form">
            
                <h2 class="text-center">Forgot Password</h2>
                <p class="text-center">Enter your email address</p>
            <asp:Label ID="lblAnswer" class="text-center" runat="server"></asp:Label>
            
            
               <div class="form-group">
                 <asp:TextBox ID="txtPsw" class="form-control" title="Put Your Current Password" placeholder="Your Current Password"  required="true" runat="server"></asp:TextBox>
                 <asp:TextBox ID="txtPswNew" class="form-control" placeholder="Your New Password" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#%&!$*]).{8,32}$" MinLength="8" MaxLength="32" required="true"     title="Please enter a valid Password that contains:(Password should have at least one numerical digit(0-9).
Password's length should be in between 8 to 32 characters.
Password should have at least one lowercase letter(a-z).
Password should have at least one uppercase letter(A-Z).
Password should have at least one special character ( @, #, %, &, !, $, *)   .)" runat="server"></asp:TextBox>

                 <asp:TextBox ID="txtPswNewConfirm" title="Confirm Your New Password Again" class="form-control" placeholder="Confirm New Password" onChange="checkPasswordConfirm()"  required="true" runat="server"></asp:TextBox>
                
                </div>
                <div class="form-group">
                    <asp:Button ID="Btn_Check" class="form-control button" runat="server" Text="Next" OnClick="Btn_Check_Click" />
                    </div>
           
    
        </div>
    </div>
</div>
   </div>
</asp:Content>
