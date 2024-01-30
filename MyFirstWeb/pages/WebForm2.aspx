<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MyFirstWeb.pages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

















        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">












    <div>
     <div class="pagination">
        <p>Home > Shop > Women > Jacket </p>
    </div>
    <!-- product section -->
    <section class="product-container">
        <!-- left side -->
        <div class="img-card">
            <img src="https://localhost:44333/images/GeForce%20RTX%204090.jpg" alt="" id="featured-image">
            <!-- small img -->

        </div>
        <!-- Right side -->
        <div class="product-info">
            <h3>LEVI'S® WOMEN'S XL TRUCKER JACKET</h3>
            <h5>Price: $140 <del>$170</del></h5>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ipsa accusantium, aspernatur provident beatae corporis veniam atque facilis, consequuntur assumenda, vitae dignissimos iste exercitationem dolor eveniet alias eos ullam nesciunt voluptatum.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore accusamus natus dolorum. Quaerat nulla quod doloremque, officia quis provident amet adipisci unde esse iure delectus, maxime inventore optio fuga nisi?</p>

            <div class="sizes">
                <p>Size:</p>
                <select name="Size" id="size" class="size-option">
                    <option value="xxl">XXL</option>
                    <option value="xl">XL</option>
                    <option value="medium">Medium</option>
                    <option value="small">Small</option>
                </select>
            </div>

            <div class="quantity">
                <input type="number" value="1" min="1">
                <button>Add to Cart</button>
            </div>

            <div>
                <p>Delivery:</p>
                <p>Free standard shipping on orders over $35 before tax, plus free returns.</p>
                <div class="delivery">
                    <p>TYPE</p> <p>HOW LONG</p> <p>HOW MUCH</p>
                </div>
                <hr>
                <div class="delivery">
                    <p>Standard delivery</p> 
                    <p>1-4 business days</p> 
                    <p>$4.50</p>
                </div>
                <hr>
                <div class="delivery">
                    <p>Express delivery</p> 
                    <p>1 business day</p> 
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

    <!-- script tags -->
    <script src="js/cart.js"></script>




        </div>










    <style>

        * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
body {
padding-top:50px;
}

header {
  margin-bottom: 20px;
}

.product-container {
  display: flex;
  justify-content: start;
  align-items: start;
  gap: 40px;
}

/* .img-card{
    width: 40%;
} */

.img-card img {
  width: 100%;
  flex-shrink: 0;
  border-radius: 4px;
  height: 520px;
  object-fit: cover;
}

.small-Card {
  display: flex;
  justify-content: start;
  align-items: center;
  margin-top: 15px;
  gap: 12px;
}

.small-Card img {
  width: 104px;
  height: 104px;
  border-radius: 4px;
  cursor: pointer;
}

.small-Card img:active {
  border: 1px solid #17696a;
}

.sm-card {
  border: 2px solid darkred;
}

.product-info{
  width: 60%;
}
.product-info h3 {
  font-size: 32px;
  font-family: Lato;
  font-weight: 600;
  line-height: 130%;
}

.product-info h5 {
  font-size: 24px;
  font-family: Lato;
  font-weight: 500;
  line-height: 130%;
  color: #ff4242;
  margin: 6px 0;
}

.product-info del {
  color: #a9a9a9;
}

.product-info p {
  color: #424551;
  margin: 15px 0;
  width: 70%;
}

.sizes p {
  font-size: 22px;
  color: black;
}

.size-option {
  width: 200px;
  height: 30px;
  margin-bottom: 15px;
  padding: 5px;
}

.quantity input {
  width: 51px;
  height: 33px;
  margin-bottom: 15px;
  padding: 6px;
}

button {
  background: #17696a;
  border-radius: 4px;
  padding: 10px 37px;
  border: none;
  color: white;
  font-weight: 600;
}

button:hover {
  background: #ff4242;
  transition: ease-in 0.4s;
}

.delivery {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 70%;
  color: #787a80;
  font-size: 12px;
  font-family: Lato;
  line-height: 150%;
  letter-spacing: 1px;
}

hr {
  color: #787a80;
  width: 58%;
  opacity: 0.67;
}

.pagination {
    color: #787a80;
    margin: 15px 0;
    cursor: pointer;
}

@media screen and (max-width: 576px) {
  .product-container{
    flex-direction: column;
  }
  .small-Card img{
    width: 80px;
  }
  .product-info{
    width: 100%;
  }
  echo "# product-details-page-html-css-js" >> README.md
  .product-info p{
    width: 100%;
  }

  .delivery{
    width: 100%;
  }

  hr{
    width: 100%;
  }
}
    </style>

</asp:Content>
