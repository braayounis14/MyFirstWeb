   <%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyFirstWeb.pages.home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../styles/test.css" rel="stylesheet" />
    

        <section class="headline">
  <h1>Newegg Website</h1>
  <p> Fueling Your Passion for Powerful Computing</p>
</section>

<section class="features">
  <div class="feature-container">
    <img src="https://cdn-images-1.medium.com/max/2000/1*HFAEJvVOq4AwFuBivNu_OQ.png" alt="Flexbox Feature">
    <h2>Flexbox Featured</h2>
    <p>This pen contains use of flexbox for the headline and feature section! We use it in our mobile navbar and show the power of mixing css grid and flexbox.</p>
  </div>
  <div class="feature-container">
    <img src="https://blog.webix.com/wp-content/uploads/2017/06/20170621-CSS-Grid-Layout-710x355-tiny.png" alt="Flexbox Feature">
    <h2>CSS Grid Navigation</h2>
    <p>While flexbox is used for the the mobile navbar, CSS grid is used for the desktop navbar showing many ways we can use both.</p>
  </div>
  <div class="feature-container"> 
    <img src="https://www.graycelltech.com/wp-content/uploads/2015/06/GCT-HTML5.jpg" alt="Flexbox Feature">
    <h2>Basic HTML5</h2>
    <p>This pen contains basic html to setup the page to display the responsive navbar.</p>
  </div>
</section>




    <style>
        body {
            background:#f1f1f1;
        }
    </style>

    


</asp:Content>
