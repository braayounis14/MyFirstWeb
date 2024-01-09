<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="MyFirstWeb.pages.Notifications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="UTF-8"/>
        <title>Toast Notification 01</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet"/>
        <link rel="stylesheet" href="Notifications.css"/>
        <link href="../styles/Notifications.css" rel="stylesheet" />
         <link href="../styles/MasterFooter.css" rel="stylesheet" />
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
        <link href="../styles/NewNav.css" rel="stylesheet" />
        <link href="../styles/test.css" rel="stylesheet" />

    </head>
<body>

     <form id="form1" runat="server">
            <header class="header" style="max-width:">
      <nav class="nav container" style="max-width:none">
         <div class="nav__data">
            <a href="#" class="nav__logo" style="padding-left:20px">
               <i class="ri-planet-line"></i> Company
            </a>
            
            <div class="nav__toggle" id="nav-toggle">
               <i class="ri-menu-line nav__burger"></i> 
               <i class="ri-close-line nav__close"></i>
            </div>
         </div>

         <!--=============== NAV MENU ===============-->
         <div class="nav__menu" id="nav-menu">
            <ul class="nav__list">
               <li><a href="#" class="nav__link">Home</a></li>

               <li><a href="#" class="nav__link">Company</a></li>

               <!--=============== DROPDOWN 1 ===============-->
               <li class="dropdown__item">
                  <div class="nav__link">
                     Analytics <i class="ri-arrow-down-s-line dropdown__arrow"></i>
                  </div>

                  <ul class="dropdown__menu">
                     <li>
                        <a href="#" class="dropdown__link">
                           <i class="ri-pie-chart-line"></i> Overview
                        </a>                          
                     </li>

                     <li>
                        <a href="#" class="dropdown__link">
                           <i class="ri-arrow-up-down-line"></i> Transactions
                        </a>
                     </li>

                     <!--=============== DROPDOWN SUBMENU ===============-->
                     <li class="dropdown__subitem">
                        <div class="dropdown__link">
                           <i class="ri-bar-chart-line"></i> Reports <i class="ri-add-line dropdown__add"></i>
                        </div>

                        <ul class="dropdown__submenu">
                           <li>
                              <a href="#" class="dropdown__sublink">
                                 <i class="ri-file-list-line"></i> Documents
                              </a>
                           </li>
   
                           <li>
                              <a href="#" class="dropdown__sublink">
                                 <i class="ri-cash-line"></i> Payments
                              </a>
                           </li>
   
                           <li>
                              <a href="#" class="dropdown__sublink">
                                 <i class="ri-refund-2-line"></i> Refunds
                              </a>
                           </li>
                        </ul>
                     </li>
                  </ul>
               </li>
               
               <li><a href="#" class="nav__link">Products</a></li>

               <!--=============== DROPDOWN 2 ===============-->
               <li class="dropdown__item">
                  <div class="nav__link">
                     Users <i class="ri-arrow-down-s-line dropdown__arrow"></i>
                  </div>

                  <ul class="dropdown__menu">
                     <li>
                        <a href="#" class="dropdown__link">
                           <i class="ri-user-line"></i> Profiles
                        </a>                          
                     </li>

                     <li>
                        <a href="#" class="dropdown__link">
                           <i class="ri-lock-line"></i> Accounts
                        </a>
                     </li>

                     <li>
                        <a href="#" class="dropdown__link">
                           <i class="ri-message-3-line"></i> Messages
                        </a>
                     </li>
                  </ul>
               </li>

               <li><a href="ContactUs.aspx" class="nav__link">Contact</a></li>
               <li><a href="Login.aspx" class="nav__link"><i style="padding-left:px" class="fas fa-user" aria-hidden="true"></i></a></li>

            </ul>
         </div>
      </nav>
   </header>

   <!--=============== MAIN JS ===============-->
     <script src="../scripts/main.js"></script>
   <script src="https://kit.fontawesome.com/56446077d3.js" crossorigin="anonymous"></script>
   <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>


            <section class="headline">
  <h1>Responsive Navigation</h1>
  <p>Using CSS grid and flexbox to easily build navbars!</p>
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
       <asp:Button ID="Button1" style="=" runat="server" Text="Button" OnClick="Button1_Click" />
    <h2>Basic HTML5</h2>
    <p>This pen contains basic html to setup the page to display the responsive navbar.</p>
  </div>
</section>

    <style>
        body {
            background:#f1f1f1;
        }
    </style>


       <div runat="server" style="font-family: 'Poppins', sans-serif;" id="notfi" class="notification" visible="false">
            <div style="font-family: 'Poppins', sans-serif;" class="notification__body">
                <img
                    src="../Images/check-circle.svg"
                    alt="Success"
                    class="notification__icon"
                />
                Your account has been created! &#128640; 
            </div>
            <div class="notification__progress"></div>
        </div>
        
   </form>


               <footer class="mainfooter" role="contentinfo">
  <div class="footer-middle">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6">
        <!--Column1-->
        <div class="footer-pad">
          <h4>Heading 1</h4>
          <ul class="list-unstyled">
            <li><a href="#"></a></li>
            <li><a href="#">Payment Center</a></li>
            <li><a href="#">Contact Directory</a></li>
            <li><a href="#">Forms</a></li>
            <li><a href="#">News and Updates</a></li>
            <li><a href="#">FAQs</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <!--Column1-->
        <div class="footer-pad">
          <h4>Heading 2</h4>
          <ul class="list-unstyled">
            <li><a href="#">Website Tutorial</a></li>
            <li><a href="#">Accessibility</a></li>
            <li><a href="#">Disclaimer</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">FAQs</a></li>
            <li><a href="#">Webmaster</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <!--Column1-->
        <div class="footer-pad">
          <h4>Heading 3</h4>
          <ul class="list-unstyled">
            <li><a href="#">Parks and Recreation</a></li>
            <li><a href="#">Public Works</a></li>
            <li><a href="#">Police Department</a></li>
            <li><a href="#">Fire</a></li>
            <li><a href="#">Mayor and City Council</a></li>
            <li>
              <a href="#"></a>
            </li>
          </ul>
        </div>
      </div>
    	<div class="col-md-3">
    		<h4>Follow Us</h4>
            <ul class="social-network social-circle">
             <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
             <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
            </ul>				
		</div>
    </div>
	<div class="row">
		<div class="col-md-12 copy">
			<p class="text-center">&copy; Copyright 2018 - Company Name.  All rights reserved.</p>
		</div>
	</div>


  </div>
  </div>
</footer>

</body>
</html>
