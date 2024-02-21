<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="MyFirstWeb.pages.ContactUs" %>



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
          <div class="text-two">Elco Tower Tel Aviv</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one"> +1 800 390 1119 </div>
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
        <p>If you have any work from me or any types of quries related to my tutorial, you can send me message from here. It's my pleasure to help you.</p>
      
        <div class="input-box">
            <asp:TextBox ID="Txt_Email" required="true" placeholder="Enter your Email" runat="server"></asp:TextBox>
        </div>
        <div class="input-box">
        <asp:TextBox ID="Txt_Subject" required="true" placeholder="enter your Subject" runat="server"></asp:TextBox>
        </div>
        <div class="input-box message-box">
           <asp:TextBox ID="Txt_Body" required="true" placeholder="enter your Issue Details" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
           <div class="input-box">
 <asp:TextBox ID="Txt_file" type="file" style="padding:10px" placeholder="enter your Subject" runat="server"></asp:TextBox>
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
