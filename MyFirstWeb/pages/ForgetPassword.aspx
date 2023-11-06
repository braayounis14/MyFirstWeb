<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="MyFirstWeb.pages.ForgetPassword" %>

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


<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
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
                     <asp:TextBox ID="txtEmail" class="form-control" type="email" pattern="^.+@[^@]+\.[^@]+$" placeholder="Enter email address" required="true" runat="server"></asp:TextBox>
                  <asp:TextBox ID="txtAnswer" class="form-control" required="true" runat="server"></asp:TextBox>
                 
                 </div>
                 <div class="form-group">
                     <asp:Button ID="Btn_Check" class="form-control button" runat="server" Text="Next" OnClick="Btn_Check_Click1" />
                     <asp:Button ID="Btn_Submit" class="form-control button" runat="server" Text="Submit" OnClick="Btn_Submit_Click" />
                     
                     </div>
            
     
         </div>
     </div>
 </div>
    </div>
   
</asp:Content>

