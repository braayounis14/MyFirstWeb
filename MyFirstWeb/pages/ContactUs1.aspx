<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="ContactUs1.aspx.cs" Inherits="MyFirstWeb.pages.ContactUs1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
   <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">


   <title>Bootstrap</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <link href="../styles/ContactStyle.css" rel="stylesheet" />
    <link href="../styles/MasterFooter.css" rel="stylesheet" />
      <section class="headline" style="height:0vh; min-height:250px">
    <h1>Contact US </h1>
   
  </section>
      <section class="features" style="justify-content:flex-start">
          <div class="container1">
    <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">Matam parking building</div>
          <div class="text-two">Google Haifa  Tel Aviv</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one"> +1 800-390-1119 </div>
          <div class="text-two"></div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one">newegghelpteam.il@gmail.com</div>
          <div class="text-two"></div>
        </div>
      </div>
      <div class="right-side">
        <div class="topic-text">Send us a message</div>
        <p>Thank you for visiting NewEgg, your go-to online shop for the best PC parts. We're here to help with any questions or concerns you may have. Whether you need assistance with an order, have a product inquiry, or require technical support, our team is ready to provide you with the support you need.</p>
      
        <div class="input-box">
            <asp:TextBox ID="Txt_Email" required="true" placeholder="Enter your Email" runat="server"></asp:TextBox>
        </div>
        <div class="input-box">
        <asp:TextBox ID="Txt_Subject" required="true" placeholder="enter your Subject" runat="server"></asp:TextBox>
        </div>
        <div class="input-box message-box">
           <asp:TextBox ID="Txt_Body" required="true" placeholder="enter your Issue Details" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>

        <div class="button">
            <asp:Button ID="Submit" CssClass="buttonSubmit" runat="server" Text="Send Now" OnClick="Button1_Click" />
        </div>
          <asp:Label ID="lbl_Stuts" runat="server" Text=""></asp:Label>
    </div>
    </div>
  </div>
          </section>


</asp:Content>
