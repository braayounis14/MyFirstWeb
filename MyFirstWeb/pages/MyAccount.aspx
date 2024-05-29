<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="MyFirstWeb.pages.MyAccount1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      
    <link href="../styles/Orders.css" rel="stylesheet" />
    <link href="../styles/MyProfile.css" rel="stylesheet" />


  <div class="container containerCont  mt-4" style="padding-top: 100px; max-width: 1320px;">
      <div class="row">
          <div class="col-lg-3 my-lg-0 my-md-1">
              <div id="sidebar" class="bg-purple">
                  <div class="h4 text-white">Account</div>
                  <ul>
                      <li class="active">
                          <a href="MyProfile.aspx" class="text-decoration-none d-flex align-items-start">
                              <div class="far fa-user pt-2 me-3" aria-hidden="true"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">My Profile</div>
                                  <div class="link-desc">Change your profile details &amp; password</div>
                              </div>
                          </a>
                      </li>
                      <li>
                          <a href="MyOrders.aspx" class="text-decoration-none d-flex align-items-start">
                              <div class="fas fa-box-open pt-2 me-3" aria-hidden="true"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">My Orders</div>
                                  <div class="link-desc">View &amp; Manage orders and returns</div>
                              </div>
                          </a>
                      </li>
                      <li>
                          <a href="MyAccount.aspx" class="text-decoration-none d-flex align-items-start">
                              <div class="fas fa-box-open pt-2 me-3"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">My Orders</div>
                                  <div class="link-desc">View & Manage orders and returns</div>
                              </div>
                          </a>
                      </li>
                      <li>
                          <a href="ContactSupport.aspx" class="text-decoration-none d-flex align-items-start">
                              <div class="fas fa-headset pt-2 me-3" aria-hidden="true"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">Help &amp; Support</div>
                                  <div class="link-desc">Contact Us for help and support</div>
                              </div>
                          </a>
                      </li>
                  </ul>
              </div>
          </div>
          <div class="col-lg-9 my-lg-0 my-1">
              <div id="main-content" class="bg-white border">
               <div class="col-md-9">
                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="account-general">
                            <div class="card-body media align-items-center">
                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="d-block ui-w-80">
                                <div class="media-body ml-4">
                                    <label class="btn btn-outline-primary">
                                        Upload new photo
                                        <input type="file" class="account-settings-fileinput">
                                    </label> &nbsp;
                                    <button type="button" class="btn btn-default md-btn-flat">Reset</button>
                                    <div class="text-light small mt-1">Allowed JPG, GIF or PNG. Max size of 800K</div>
                                </div>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="form-label">FullName</label>
                             <asp:TextBox type="text" class="form-control" AutoCompleteType="DisplayName" placeholder="Put Your Full Name" ID="Txt_FullName" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">E-mail</label>
                              <asp:TextBox type="email" class="form-control" AutoCompleteType="Email" placeholder="Put Your Email Address" ID="Txt_Email" runat="server"></asp:TextBox>
                                    <div class="alert alert-warning mt-3">
                                        Your email is not confirmed. Please check your inbox.<br>
                                        <a href="javascript:void(0)">Resend confirmation</a>
                                    </div>
                                </div>


                 <label class="form-label">Your Password Question</label>
                        <asp:DropDownList class="form-control" title="Password Quastion to recover your Password" required="true" ID="DpPassQuestion" runat="server">
                         <asp:ListItem Text="Choose Your Password Quastion" Value="0" style="font-weight: bold; color:blue"></asp:ListItem>
                            <asp:ListItem>What is your mother's maiden name?</asp:ListItem>
                            <asp:ListItem>What is the name of your first pet?</asp:ListItem>
                            <asp:ListItem>What elementary school did you attend?</asp:ListItem>
                            <asp:ListItem>What is the name of the town where you were born?</asp:ListItem>
                            <asp:ListItem>Who was your childhood hero?</asp:ListItem>
                            <asp:ListItem>Where was your best family vacation as a kid?</asp:ListItem>
                            <asp:ListItem>What was your favorite food as a child?</asp:ListItem>
                                   <asp:ListItem>What year was your father (or mother) born?</asp:ListItem>
                        </asp:DropDownList>
                                       <span id="QuestionError" style="color: red; display: none;">Please select a country.</span>
                                   
                                      <br />
                                <div class="form-group">
                                    <label class="form-label">Your Password Question Answer</label>
                             <asp:TextBox type="text" class="form-control" AutoCompleteType="DisplayName" placeholder="Put Your Your Password Question Answer" ID="txt_PassAnswer" runat="server"></asp:TextBox>
                                </div>

                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="account-change-password">
                            <div class="card-body pb-2">
                                <div class="form-group">
                                    <label class="form-label">Current password</label>
                                    <input type="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">New password</label>
                                    <input type="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Repeat new password</label>
                                    <input type="password" class="form-control">
                                </div>
                            </div>
                        </div>



                    </div>
                </div>  
              </div>
          </div>
      </div>


        <div runat="server" style="" id="notfi" class="notification" visible="false">
        <div style="font-family: 'Poppins', sans-serif;" class="notification__body">
            <i class="fas fa-solid fa-check check" style="    display: flex;
    align-items: center;
    justify-content: center;
    height: 35px;
    min-width: 35px;
    background-color: #4070f4;
    color: #fff;
    font-size: 20px;
    border-radius: 50%;"></i>


    <div class="message">
      <span class="text text-1">Success</span>
      <span class="text text-2">Your changes has been saved</span>
    </div>


        </div>
        <div class="notification__progress"></div>
    </div>

      <link href="../styles/Notifications.css" rel="stylesheet" />

<div class="text-right mt-3">

     <asp:Button ID="Btn_Cancel" type="button" class="btn btn-default" runat="server" Text="Cancel" OnClick="Btn_Cancel_Click" />
          
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


.notification {
    font-family: 'Poppins', sans-serif; 
    position: fixed; 
    transform: translateX(-50%); 
    padding: 10px;
    background-color:#fff;
    color:black;
    box-shadow: 0 6px 20px -5px rgba(0, 0, 0, 0.1);
}   
.notification__progress{
    background: #4070f4;
}

.message{
        display: flex;
    flex-direction: column;
    margin: 0 20px;
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
</asp:Content>
