<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="Home1.aspx.cs" Inherits="MyFirstWeb.pages.Home2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../styles/test.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>
        @media screen and (min-width: 1118px) and (max-width: 1200px) {
      .nav__list {
        column-gap: 1.2rem!important; 
    }
}
    </style>

      <section class="headline">
    <h1>Newegg Website</h1>
    <p> Fueling Your Passion for Powerful Computing</p>
  </section>

<section class="features">
  <div class="feature-container">
    <img src="https://c1.neweggimages.com/ProductImageCompressAll1280/14-932-676-02.jpg" alt="Flexbox Feature">
    <h2>Gpu Category</h2>
    <p>In Stock Video Cards Upgrade Now!</p>
  </div>
  <div class="feature-container">
    <img src="../Images/download.png" alt="Flexbox Feature">
    <h2>Build PC Category</h2>
    <p>You can build your Pc easily </p>
  </div>
  <div class="feature-container"> 
    <img src="../Images/434723771_424932946753279_5729427194507615121_n.jpg" alt="Flexbox Feature">
    <h2>Our new Products</h2>
    <p>New At NewEgg</p>
  </div>
</section>
</asp:Content>
