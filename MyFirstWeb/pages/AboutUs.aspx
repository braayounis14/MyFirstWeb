<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="MyFirstWeb.pages.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title> An About Us Page | CoderGirl </title>
    <link href="../styles/AboutUs.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div style="margin-top:60px;" class="section trending">
                       <div id="EGG-header-info" class="EGG-header-info EGG-hide" style="display: block">


         <div class="EGG-top-message">
          <div class="EGG-block-2-info-wrap">
            <div>
              <img decoding="async" src="//www.newegg.com/corporate/wp-content/uploads/2023/05/home_logo_banner.png" alt="home_logo_banner">
            </div>
            <h2>Tomorrow’s Tech Delivered Today.</h2>
          </div>
        </div>
         </div>
    <section class="about-us" style="margin-right:40px">
    <div class="about">
     <div class="wpb_video_widget wpb_content_element vc_clearfix  EGG-video-content  vc_video-aspect-ratio-169 vc_video-el-width-100 vc_video-align-center">
		<div class="wpb_wrapper">
			
			<div class="wpb_video_wrapper"><iframe title="More about Newegg.com" style="padding-right:100px"   width="1080" height="608" src="https://www.youtube.com/embed/cCIYFl1ie_M?feature=oembed" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" style="opacity: 1; visibility: visible;"></iframe></div>
		</div>
	</div>
      <div style="margin-right:300px" class="text">
        <h2>ABOUT NEWEGG</h2>
          <p> Newegg Commerce, Inc. (NASDAQ: NEGG), founded in 2001 and based in the City of Industry, Calif., near Los Angeles, is a leading global online retailer for PC hardware, consumer electronics, gaming peripherals, home appliances, automotive and lifestyle technology. Newegg also serves businesses’ e-commerce needs with marketing, supply chain, and technical solutions in a single platform.</p>

      </div>
    </div>
  </section>
          </div>

</asp:Content>
