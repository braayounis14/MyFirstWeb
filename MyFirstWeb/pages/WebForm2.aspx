<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MyFirstWeb.pages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            



        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <!-- css -->
   
    <link href="../styles/ProductsDetails.css" rel="stylesheet" />


    <div class="body1">



      <div class="pagination">
        <p runat="server" id="href">Home > Shop > Women > Jacket </p>
    </div>
    <!-- product section -->
    <section class="product-container1">
        <!-- left side -->
        <div class="img-card">
            <img src="img/image-1.png" alt="" id="ffds">
            <!-- small img -->

        </div>
        <!-- Right side -->
        <div class="product-info">
            <h3>LEVI'S® WOMEN'S XL TRUCKER JACKET</h3>
            <h5>Price: $140 <del>$170</del></h5>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsa accusantium, aspernatur provident beatae corporis veniam atque facilis, consequuntur assumenda, vitae dignissimos iste exercitationem dolor eveniet alias eos ullam nesciunt voluptatum.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore accusamus natus dolorum. Quaerat nulla quod doloremque, officia quis provident amet adipisci unde esse iure delectus, maxime inventore optio fuga nisi?</p>


            <div class="quantity">
                <input type="number" value="1" min="1">

                <asp:Button ID="Button1" class="button" style="width: 158px; height: 44px;" runat="server" Text="Add to Cart" />
            
            </div>

            <div>
                <p>Delivery:</p>
                <p>Free standard shipping on orders over $35 before tax, plus free returns.</p>
                <div class="delivery">
                    <p>TYPE</p> <p>HOW LONG</p> <p>HOW MUCH</p>
                </div>
                <hr>
                <div class="delivery">
                    <p>World EggSaver Standard</p> 
                    <p>5-7 Business Days </p> 
                    <p>$4.50</p>
                </div>
                <hr>
                <div class="delivery">
                    <p>World EggSaver Express</p> 
                    <p>3-5 Business Days</p> 
                    <p>$10.00</p>
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
        </div>
    <!-- script tags -->
    <script src="js/cart.js"></script>


</asp:Content>
