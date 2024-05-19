<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="MyFirstWeb.pages.MyAccount" %>
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
                          <a href="#" class="text-decoration-none d-flex align-items-start">
                              <div class="fas fa-box-open pt-2 me-3" aria-hidden="true"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">My Orders</div>
                                  <div class="link-desc">View &amp; Manage orders and returns</div>
                              </div>
                          </a>
                      </li>
                      <li>
                          <a href="#" class="text-decoration-none d-flex align-items-start">
                              <div class="far fa-address-book pt-2 me-3" aria-hidden="true"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">Address Book</div>
                                  <div class="link-desc">View &amp; Manage Addresses</div>
                              </div>
                          </a>
                      </li>
                      <li>
                          <a href="MyAccount.aspx" class="text-decoration-none d-flex align-items-start">
                              <div class="fas fa-box pt-2 me-3"></div>
                              <div class="d-flex flex-column">
                                  <div class="link">My Account</div>
                                  <div class="link-desc">View & Manage orders and returns</div>
                              </div>
                          </a>
                      </li>
                      <li>
                          <a href="#" class="text-decoration-none d-flex align-items-start">
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
                                <div class="form-group">
                                    <label class="form-label">Your Country State</label>
          <asp:DropDownList  class="form-control" required="true" ID="DpCountry" runat="server" >
                        <asp:ListItem Text="Select a Country" Value="0" style="font-weight: bold; "></asp:ListItem>
   
    <asp:ListItem Text="North America" Value="North America" Disabled="true" style="color: #0000FF; font-weight: bold;"></asp:ListItem>
  
        <asp:ListItem Text="United States" Value="United States"></asp:ListItem>
        <asp:ListItem Text="Canada" Value="Canada"></asp:ListItem>

    <asp:ListItem Text="South America" Value="South America" Disabled="true" style="color: #0000FF; font-weight: bold; "></asp:ListItem>

        <asp:ListItem Text="Argentina" Value="Argentina"></asp:ListItem>
        <asp:ListItem Text="Bolivia" Value="Bolivia"></asp:ListItem>
        <asp:ListItem Text="Brazil" Value="Brazil"></asp:ListItem>
        <asp:ListItem Text="Chile" Value="Chile"></asp:ListItem>
        <asp:ListItem Text="Colombia" Value="Colombia"></asp:ListItem>
        <asp:ListItem Text="Ecuador" Value="Ecuador"></asp:ListItem>
        <asp:ListItem Text="Guyana" Value="Guyana"></asp:ListItem>
        <asp:ListItem Text="Paraguay" Value="Paraguay"></asp:ListItem>
        <asp:ListItem Text="Peru" Value="Peru"></asp:ListItem>
        <asp:ListItem Text="Suriname" Value="Suriname"></asp:ListItem>
        <asp:ListItem Text="Uruguay" Value="Uruguay"></asp:ListItem>
        <asp:ListItem Text="Venezuela" Value="Venezuela"></asp:ListItem>

   <asp:ListItem Text="Europe" Value="Europe" Disabled="true" style="color: #0000FF; font-weight: bold; "></asp:ListItem>

        <asp:ListItem Text="Albania" Value="Albania"></asp:ListItem>
        <asp:ListItem Text="Andorra" Value="Andorra"></asp:ListItem>
        <asp:ListItem Text="Austria" Value="Austria"></asp:ListItem>
        <asp:ListItem Text="Belgium" Value="Belgium"></asp:ListItem>
        <asp:ListItem Text="Bulgaria" Value="Bulgaria"></asp:ListItem>
        <asp:ListItem Text="Croatia" Value="Croatia"></asp:ListItem>
        <asp:ListItem Text="Cyprus" Value="Cyprus"></asp:ListItem>
        <asp:ListItem Text="Czech Republic" Value="Czech Republic"></asp:ListItem>
        <asp:ListItem Text="Denmark" Value="Denmark"></asp:ListItem>
        <asp:ListItem Text="Estonia" Value="Estonia"></asp:ListItem>
        <asp:ListItem Text="Finland" Value="Finland"></asp:ListItem>
        <asp:ListItem Text="France" Value="France"></asp:ListItem>
        <asp:ListItem Text="Germany" Value="Germany"></asp:ListItem>
        <asp:ListItem Text="Greece" Value="Greece"></asp:ListItem>
        <asp:ListItem Text="Hungary" Value="Hungary"></asp:ListItem>
        <asp:ListItem Text="Iceland" Value="Iceland"></asp:ListItem>
        <asp:ListItem Text="Ireland" Value="Ireland"></asp:ListItem>
        <asp:ListItem Text="Italy" Value="Italy"></asp:ListItem>
        <asp:ListItem Text="Latvia" Value="Latvia"></asp:ListItem>
        <asp:ListItem Text="Liechtenstein" Value="Liechtenstein"></asp:ListItem>
        <asp:ListItem Text="Lithuania" Value="Lithuania"></asp:ListItem>
        <asp:ListItem Text="Luxembourg" Value="Luxembourg"></asp:ListItem>
        <asp:ListItem Text="Macedonia" Value="Macedonia"></asp:ListItem>
        <asp:ListItem Text="Malta" Value="Malta"></asp:ListItem>
        <asp:ListItem Text="Monaco" Value="Monaco"></asp:ListItem>
        <asp:ListItem Text="Netherlands" Value="Netherlands"></asp:ListItem>
        <asp:ListItem Text="Norway" Value="Norway"></asp:ListItem>
        <asp:ListItem Text="Poland" Value="Poland"></asp:ListItem>
        <asp:ListItem Text="Portugal" Value="Portugal"></asp:ListItem>
        <asp:ListItem Text="Romania" Value="Romania"></asp:ListItem>
        <asp:ListItem Text="Russian Federation" Value="Russian Federation"></asp:ListItem>
        <asp:ListItem Text="San Marino" Value="San Marino"></asp:ListItem>
        <asp:ListItem Text="Slovakia (Slovak Republic)" Value="Slovakia"></asp:ListItem>
        <asp:ListItem Text="Slovenia" Value="Slovenia"></asp:ListItem>
        <asp:ListItem Text="Spain" Value="Spain"></asp:ListItem>
        <asp:ListItem Text="Sweden" Value="Sweden"></asp:ListItem>
        <asp:ListItem Text="Switzerland" Value="Switzerland"></asp:ListItem>
        <asp:ListItem Text="United Kingdom" Value="United Kingdom"></asp:ListItem>

  <asp:ListItem Text="Asia" Value="Asia" Disabled="true" style="color: #0000FF; font-weight: bold; "></asp:ListItem>

        <asp:ListItem Text="Afghanistan" Value="Afghanistan"></asp:ListItem>
        <asp:ListItem Text="Armenia" Value="Armenia"></asp:ListItem>
        <asp:ListItem Text="Azerbaijan" Value="Azerbaijan"></asp:ListItem>
        <asp:ListItem Text="Bahrain" Value="Bahrain"></asp:ListItem>
        <asp:ListItem Text="Bangladesh" Value="Bangladesh"></asp:ListItem>
        <asp:ListItem Text="Bhutan" Value="Bhutan"></asp:ListItem>
        <asp:ListItem Text="Brunei Darussalam" Value="Brunei Darussalam"></asp:ListItem>
        <asp:ListItem Text="Cambodia" Value="Cambodia"></asp:ListItem>
        <asp:ListItem Text="China" Value="China"></asp:ListItem>
        <asp:ListItem Text="Christmas Island" Value="Christmas Island"></asp:ListItem>
        <asp:ListItem Text="Cocos (Keeling) Islands" Value="Cocos (Keeling) Islands"></asp:ListItem>
        <asp:ListItem Text="East Timor" Value="East Timor"></asp:ListItem>
        <asp:ListItem Text="Georgia" Value="Georgia"></asp:ListItem>
        <asp:ListItem Text="Hong Kong" Value="Hong Kong"></asp:ListItem>
        <asp:ListItem Text="India" Value="India"></asp:ListItem>
        <asp:ListItem Text="Indonesia" Value="Indonesia"></asp:ListItem>
        <asp:ListItem Text="Iran (Islamic Republic Of)" Value="Iran"></asp:ListItem>
        <asp:ListItem Text="Iraq" Value="Iraq"></asp:ListItem>
        <asp:ListItem Text="Israel" Value="Israel"></asp:ListItem>
        <asp:ListItem Text="Japan" Value="Japan"></asp:ListItem>
        <asp:ListItem Text="Jordan" Value="Jordan"></asp:ListItem>
        <asp:ListItem Text="Kazakhstan" Value="Kazakhstan"></asp:ListItem>
        <asp:ListItem Text="Kuwait" Value="Kuwait"></asp:ListItem>
        <asp:ListItem Text="Kyrgyzstan" Value="Kyrgyzstan"></asp:ListItem>
        <asp:ListItem Text="Lao People'S Dem Republic" Value="Lao People'S Dem Republic"></asp:ListItem>
        <asp:ListItem Text="Lebanon" Value="Lebanon"></asp:ListItem>
        <asp:ListItem Text="Malaysia" Value="Malaysia"></asp:ListItem>
        <asp:ListItem Text="Maldives" Value="Maldives"></asp:ListItem>
        <asp:ListItem Text="Mongolia" Value="Mongolia"></asp:ListItem>
        <asp:ListItem Text="Myanmar" Value="Myanmar"></asp:ListItem>
        <asp:ListItem Text="Nepal" Value="Nepal"></asp:ListItem>
        <asp:ListItem Text="Oman" Value="Oman"></asp:ListItem>
        <asp:ListItem Text="Pakistan" Value="Pakistan"></asp:ListItem>
        <asp:ListItem Text="Palestine (West Bank and Gaza Strip)" Value="Palestine"></asp:ListItem>
        <asp:ListItem Text="Philippines" Value="Philippines"></asp:ListItem>
        <asp:ListItem Text="Qatar" Value="Qatar"></asp:ListItem>
        <asp:ListItem Text="Saudi Arabia" Value="Saudi Arabia"></asp:ListItem>
        <asp:ListItem Text="Singapore" Value="Singapore"></asp:ListItem>
        <asp:ListItem Text="Sri Lanka" Value="Sri Lanka"></asp:ListItem>
        <asp:ListItem Text="Syria" Value="Syria"></asp:ListItem>
        <asp:ListItem Text="Taiwan" Value="Taiwan"></asp:ListItem>
        <asp:ListItem Text="Tajikistan" Value="Tajikistan"></asp:ListItem>
        <asp:ListItem Text="Thailand" Value="Thailand"></asp:ListItem>
        <asp:ListItem Text="Turkey" Value="Turkey"></asp:ListItem>
        <asp:ListItem Text="Turkmenistan" Value="Turkmenistan"></asp:ListItem>
        <asp:ListItem Text="United Arab Emirates" Value="United Arab Emirates"></asp:ListItem>
        <asp:ListItem Text="Uzbekistan" Value="Uzbekistan"></asp:ListItem>
        <asp:ListItem Text="Vietnam" Value="Vietnam"></asp:ListItem>
        <asp:ListItem Text="Yemen" Value="Yemen"></asp:ListItem>

    <asp:ListItem Text="Australia/Oceania" Value="Asia" Disabled="true" style="color: #0000FF; font-weight: bold; "></asp:ListItem>

        <asp:ListItem Text="American Samoa" Value="American Samoa"></asp:ListItem>
        <asp:ListItem Text="Australia" Value="Australia"></asp:ListItem>
        <asp:ListItem Text="Fiji" Value="Fiji"></asp:ListItem>
        <asp:ListItem Text="Kiribati" Value="Kiribati"></asp:ListItem>
        <asp:ListItem Text="Marshall Islands" Value="Marshall Islands"></asp:ListItem>
        <asp:ListItem Text="Micronesia, Federated States" Value="Micronesia, Federated States"></asp:ListItem>
        <asp:ListItem Text="Nauru" Value="Nauru"></asp:ListItem>
        <asp:ListItem Text="New Zealand" Value="New Zealand"></asp:ListItem>
        <asp:ListItem Text="Palau" Value="Palau"></asp:ListItem>
        <asp:ListItem Text="Papua New Guinea" Value="Papua New Guinea"></asp:ListItem>
        <asp:ListItem Text="Samoa" Value="Samoa"></asp:ListItem>
        <asp:ListItem Text="Solomon Islands" Value="Solomon Islands"></asp:ListItem>
        <asp:ListItem Text="Tonga" Value="Tonga"></asp:ListItem>
        <asp:ListItem Text="Tuvalu" Value="Tuvalu"></asp:ListItem>
        <asp:ListItem Text="Vanuatu" Value="Vanuatu"></asp:ListItem>
        <asp:ListItem Text="Wallis And Futuna Islands" Value="Wallis And Futuna Islands"></asp:ListItem>

   <asp:ListItem Text="Caribbean" Value="Caribbean" Disabled="true" style="color: #0000FF; font-weight: bold; "></asp:ListItem>

        <asp:ListItem Text="Anguilla" Value="Anguilla"></asp:ListItem>
        <asp:ListItem Text="Antigua And Barbuda" Value="Antigua And Barbuda"></asp:ListItem>
        <asp:ListItem Text="Aruba" Value="Aruba"></asp:ListItem>
        <asp:ListItem Text="Bahamas" Value="Bahamas"></asp:ListItem>
        <asp:ListItem Text="Barbados" Value="Barbados"></asp:ListItem>
        <asp:ListItem Text="Bermuda" Value="Bermuda"></asp:ListItem>
        <asp:ListItem Text="British Virgin Islands" Value="British Virgin Islands"></asp:ListItem>
        <asp:ListItem Text="Cayman Islands" Value="Cayman Islands"></asp:ListItem>
        <asp:ListItem Text="Cuba" Value="Cuba"></asp:ListItem>
        <asp:ListItem Text="Dominica" Value="Dominica"></asp:ListItem>
        <asp:ListItem Text="Dominican Republic" Value="Dominican Republic"></asp:ListItem>
        <asp:ListItem Text="Grenada" Value="Grenada"></asp:ListItem>
        <asp:ListItem Text="Guadeloupe" Value="Guadeloupe"></asp:ListItem>
        <asp:ListItem Text="Haiti" Value="Haiti"></asp:ListItem>
        <asp:ListItem Text="Jamaica" Value="Jamaica"></asp:ListItem>
        <asp:ListItem Text="Martinique" Value="Martinique"></asp:ListItem>
        <asp:ListItem Text="Montserrat" Value="Montserrat"></asp:ListItem>
        <asp:ListItem Text="Netherlands Antilles (now dissolved)" Value="Netherlands Antilles"></asp:ListItem>
        <asp:ListItem Text="Puerto Rico" Value="Puerto Rico"></asp:ListItem>
        <asp:ListItem Text="Saint Kitts And Nevis" Value="Saint Kitts And Nevis"></asp:ListItem>
        <asp:ListItem Text="Saint Lucia" Value="Saint Lucia"></asp:ListItem>
        <asp:ListItem Text="Saint Vincent, The Grenadines" Value="Saint Vincent, The Grenadines"></asp:ListItem>
        <asp:ListItem Text="Trinidad And Tobago" Value="Trinidad And Tobago"></asp:ListItem>
        <asp:ListItem Text="Turks And Caicos Islands" Value="Turks And Caicos Islands"></asp:ListItem>
        <asp:ListItem Text="Virgin Islands (U.S.)" Value="Virgin Islands (U.S.)"></asp:ListItem>

   <asp:ListItem Text="Antarctica" Value="Antarctica" Disabled="true" style="color: #0000FF; font-weight: bold; "></asp:ListItem>

        <asp:ListItem Text="Antarctica" Value="Antarctica"></asp:ListItem>
        <asp:ListItem Text="Bouvet Island" Value="Bouvet Island"></asp:ListItem>
        <asp:ListItem Text="French Southern Territories" Value="French Southern Territories"></asp:ListItem>
        <asp:ListItem Text="South Georgia and the South Sandwich Islands" Value="South Georgia and the South Sandwich Islands"></asp:ListItem>




                </asp:DropDownList>
                          
                        <span id="countryError" style="color: red; display: none;">Please select a country.</span>
    <br />

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

             <asp:Button ID="Btn_Save" type="button" class="btn btn-primary" runat="server" Text="Save changes" OnClientClick="return validateCountry();" OnClick="Btn_Save_Click" />&nbsp;
     <asp:Button ID="Btn_Cancel" type="button" class="btn btn-default" runat="server" Text="Cancel" OnClick="Btn_Cancel_Click" />
          
        </div>

  </div>




<script>

    function validateCountry() {

        var ddlCountry = document.getElementById('<%= DpCountry.ClientID %>');
        var errorSpan = document.getElementById('countryError');

        var ddlQuestion = document.getElementById('<%= DpPassQuestion.ClientID %>');
        var QuestionErrorSpan = document.getElementById('QuestionError');

        if (ddlCountry.value == "0") {
            errorSpan.style.display = 'inline';
            return false; // prevent form submission
        }
        else {
            errorSpan.style.display = 'none';

            if (ddlQuestion.value == "0") {
                QuestionErrorSpan.style.display = 'inline';
                return false; // prevent form submission
            }
            else {
                QuestionErrorSpan.style.display = 'none';
                return true; // allow form submission
            }
          
            // allow form submission
        }




    }
</script>

   


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
