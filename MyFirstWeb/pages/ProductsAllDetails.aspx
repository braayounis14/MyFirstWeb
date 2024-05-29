<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="ProductsAllDetails.aspx.cs" Inherits="MyFirstWeb.pages.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:Image Visible="false" ID="image1" runat="server"></asp:Image>


    <br />
    <asp:Label Visible="false" ID="Label2" runat="server" Text="Label"></asp:Label><span></span>
    <br />
    <asp:Label Visible="false" ID="Label3" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label Visible="false" ID="Label4" runat="server" Text="Label"></asp:Label>
    <asp:TextBox Visible="false" required="true" value="1" ID="TextBox12" runat="server"></asp:TextBox>
    <asp:Button Visible="false" ID="Button111" runat="server" Text="Button" OnClick="Button1_Click" />


    
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <!-- css -->
   
    <link href="../styles/ProductsDetails.css" rel="stylesheet" />






      <div class="pagination">
        <p runat="server" id="href">Home > Shop > PcParts > Graphics Card </p>
    </div>
    <!-- product section -->
    <section class="product-container">
        <!-- left side -->
        <div class="img-card">
            <img runat="server" style="width: 100%; flex-shrink: 0; border-radius: 4px; height: 520px; object-fit: cover; " src="img/image-1.png" alt="" id="ProductImg">
            <!-- small img -->
        </div>
        <!-- Right side -->
        <div class="product-info">
            <h3 runat="server" id="title">LEVI'S® WOMEN'S XL TRUCKER JACKET</h3>
            <h5 runat="server" id="price">Price: $140 <del>$170</del></h5>
            <p runat="server" visible="false" id="info"> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsa accusantium, aspernatur provident beatae corporis veniam atque facilis, consequuntur assumenda, vitae dignissimos iste exercitationem dolor eveniet alias eos ullam nesciunt voluptatum.</p>
            
            <ul class="details" style="list-style:disc; ">
                
            <p runat="server" id="info2"> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsa accusantium, aspernatur provident beatae corporis veniam atque facilis, consequuntur assumenda, vitae dignissimos iste exercitationem dolor eveniet alias eos ullam nesciunt voluptatum.</p>

            </ul>


            <div class="quantity">
             
                 <asp:TextBox required="true" value="1" min="1" max="5" ID="TextBox1" type="number" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" class="button" style="width: 158px; height: 44px;" OnClick="Button1_Click" runat="server" Text="Add to Cart" />
            
            </div>

            <div>
                <p>Delivery:</p>
                <p>Free standard shipping on orders over ₪600, plus free returns.</p>
                <div class="delivery">
                    <p>TYPE</p> <p>HOW LONG</p> <p>HOW MUCH</p>
                </div>
                <hr>
                <div class="delivery">
                    <p>World EggSaver Standard</p> 
                    <p>5-7 Business Days </p> 
                    <p>₪50</p>
                </div>
                <hr>
                <div class="delivery">
                    <p>Pick up in store</p> 
                    <p>1-3 business days</p> 
                    <p>Free</p>
                </div>
            </div>
        </div>
    </section>
   
    <!-- script tags -->
    <script src="js/cart.js"></script>

    <style>

        .details {
                background-color: #f7f7f7;
    padding: 15px 15px 15px 33px;
    margin-left: 0;
    border-radius: 4px 4px 0 0;
    position: relative;
    overflow: hidden;
    box-sizing: border-box;
        }

    </style>
</asp:Content>
