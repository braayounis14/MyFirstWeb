<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="MyFirstWeb.pages.Buy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


        <script>    


            var cardDrop = document.getElementById('card-dropdown');
            var activeDropdown;
            cardDrop.addEventListener('click', function () {
                var node;
                for (var i = 0; i < this.childNodes.length - 1; i++)
                    node = this.childNodes[i];
                if (node.className === 'dropdown-select') {
                    node.classList.add('visible');
                    activeDropdown = node;
                };
            })

            window.onclick = function (e) {
                console.log(e.target.tagName)
                console.log('dropdown');
                console.log(activeDropdown)
                if (e.target.tagName === 'LI' && activeDropdown) {
                    if (e.target.innerHTML === 'Master Card') {
                        document.getElementById('credit-card-image').src = 'https://dl.dropboxusercontent.com/s/2vbqk5lcpi7hjoc/MasterCard_Logo.svg.png';
                        activeDropdown.classList.remove('visible');
                        activeDropdown = null;
                        e.target.innerHTML = document.getElementById('current-card').innerHTML;
                        document.getElementById('current-card').innerHTML = 'Master Card';
                    }
                    else if (e.target.innerHTML === 'American Express') {
                        document.getElementById('credit-card-image').src = 'https://dl.dropboxusercontent.com/s/f5hyn6u05ktql8d/amex-icon-6902.png';
                        activeDropdown.classList.remove('visible');
                        activeDropdown = null;
                        e.target.innerHTML = document.getElementById('current-card').innerHTML;
                        document.getElementById('current-card').innerHTML = 'American Express';
                    }
                    else if (e.target.innerHTML === 'Visa') {
                        document.getElementById('credit-card-image').src = 'https://dl.dropboxusercontent.com/s/ubamyu6mzov5c80/visa_logo%20%281%29.png';
                        activeDropdown.classList.remove('visible');
                        activeDropdown = null;
                        e.target.innerHTML = document.getElementById('current-card').innerHTML;
                        document.getElementById('current-card').innerHTML = 'Visa';
                    }
                }
                else if (e.target.className !== 'dropdown-btn' && activeDropdown) {
                    activeDropdown.classList.remove('visible');
                    activeDropdown = null;
                }
            }



        </script>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        var txtDate = document.getElementById("txtDate");
        txtDate.addEventListener("input", function () {
            var inputValue = txtDate.value.replace(/\D/g, '');
            if (inputValue.length > 0) {
                var formattedValue = inputValue.match(/(\d{1,2})(\d{0,2})/);
                if (formattedValue) {
                    txtDate.value = (formattedValue[1] ? formattedValue[1] + (formattedValue[2] ? '/' + formattedValue[2] : '') : '');
                }
            }
        });
    });

</script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>




    <div class='container'>
  <div class='window'>
    <div class='order-info'>
      <div class='order-info-content'>
        <h2>Order Summary</h2>
                <div class='line'></div>
        <table class='order-table'>
          <tbody>
            <tr>
              <td><img src='https://dl.dropboxusercontent.com/s/sim84r2xfedj99n/%24_32.JPG' class='full-width'></img>
              </td>
              <td>
                <br> <span class='thin'>Nike</span>
                <br> Free Run 3.0 Women<br> <span class='thin small'> Color: Grey/Orange, Size: 10.5<br><br></span>
              </td>

            </tr>
            <tr>
              <td>
                <div class='price'>$99.95</div>
              </td>
            </tr>
          </tbody>

        </table>
        <div class='line'></div>
        <table class='order-table'>
          <tbody>
            <tr>
              <td><img src='https://dl.dropboxusercontent.com/s/qbj9tsbvthqq72c/Vintage-20L-Backpack-by-Fj%C3%A4llr%C3%A4ven.jpg' class='full-width'></img>
              </td>
              <td>
                <br> <span class='thin'>Fjällräven</span>
                <br>Vintage Backpack<br> <span class='thin small'> Color: Olive, Size: 20L</span>
              </td>
            </tr>
            <tr>
              <td>
                <div class='price'>$235.95</div>
              </td>
            </tr>
          </tbody>
        </table>
        <div class='line'></div>
        <table class='order-table'>
          <tbody>
            <tr>
              <td><img src='https://dl.dropboxusercontent.com/s/nbr4koso8dpoggs/6136C1p5FjL._SL1500_.jpg' class='full-width'></img>
              </td>
              <td>
                <br> <span class='thin'>Monobento</span>
                <br>Double Lunchbox<br> <span class='thin small'> Color: Pink, Size: Medium</span>
              </td>

            </tr>
            <tr>
              <td>
                <div class='price'>$25.95</div>
              </td>
            </tr>
          </tbody>
        </table>
        <div class='line'></div>
        <div class='total'>
          <span style='float:left;'>
            <div class='thin dense'>VAT 19%</div>
            <div class='thin dense'>Delivery</div>
            TOTAL
          </span>
          <span style='float:right; text-align:right;'>
              <div class='thin dense'>

                  <asp:Label ID="Label2" runat="server" Text="$68.75"></asp:Label>

              </div>
            <div class='thin dense'>   

                <asp:Label ID="lblDilvery" runat="server" Text="$4.95"></asp:Label>

            </div>
           <asp:Label ID="lblPrice" runat="server" Text="$435.55"></asp:Label>
          </span>
        </div>
