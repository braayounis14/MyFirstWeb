   <%@ Page Title="Newegg" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyFirstWeb.pages.home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../styles/test.css" rel="stylesheet" />


    <section class="headline">
        <h1>Newegg Website</h1>
        <p>Fueling Your Passion for Powerful Computing</p>
    </section>

    <section class="features">
  <div class="feature-container">
    <img src="https://c1.neweggimages.com/ProductImageCompressAll1280/14-932-676-02.jpg" alt="Flexbox Feature">
    <h2>Gpu Category</h2>
    <p>In Stock Video Cards Upgrade Now!</p>
  </div>
  <div class="feature-container">
    <img src="../Images/download.png" alt="Flexbox Feature">
    <h2>Build PC Category</h2>
    <p>You can build your Pc easily </p>
  </div>
  <div class="feature-container"> 
    <img src="../Images/434723771_424932946753279_5729427194507615121_n.jpg" alt="Flexbox Feature">
    <h2>Our new Products</h2>
    <p>New At NewEgg</p>
  </div>
</section>
    

      <div style="margin:10px" class="section trending">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="section-heading">
            <h6 class="categoryText">Trending</h6>
            <h2 class="categoryText">Trending Games</h2>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="main-button">
            <a href="shop.html">View All</a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"><img class="categoryImg TrendImg" src="https://www.gigabyte.com/Image/2a0b3af92d42cc09236c06c389d0a032/Product/32146/webp/2000" /></a>
              <span class="price"><em>$28</em>$20</span>
            </div>
            <div class="down-content">
              <span class="category">Action</span>
              <h4>Assasin Creed</h4>
              <a href="product-details.html"><i class="fa fa-shopping-bag"></i></a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"><img class="categoryImg TrendImg" src="https://www.gigabyte.com/Image/2a0b3af92d42cc09236c06c389d0a032/Product/32146/webp/2000" alt=""></a>
              <span class="price">$44</span>
            </div>
            <div class="down-content">
              <span class="category">Action</span>
              <h4>Assasin Creed</h4>
              <a href="product-details.html"><i class="fa fa-shopping-bag"></i></a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"><img class="categoryImg TrendImg" src="../Images/MotherBoard.png" /></a>
              <span class="price"><em>$64</em>$44</span>
            </div>
            <div class="down-content">
              <span class="category">Action</span>
              <h4>Assasin Creed</h4>
              <a href="product-details.html"><i class="fa fa-shopping-bag"></i></a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"><img class="categoryImg TrendImg" src="https://dlcdnwebimgs.asus.com/gain/2808AAB9-285F-4F07-A8B9-43C783E92377/w1000/h732" /></a>
              <span class="price">$32</span>
            </div>
            <div class="down-content">
              <span class="category">Action</span>
              <h4>Assasin Creed</h4>
              <a href="product-details.html"><i class="fa fa-shopping-bag"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


      <div style="margin:10px" class="section most-played">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="section-heading">
            <h6 class="categoryText">TOP GAMES</h6>
            <h2 class="categoryText">Most Played</h2>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="main-button">
            <a href="shop.html">View All</a>
          </div>
        </div>
        <div class="col-lg-2 col-md-6 col-sm-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"> <img class="categoryImg" src="../Images/MotherBoard.png" /> </a>
            </div>
            <div class="down-content">
                <span class="category">Adventure</span>
                <h4 class="categoryText">Assasin Creed</h4>
                <a href="product-details.html">Explore</a>
            </div>
          </div>
        </div>
        <div class="col-lg-2 col-md-6 col-sm-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"> <img class="categoryImg" src="../Images/MotherBoard.png" /> </a>
            </div>
            <div class="down-content">
                <span class="category">Adventure</span>
                <h4 class="categoryText">Assasin Creed</h4>
                <a href="product-details.html">Explore</a>
            </div>
          </div>
        </div>
        <div class="col-lg-2 col-md-6 col-sm-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"> <img class="categoryImg" src="../Images/MotherBoard.png" /> </a>
            </div>
            <div class="down-content">
                <span class="category">Adventure</span>
                <h4 class="categoryText">Assasin Creed</h4>
                <a href="product-details.html">Explore</a>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-md-6 col-sm-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"> <img class="categoryImg" src="../Images/MotherBoard.png" /> </a>
            </div>
            <div class="down-content">
                <span class="category">Adventure</span>
                <h4 class="categoryText">Assasin Creed</h4>
                <a href="product-details.html">Explore</a>
            </div>
          </div>
        </div>


      </div>
    </div>
  </div>




    <style>
        body {
            background: #f1f1f1;
        }

        .section {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
        }

        header, nav, section, article, aside, footer, hgroup {
            display: block;
        }


        .most-played {
            background-color: #f7f7f7;
            padding: 100px 0px;
            border-radius: 150px;
        }

            .most-played .main-button {
                margin-top: 32px;
                text-align: right;
            }

            .most-played .item {
                background-color: #fff;
                position: relative;
                border-radius: 25px;
                text-align: center;
                margin-bottom: 40px;
            }

                .most-played .item .thumb {
                    position: relative;
                    border-radius: 25px;
                    overflow: hidden;
                }

                .most-played .item .down-content {
                    padding: 20px 15px 40px 15px;
                }

                    .most-played .item .down-content span.category {
                        font-size: 14px;
                        color: #7a7a7a;
                        margin-bottom: 5px;
                        display: inline-block;
                    }

                    .most-played .item .down-content h4 {
                        font-size: 17px;
                        font-weight: 600;
                        transition: all .3s;
                    }

                    .most-played .item .down-content a {
                        position: absolute;
                        display: inline-block;
                        text-align: center;
                        line-height: 40px;
                        height: 40px;
                        padding: 0px 15px;
                        background-color: #ee626b;
                        color: #fff;
                        border-radius: 20px;
                        font-size: 15px;
                        text-transform: uppercase;
                        font-weight: 600;
                        left: 50%;
                        transform: translateX(-50%);
                        bottom: -20px;
                        transition: all .3s;
                    }


                .most-played .item:hover .down-content h4 {
                    color: #0071f8;
                }

                .most-played .item:hover .down-content a {
                    background-color: #0071f8;
                }

        .header-area .container {
            padding: 0px;
        }

        .section-heading {
            margin-bottom: 70px;
        }

        a {
            text-decoration: none !important;
        }

        .section-heading h2 {
            font-size: 36px;
            font-weight: 700;
            text-transform: capitalize;
            margin-top: 20px;
            line-height: 44px;
        }

            .section-heading h2 em {
                font-style: normal;
                color: #0071f8;
            }

        .section-heading h6 {
            color: #ee626b;
            font-size: 15px;
            text-transform: uppercase;
            font-weight: 700;
        }

        .main-button a {
            display: inline-block;
            background-color: #ee626b;
            text-transform: uppercase;
            color: #fff;
            font-size: 14px;
            font-weight: 600;
            height: 50px;
            line-height: 50px;
            padding: 0px 30px;
            border-radius: 25px;
            transition: all .3s;
        }

            .main-button a:hover {
                background-color: #0071f8;
                color: #fff;
            }

        .features .item {
            padding: 35px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);
            border-radius: 25px;
            background-color: #fff;
            text-align: center;
        }

            .features .item h4 {
                font-size: 17px;
                margin-top: 25px;
                text-transform: uppercase;
            }


            .features .item .image {
                width: 90px;
                height: 90px;
                display: inline-block;
                text-align: center;
                line-height: 90px;
                background-color: #0071f8;
                border-radius: 50%;
                transition: all .3s;
            }

            .features .item:hover .image {
                background-color: #ee626b;
            }

        .categoryImg {
            width: 100%;
            overflow: hidden;
        }

        .categoryText {
            color: #1e1e1e;
            margin-top: 0px;
            margin-bottom: 0px;
            font-weight: 700;
            text-align: unset;
        }

          .header-area .container {
    padding: 0px;
  }

  .trending .main-button {
  margin-top: 32px;
  text-align: right;
}

