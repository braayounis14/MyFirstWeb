<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="MyFirstWeb.pages.test" %>

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






</head>
<body>



    <link href="../styles/lol.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

    <div class="container">
        <div class="screen">
            <div class="screen__content">
                <form id="form1" class="login" runat="server">

                                        <div class="login__field">
    <i class="login__icon fas fa-user"></i>
 <asp:TextBox ID="TxtID" class="login__input" required="true" MaxLength="9" MinLength="9" title="ID Should Be Only Numbers" placeholder="Enter ID"  pattern="^\d+$" runat="server"></asp:TextBox>

</div>




                    <div class="login__field">
                        <i class="login__icon fas fa-user"></i>
                        <asp:TextBox ID="user_txt" class="login__input" required="true" placeholder="UserName" runat="server"></asp:TextBox>
                    </div>

                     <div class="login__field">
     <i class="login__icon fas fa-user"></i>
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
    <asp:TextBox ID="pswConfirm" class="login__input" placeholder="Confirm Password" MinLength="8" MaxLength="32" required="true" autocomplete="off" runat="server" TextMode="Password"></asp:TextBox>
</div>

<asp:DropDownList ID="ddlGroupedDropDown" runat="server">
    <asp:ListItem Text="Select a Category" Value="" Disabled="true" style="font-weight: bold;"></asp:ListItem>
    <asp:ListItem Text="Fruits" Value="Fruits" Disabled="true" style="background-color: #f0f0f0;"></asp:ListItem>
    <asp:ListItem Text="Apple" Value="Apple"></asp:ListItem>
    <asp:ListItem Text="Banana" Value="Banana"></asp:ListItem>
    <asp:ListItem Text="Orange" Value="Orange"></asp:ListItem>
    <asp:ListItem Text="Vegetables" Value="Vegetables" Disabled="true" style="color: #000000; font-weight: bold;"></asp:ListItem>
    <asp:ListItem Text="Carrot" Value="Carrot"></asp:ListItem>
    <asp:ListItem Text="Broccoli" Value="Broccoli"></asp:ListItem>
    <asp:ListItem Text="Cucumber" Value="Cucumber"></asp:ListItem>
</asp:DropDownList>
                    <select>
  <optgroup label="Group 1">
    <option value="item1">Item 1</option>
    <option value="item2">Item 2</option>
    <option value="item3">Item 3</option>
  </optgroup>
  <optgroup label="Group 2">
    <option value="item4">Item 4</option>
    <option value="item5">Item 5</option>
    <option value="item6">Item 6</option>
  </optgroup>
</select>

    
  <asp:Button ID="SignUp_Btn"  runat="server" Text="SignUp"  class="button login__submit" OnClick="SignUp_Btn_Click" />

              
                 





                </form>
                        <div class="social-login">
            
            <h5>Have an account? <a href="Login.aspx">Login</a></h5>
            <div class="social-icons">
                <a href="#" class="social-login__icon fab fa-instagram"></a>
                <a href="#" class="social-login__icon fab fa-facebook"></a>
                <a href="#" class="social-login__icon fab fa-twitter"></a>
            </div>
        </div>
    </div>
    <div class="screen__background">
        <span class="screen__background__shape screen__background__shape4"></span>
        <span class="screen__background__shape screen__background__shape3"></span>
        <span class="screen__background__shape screen__background__shape2"></span>
        <span class="screen__background__shape screen__background__shape1"></span>
    </div>
</div>





    </div>

</body>
</html>