</div>
</div>
        <div class='credit-info'>
          <div class='credit-info-content'>
            <table class='half-input-table'>
              <tr><td>Please select your card: </td><td><div class='dropdown' id='card-dropdown'><div class='dropdown-btn' id='current-card'>Visa</div>
                <div class='dropdown-select'>
                <ul>
                  <li>Master Card</li>
                  <li>American Express</li>
                  </ul></div>
                </div>
               </td></tr>
            </table>
            <img src='https://dl.dropboxusercontent.com/s/ubamyu6mzov5c80/visa_logo%20%281%29.png' height='80' class='credit-card-image' id='credit-card-image'></img>
            Card Number
            <asp:TextBox class="input-field" ID="txtCardNum" pattern="^\d{16}$" MaxLength="16" MinLength="16" required="true" runat="server"></asp:TextBox>
            Card Holder
            <asp:TextBox class="input-field" ID="txtCardHolder" required="true" runat="server"></asp:TextBox>
              Card  Holder ID
              <asp:TextBox class="input-field" ID="txtCardHolderID" required="true" pattern="^\d{9}$" title="Please enter a valid 9-digit ID number" runat="server"></asp:TextBox>
            <table class='half-input-table'>
              <tr>
                <td> Expires
                    <asp:TextBox ID="txtDate" class="input-field" required="true"  pattern="^(0[1-9]|1[0-2])/\d{2}$" title="Please enter a valid date in the format mm/yy    set your expiration Card Date format:(mm/yy)" placeholder="mm/yy" runat="server" ClientIDMode="Static"></asp:TextBox>
                </td>
                <td>CVC
                  <asp:TextBox class="input-field" ID="txtCardCvc" pattern="^\d{3}$" MaxLength="3" MinLength="3" required="true" runat="server"></asp:TextBox>
                </td>
              </tr>
            </table>
              <asp:Button ID="Button1" Style="padding: 0px" runat="server" Text="Checkout" Class="pay-btn" OnClick="Button1_Click" />
          </div>

        </div>
      </div>
</div>






<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Cart] where ([Email]=?)" DeleteCommand="DELETE FROM [Cart] WHERE [code] = ?">
    <DeleteParameters>
        <asp:Parameter Name="code" Type="String" />
    </DeleteParameters>
    <SelectParameters>
        <asp:SessionParameter SessionField="email" Name="?"></asp:SessionParameter>
    </SelectParameters>