.trending .item  {
  background-color: #eeeeee;
  position: relative;
  overflow: hidden;
  border-radius: 25px;
  margin-bottom: 30px;
}

.trending .item .thumb {
  position: relative;
  border-radius: 25px;
  overflow: hidden;
}

.trending .item span.price em {
  font-style: normal;
  font-weight: 400;
  font-size: 14px;
  text-decoration: line-through;
  display: block;
}

.trending .item span.price {
  text-align: right;
  position: absolute;
  right: 20px;
  top: 20px;
  border-radius: 10px;
  background-color: #008af8;
  font-size: 17px;
  text-transform: uppercase;
  font-weight: 600;
  color: #fff;
  padding: 8px 15px 6px 15px;
}

.trending .item .down-content {
  padding: 25px;
}

.trending .item .down-content span.category {
  font-size: 14px;
  color: #7a7a7a;
  margin-bottom: 5px;
  display: inline-block;
}

.trending .item .down-content h4 {
  font-size: 17px;
  font-weight: 600;
  transition: all .3s;
}

.trending .item .down-content a {
  position: absolute;
  display: inline-block;
  text-align: center;
  line-height: 40px;
  width: 40px;
  height: 40px;
  background-color: #ee626b;
  color: #fff;
  border-radius: 50%;
  right: 25px;
  bottom: 25px;
  transition: all .3s;
}

.trending .item:hover .down-content h4 {
  color: #0071f8;
}

.trending .item:hover .down-content a {
  background-color: #0071f8;
}

.TrendImg{
       height: 210px;
}

    </style>

    


</asp:Content>
