<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyFirstWeb.pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../styles/Orders.css" rel="stylesheet" />
    
     <div class="container containerCont  mt-4" style="padding-top: 100px;">
      <div class="row">
          <div class="col-lg-3 my-lg-0 my-md-1">
              <div id="sidebar" class="bg-purple">
                  <div class="h4 text-white">Account</div>
                  <ul>
                      <li class="active">
                          <a href="#" class="text-decoration-none d-flex align-items-start">
                              <div class="fas fa-box pt-2 me-3"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">My Account</div>
                                  <div class="link-desc">View & Manage orders and returns</div>
                              </div>
                          </a>
                      </li>
                      <li>
                          <a href="#" class="text-decoration-none d-flex align-items-start">
                              <div class="fas fa-box-open pt-2 me-3"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">My Orders</div>
                                  <div class="link-desc">View & Manage orders and returns</div>
                              </div>
                          </a>
                      </li>
                      <li>
                          <a href="#" class="text-decoration-none d-flex align-items-start">
                              <div class="far fa-address-book pt-2 me-3"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">Address Book</div>
                                  <div class="link-desc">View & Manage Addresses</div>
                              </div>
                          </a>
                      </li>
                      <li>
                          <a href="#" class="text-decoration-none d-flex align-items-start">
                              <div class="far fa-user pt-2 me-3"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">My Profile</div>
                                  <div class="link-desc">Change your profile details & password</div>
                              </div>
                          </a>
                      </li>
                      <li>
                          <a href="#" class="text-decoration-none d-flex align-items-start">
                              <div class="fas fa-headset pt-2 me-3"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">Help & Support</div>
                                  <div class="link-desc">Contact Us for help and support</div>
                              </div>
                          </a>
                      </li>
                  </ul>
              </div>
          </div>
          <div class="col-lg-9 my-lg-0 my-1">
              <div id="main-content" class="bg-white border">
                  <div class="d-flex flex-column">
                      <div class="h5">Hello Jhon,</div>
                      <div>Logged in as: someone@gmail.com</div>
                  </div>
                  <div class="d-flex my-4 flex-wrap">
                      <div class="box me-4 my-1 bg-light">
                          <img src="https://www.freepnglogos.com/uploads/box-png/cardboard-box-brown-vector-graphic-pixabay-2.png"
                              alt="">
                          <div class="d-flex align-items-center mt-2">
                              <div class="tag">Orders placed</div>
                              <div class="ms-auto number">10</div>
                          </div>
                      </div>
                      <div class="box me-4 my-1 bg-light">
                          <img src="https://www.freepnglogos.com/uploads/shopping-cart-png/shopping-cart-campus-recreation-university-nebraska-lincoln-30.png"
                              alt="">
                          <div class="d-flex align-items-center mt-2">
                              <div class="tag">Items in Cart</div>
                              <div class="ms-auto number">10</div>
                          </div>
                      </div>
                      <div class="box me-4 my-1 bg-light">
                          <img src="https://www.freepnglogos.com/uploads/love-png/love-png-heart-symbol-wikipedia-11.png"
                              alt="">
                          <div class="d-flex align-items-center mt-2">
                              <div class="tag">Wishlist</div>
                              <div class="ms-auto number">10</div>
                          </div>
                      </div>
                  </div>
                  <div class="text-uppercase">My recent orders</div>
                 


                  <asp:DataList ID="DataList1" runat="server" DataKeyField="image" style="border-collapse:collapse; width: 500px;" DataSourceID="AccessDataSource1" RepeatLayout="Flow" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                      <ItemTemplate>


                                            <div class="order my-3 bg-light">
                      <div class="row">
                          <div class="col-lg-4">
                              <div class="d-flex flex-column justify-content-between order-summary">
                                  <div class="d-flex align-items-center">
                                      <div class="text-uppercase">Order #<%# Eval("Code") %></div>
                                      <div class="blue-label ms-auto text-uppercase">paid</div>
                                  </div>
                                  <div class="fs-8">Products Quantity:#<%# Eval("Quantity") %></div>
                                  <div class="fs-8"> <i class="fa-solid fa-calendar-days fa-xl" style="color: #000000;"></i> <%# Convert.ToDateTime(Eval("BuyDate")).ToString("dd MMMM, yyyy | hh:mm tt", new System.Globalization.CultureInfo("en-US")) %></div>
                                  <div class="rating d-flex align-items-center pt-1">
                                      <span class=""> <i class="fa-solid fa-sack-dollar fa-xl" style="color: #005eff;"></i> Price: <%# Convert.ToDecimal(Eval("Quantity")) * Convert.ToDecimal(Eval("Price")) %>$</span>

                                  </div>
                              </div>
                          </div>
                          <div class="col-lg-8">
                              <div class="d-sm-flex align-items-sm-start justify-content-sm-between">
                                  <div class="status">Status : Delivered</div>
                                  
                                   <asp:Button class="btn btn-primary text-uppercase" ID="Button1" runat="server" Text="Product Info" />
                              </div>
                              <div class="progressbar-track">
                                  <ul class="progressbar">
                                      <li id="step-1" class="text-muted green">
                                          <span class="fas fa-gift"></span>
                                      </li>
                                      <li id="step-2" class="text-muted green">
                                          <span class="fas fa-check"></span>
                                      </li>
                                      <li id="step-3" class="text-muted green">
                                          <span class="fas fa-box"></span>
                                      </li>
                                      <li id="step-4" class="<%# Eval("DeliveryStatus").ToString() == "Placed" ? "text-muted" : "text-muted green" %>">
                                          <span class="fas fa-truck"></span>
                                      </li>
                                      <li id="step-5" class="<%# Eval("DeliveryStatus").ToString() == "Placed" ? "text-muted" : "text-muted green" %>">
                                          <span class="fas fa-box-open"></span>
                                      </li>
                                  </ul>
                                  <div id="tracker"></div>
                              </div>
                          </div>
                      </div>
                  </div>



                      </ItemTemplate>
                  </asp:DataList> 
               
              </div>
          </div>
      </div>

  </div>






    <style>
        .ms-auto {
    margin-left: auto!important;
}
.me-4 {
    margin-right: 1.5rem!important;
}
.me-3 {
    margin-right: 1rem!important;
}

.header{
    z-index:1001;
}

@media screen and (min-width: 1118px) and (max-width: 1200px) {
      .nav__list {
        column-gap: 1rem!important; 
    }
}
    </style>

    <script>    

        // Get the container element
        const container = document.querySelector('.containerCont');

        // Function to set max-width based on viewport width
        function setMaxWidth() {
            const viewportWidth = window.innerWidth;
            let maxWidth;

            if (viewportWidth >= 576 && viewportWidth < 768) {
                maxWidth = '540px';
            } else if (viewportWidth >= 768 && viewportWidth < 992) {
                maxWidth = '720px';
            } else if (viewportWidth >= 992 && viewportWidth < 1200) {
                maxWidth = '960px';
            } else if (viewportWidth >= 1200 && viewportWidth < 1400) {
                maxWidth = '1140px';
            } else if (viewportWidth >= 1400) {
                maxWidth = '1320px';
            } else {
                // For viewport widths below 576px, set max-width to 'none'
                maxWidth = 'none';
            }

            // Apply the max-width style to the container element
            container.style.maxWidth = maxWidth;
        }

        // Call the function initially and add a resize event listener to handle changes
        setMaxWidth();
        window.addEventListener('resize', setMaxWidth);


    </script> 
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Orders] WHERE ([Email] = ?)" >
                <SelectParameters>
            <asp:SessionParameter SessionField="Email" Name="Email" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>
