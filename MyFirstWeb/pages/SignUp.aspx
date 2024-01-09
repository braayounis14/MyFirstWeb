<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MyFirstWeb.pages.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>testing</title>

    
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/5.0.6/jquery.inputmask.min.js"></script>
     <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var txtDate = document.getElementById("txtDate");
            txtDate.addEventListener("input", function () {
                var inputValue = txtDate.value.replace(/\D/g, '');
                if (inputValue.length > 0) {
                    var formattedValue = inputValue.match(/(\d{1,2})(\d{0,2})(\d{0,4})/);
                    if (formattedValue) {
                        txtDate.value = formattedValue[1] + (formattedValue[2] ? '/' + formattedValue[2] : '') + (formattedValue[3] ? '/' + formattedValue[3] : '');
                    }
                }
            });
        });
    </script>




    <script>
        function checkDate() {
            // Get the input field value
            const birthdateInput = document.querySelector('input[id=txtDate]');
            const birthdateString = birthdateInput.value;

            // Parse the entered birthdate string into a Date object
            const birthdateParts = birthdateString.split('/');
            const birthdateObj = new Date(
                parseInt(birthdateParts[2], 10),
                parseInt(birthdateParts[1], 10) - 1,
                parseInt(birthdateParts[0], 10)
            );

            // Get the current date
            const currentDate = new Date();

            // Compare the birthdate with the current date
            if (birthdateObj <= currentDate) {
                // Birthdate is in the past
                birthdateInput.setCustomValidity('');
            } else {
                // Birthdate is in the future
                birthdateInput.setCustomValidity('Birthdate must be in the past.');
            }
        }

        // Attach the function to the input's change event
        const birthdateInput = document.querySelector('input[id=txtDate]');
        birthdateInput.addEventListener('change', checkDate);
    </script>


        <script> 
            function checkPasswordConfirm() {
                const psw = document.querySelector('input[id=psw]');
                const pswString = psw.value;

                const pswConfirm = document.querySelector('input[id=pswConfirm]');
                const pswConfirmString = pswConfirm.value;

                if (pswConfirmString != pswString)
                    pswConfirm.setCustomValidity('password confirm is incorrect');
                else
                    pswConfirm.setCustomValidity('');
            }
        </script>


</head>
<body>

    <link href="../styles/CreationSucceeded.css" rel="stylesheet" />
    <link href="../styles/lol1.css" rel="stylesheet" />
    <link href="../styles/Notifications.css" rel="stylesheet" />
           <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet"/>




           <form id="form1" class="" runat="server">

    <div runat="server" id="AllCode" class="container">
        <div class="screen">
            <div class="screen__content">
                <div class="login">

                                        <div class="login__field">
    <i class="login__icon fas fa-user"></i>
 <asp:TextBox ID="TxtID" class="login__input" required="true" MaxLength="9" MinLength="9" title="ID Should Be Only Numbers" placeholder="Enter ID"  pattern="^\d+$" runat="server"></asp:TextBox>

</div>




                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                        <asp:TextBox ID="user_txt" class="login__input" required="true" placeholder="UserName" runat="server"></asp:TextBox>
                    </div>

                     <div class="login__field">
                         <i class="login__icon fas fa-envelope"></i>
  <asp:TextBox ID="email_txt" class="login__input" required="true" title="Please enter a valid email address (user@domain.com)" placeholder="Email" pattern="^.+@[^@]+\.[^@]+$" runat="server" TextMode="Email"></asp:TextBox>
 </div>


        <div class="login__field">
   <i class="login__icon fas fa-calendar"></i>

          <asp:TextBox ID="txtDate" required="true" onChange="checkDate()" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" title="set your  birthday date format:1:(dd/mm/yyyy)  date should be real (past)!! " Class="login__input" placeholder="dd/mm/yyyy" runat="server" ClientIDMode="Static"></asp:TextBox>
                     
</div>



                    <div class="login__field">
                        <i class="login__icon fas fa-lock"></i>
                        <asp:TextBox ID="psw" class="login__input" required="true" pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#%&!$*]).{8,32}$"
    title="Please enter a valid Password that contains:(Password should have at least one numerical digit(0-9).
Password's length should be in between 8 to 32 characters.
Password should have at least one lowercase letter(a-z).
Password should have at least one uppercase letter(A-Z).
Password should have at least one special character ( @, #, %, &, !, $, *)   .)"


                            placeholder="Password" runat="server" TextMode="Password" MinLength="8" MaxLength="32"></asp:TextBox>
                    </div>
                  
                    <div class="login__field">
    <i class="login__icon fas fa-lock"></i>
    <asp:TextBox ID="pswConfirm" class="login__input" onChange="checkPasswordConfirm()" placeholder="Confirm Password" MinLength="8" MaxLength="32" required="true" autocomplete="off" runat="server" TextMode="Password"></asp:TextBox>
</div>
                    <div class="login__field">
                       <i class="login__icon fas fa-flag"></i>
                    <asp:DropDownList  class="login__input" required="true" ID="DpCountry" runat="server" >
                        <asp:ListItem Text="Select a Category" Value="0" style="font-weight: bold; "></asp:ListItem>
   
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
                        
      </div>




                    <div class="login__field">
   <i class="login__icon fas fa-flag"></i>
                        <asp:DropDownList class="login__input" title="Gender choose" required="true" ID="DpGender" runat="server">
                            <asp:ListItem Text="Choose Your Gender" Value="0" style="font-weight: bold; color:blue"></asp:ListItem>
             
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>

  </div>

                                      <div class="login__field">
   <i class="login__icon fas fa-question"></i>
                        <asp:DropDownList class="login__input" title="Password Quastion to recover your Password" required="true" ID="DPPassQuastion" runat="server">
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
                                          
  </div>
                  
        <div class="login__field">
   <i class="login__icon fas fa-info"></i>

          <asp:TextBox ID="PassQuastionAnswer" required="true"  title="Type your answer to the past Password Quastion" Class="login__input" placeholder="Password |Quastion Answer" runat="server" ></asp:TextBox>
                     
</div>


            <asp:Button ID="SignUp_Btn"  runat="server" Text="SignUp"  class="button login__submit" OnClick="SignUp_Btn_Click" />

              
                 
                    <script> 
                        function myfunction() {
                            alert("test");
                        }

                    </script>



 </div>
               
                        <div class="social-login">
            
            <h5>Have an account? <a href="Login.aspx">Login</a></h5>
         
        </div>
    </div>
    <div class="screen__background">
        <span class="screen__background__shape screen__background__shape4"></span>
        <span class="screen__background__shape screen__background__shape3"></span>
        <span class="screen__background__shape screen__background__shape2"></span>
        <span class="screen__background__shape screen__background__shape1"></span>
    </div>
</div>



        <div runat="server" id="help"></div>

    </div>

     </form>



</body>
</html>