</asp:AccessDataSource>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="code,Email,datebuy"
        DataSourceID="AccessDataSource1" ShowFooter="True" Visible="False">
         <Columns>
             <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
             <asp:BoundField DataField="Info" HeaderText="Info" SortExpression="Info" />
             <asp:TemplateField HeaderText="Image">
                 <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl='<%# DataBinder.Eval   (Container.DataItem,"image","{0}") %>' Width="246px" />
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:BoundField DataField="datebuy" HeaderText="datebuy" ReadOnly="True" SortExpression="datebuy" />
             <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
             <asp:CommandField ShowDeleteButton="True" />
         </Columns>
     </asp:GridView>










    <style>



        @import url(https://fonts.googleapis.com/css?family=Lato:400,300,700);
body,html {
  height:100%;
  margin:0;
  font-family:lato;
}

h2 {
  margin-bottom:0px;
  margin-top:25px;
  text-align:center;
  font-weight:200;
  font-size:19px;
  font-size:1.2rem;
  
}
.container {
  height:100%;
  -webkit-box-pack:center;
  -webkit-justify-content:center;
      -ms-flex-pack:center;
          justify-content:center;
  -webkit-box-align:center;
  -webkit-align-items:center;
      -ms-flex-align:center;
          align-items:center;
  display:-webkit-box;
  display:-webkit-flex;
  display:-ms-flexbox;
  display:flex;

}
.dropdown-select.visible {
  display:block;
}
.dropdown {
  position:relative;
}
ul {
  margin:0;
  padding:0;
}
ul li {
  list-style:none;
  padding-left:10px;
  cursor:pointer;
}
ul li:hover {
  background:rgba(255,255,255,0.1);
}
.dropdown-select {
  position:absolute;
  background:#77aaee;
  text-align:left;
  box-shadow:0px 3px 5px 0px rgba(0,0,0,0.1);
  border-bottom-right-radius:5px;
  border-bottom-left-radius:5px;
  width:90%;
  left:2px;
  line-height:2em;
  margin-top:2px;
  box-sizing:border-box;
}
.thin {
  font-weight:400;
}
.small {
  font-size:12px;
  font-size:.8rem;
}
.half-input-table {
  border-collapse:collapse;
  width:100%;
}
.half-input-table td:first-of-type {
  border-right:10px solid #4488dd;
  width:50%;
}
.window {
  height:540px;
  width:800px;
  background:#fff;
  display:-webkit-box;
  display:-webkit-flex;
  display:-ms-flexbox;
  display:flex;
  box-shadow: 0px 15px 50px 10px rgba(0, 0, 0, 0.2);
  border-radius:30px;
  z-index:10;
}
.order-info {
  height:100%;
  width:50%;
  padding-left:25px;
  padding-right:25px;
  box-sizing:border-box;
  display:-webkit-box;
  display:-webkit-flex;
  display:-ms-flexbox;
  display:flex;
  -webkit-box-pack:center;
  -webkit-justify-content:center;
      -ms-flex-pack:center;
          justify-content:center;
  position:relative;
}
.price {
  bottom:0px;
  position:absolute;
  right:0px;
  color:#4488dd;
}
.order-table td:first-of-type {
  width:25%;
}
.order-table {
    position:relative;
}
.line {
  height:1px;
  width:100%;
  margin-top:10px;
  margin-bottom:10px;
  background:#ddd;
}
.order-table td:last-of-type {
  vertical-align:top;
  padding-left:25px;
}
.order-info-content {
  table-layout:fixed;

}

.full-width {
  width:100%;
}
.pay-btn {
  border:none;
  background:#22b877;
  line-height:2em;
  border-radius:10px;
  font-size:19px;
  font-size:1.2rem;
  color:#fff;
  cursor:pointer;
  position:absolute;
  bottom:25px;
  width:calc(100% - 50px);
  -webkit-transition:all .2s ease;
          transition:all .2s ease;
}
.pay-btn:hover {
  background:#22a877;
    color:#eee;
  -webkit-transition:all .2s ease;
          transition:all .2s ease;
}

.total {
  margin-top:25px;
  font-size:20px;
  font-size:1.3rem;
  position:absolute;
  bottom:30px;
  right:27px;
  left:35px;
}
.dense {
  line-height:1.2em;
  font-size:16px;
  font-size:1rem;
}
.input-field {
  background:rgba(255,255,255,0.1);
  margin-bottom:10px;
  margin-top:3px;
  line-height:1.5em;
  font-size:20px;
  font-size:1.3rem;
  border:none;
  padding:5px 10px 5px 10px;
  color:#fff;
  box-sizing:border-box;
  width:100%;
  margin-left:auto;
  margin-right:auto;
}
.credit-info {
  background:#4488dd;
  height:100%;
  width:50%;
  color:#eee;
  -webkit-box-pack:center;
  -webkit-justify-content:center;
      -ms-flex-pack:center;
          justify-content:center;
  font-size:14px;
  font-size:.9rem;
  display:-webkit-box;
  display:-webkit-flex;
  display:-ms-flexbox;
  display:flex;
  box-sizing:border-box;
  padding-left:25px;
  padding-right:25px;
  border-top-right-radius:30px;
  border-bottom-right-radius:30px;
  position:relative;
}
.dropdown-btn {
  background:rgba(255,255,255,0.1);
  width:100%;
  border-radius:5px;
  text-align:center;
  line-height:1.5em;
  cursor:pointer;
  position:relative;
  -webkit-transition:background .2s ease;
          transition:background .2s ease;
}
.dropdown-btn:after {
  content: '\25BE';
  right:8px;
  position:absolute;
}
.dropdown-btn:hover {
  background:rgba(255,255,255,0.2);
  -webkit-transition:background .2s ease;
          transition:background .2s ease;
}
.dropdown-select {
  display:none;
}
.credit-card-image {
  display:block;
  max-height:80px;
  margin-left:auto;
  margin-right:auto;
  margin-top:35px;
  margin-bottom:15px;
}
.credit-info-content {
  margin-top:25px;
  -webkit-flex-flow:column;
      -ms-flex-flow:column;
          flex-flow:column;
  display:-webkit-box;
  display:-webkit-flex;
  display:-ms-flexbox;
  display:flex;
  width:100%;
}
@media (max-width: 600px) {
  .window {
    width: 100%;
    height: 100%;
    display:block;
    border-radius:0px;
  }
  .order-info {
    width:100%;
    height:auto;
    padding-bottom:100px;
    border-radius:0px;
  }
  .credit-info {
    width:100%;
    height:auto;
    padding-bottom:100px;
    border-radius:0px;
  }
  .pay-btn {
    border-radius:0px;
  }
}



    </style>


   





</asp:Content>
