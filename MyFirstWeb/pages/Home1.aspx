<%@ Page Title="Newegg" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="Home1.aspx.cs" Inherits="MyFirstWeb.pages.Home2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../styles/test.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>
        @media screen and (min-width: 1118px) and (max-width: 1200px) {
      .nav__list {
        column-gap: 1.2rem!important; 
    }
}
    </style>

  <section class="headline">
    <h1>Newegg Website</h1>
    <p> Fueling Your Passion for Powerful Computing</p>
  </section>


      <div style="margin-top:40px" class="section trending">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="section-heading">
            <h6 class="categoryText">Featured</h6>
            <h2 class="categoryText">Featured Items</h2>
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
              <a href="ProductsMotherboard.aspx"><img class="categoryImg TrendImg" src="https://www.gigabyte.com/Image/2a0b3af92d42cc09236c06c389d0a032/Product/32146/webp/2000" /></a>
             
            </div>
            <div class="down-content">
              <span class="category">MotherBoard</span>
              <h4>Pc MotherBoards</h4>
              <a href="ProductsMotherboard.aspx"><i class="fa fa-shopping-bag"></i></a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="item">
            <div class="thumb">
              <a href="ProductsPowerSupply.aspx"><img class="categoryImg TrendImg" src="../Images/Power_Supply.png" alt=""></a>
             
            </div>
            <div class="down-content">
              <span class="category">PowerSupply</span>
              <h4>Pc PowerSupplies</h4>
              <a href="ProductsPowerSupply.aspx"><i class="fa fa-shopping-bag"></i></a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="item">
            <div class="thumb">
              <a href="ProductsCase.aspx"><img class="categoryImg TrendImg" src="https://d1q3zw97enxzq2.cloudfront.net/images/3000D_RGB_Main_Visual.width-1000.format-webp.webp" /></a>
             
            </div>
            <div class="down-content">
              <span class="category">Case</span>
              <h4>Pc Cases</h4>
              <a href="ProductsCase.aspx"><i class="fa fa-shopping-bag"></i></a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6">
          <div class="item">
            <div class="thumb">
              <a href="ProductsGpu.aspx"><img class="categoryImg TrendImg" src="https://dlcdnwebimgs.asus.com/gain/2808AAB9-285F-4F07-A8B9-43C783E92377/w1000/h732" /></a>
              
            </div>
            <div class="down-content">
              <span class="category">Video Card</span>
              <h4>Pc Gpu's</h4>
              <a href="ProductsGpu.aspx"><i class="fa fa-shopping-bag"></i></a>
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
            <h6 class="categoryText">Our Products</h6>
            <h2 class="categoryText">Most Buyed</h2>
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
              <a href="product-details.html"> <img class="categoryImg" src="../Images/Monitor_Category.png" /> </a>
            </div>
            <div class="down-content">
                <span class="category">Monitor</span>
                <h4 class="categoryText">Pc Monitors</h4>
                <a href="product-details.html">Explore</a>
            </div>
          </div>
        </div>
        <div class="col-lg-2 col-md-6 col-sm-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"> <img class="categoryImg" src="../images/B1MBS2111150RBMI5BC[1].jpg" /> </a>
            </div>
            <div class="down-content">
                <span class="category">Processors</span>
                <h4 class="categoryText">Amd&Intel Cpu's</h4>
                <a href="product-details.html">Explore</a>
            </div>
          </div>
        </div>
        <div class="col-lg-2 col-md-6 col-sm-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"> <img class="categoryImg" style="height: 120px;" src="../Images/CpuCoolerCategory.png" /> </a>
            </div>
            <div class="down-content">
                <span class="category">Coolers</span>
                <h4 class="categoryText">Cpu Coolers & Fans</h4>
                <a href="product-details.html">Explore</a>
            </div>
          </div>
        </div>

        <div class="col-lg-2 col-md-6 col-sm-6">
          <div class="item">
            <div class="thumb">
              <a href="ProductsOperatingSystem.aspx"> <img class="categoryImg" src="../Images/32-351-749-V06.jpg" /> </a>
            </div>
            <div class="down-content">
                <span class="category">Operating System</span>
                <h4 class="categoryText">Laptop&Pc OperatingSystem</h4>
                <a href="ProductsOperatingSystem.aspx">Explore</a>
            </div>
          </div>
        </div>


                  <div class="col-lg-2 col-md-6 col-sm-6">
          <div class="item">
            <div class="thumb">
              <a href="ProductsStorage.aspx"> <img class="categoryImg" src="../Images/SamsungStorage.jpg" /> </a>
            </div>
            <div class="down-content">
                <span class="category">Storage</span>
                <h4 class="categoryText">Pc Storage</h4>
                <a href="ProductsStorage.aspx">Explore</a>
            </div>
          </div>
        </div>

                  <div class="col-lg-2 col-md-6 col-sm-6">
          <div class="item">
            <div class="thumb">
              <a href="product-details.html"> <img class="categoryImg" style="height: 127px;" src="../Images/CorsairMemory.jpg" /> </a>
            </div>
            <div class="down-content">
                <span class="category">Memory</span>
                <h4 class="categoryText">Pc Memories</h4>
                <a href="ProductsMemory.aspx">Explore</a>
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
