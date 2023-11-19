<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="Products1.aspx.cs" Inherits="MyFirstWeb.pages.Products1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="test" class="features">

        <div id="catagory" runat="server" style="display: flex;" class="catagory">







            <div>


                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Products]"></asp:AccessDataSource>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" DataKeyField="image" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal">
                    <ItemTemplate>



                        <div>
                            <div class="card">
                                <div class="im">
                                    <asp:ImageButton class="img" ID="ImageButton2" runat="server" ImageUrl='<%# Eval("Image") %>' />
                                    <div class="save">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 683 683" height="683" width="683" class="svg">
                                            <g clip-path="url(#clip0_993_25)">
                                                <span>
     <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="Label3" />$
 </span>
                                                <g mask="url(#mask0_993_25)">
                                                    <path stroke-linejoin="round" stroke-linecap="round" stroke-miterlimit="10" stroke-width="40" stroke="#CED8DE" d="M148.535 19.9999C137.179 19.9999 126.256 24.5092 118.223 32.5532C110.188 40.5866 105.689 51.4799 105.689 62.8439V633.382C105.689 649.556 118.757 662.667 134.931 662.667H135.039C143.715 662.667 151.961 659.218 158.067 653.09C186.451 624.728 270.212 540.966 304.809 506.434C314.449 496.741 327.623 491.289 341.335 491.289C355.045 491.289 368.22 496.741 377.859 506.434C412.563 541.074 496.752 625.242 524.816 653.348C530.813 659.314 538.845 662.667 547.308 662.667C563.697 662.667 576.979 649.395 576.979 633.019V62.8439C576.979 51.4799 572.48 40.5866 564.447 32.5532C556.412 24.5092 545.489 19.9999 534.133 19.9999H148.535Z"></path>
                                                </g>
                                            </g>


                                            <defs>
                                                <clipPath id="clip">
                                                    <rect fill="white" height="682.667" width="682.667"></rect>
                                                </clipPath>
                                            </defs>

                                        </svg>
                                    </div>
                                </div>

                                <div class="text">
                                    <p class="h3">
                                        <asp:Label Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" /></p>
                                    <p class="p">
                                        <asp:Label Text='<%# Eval("Details") %>' runat="server" ID="DetailsLabel" /></p>

                                    <div class="icon-box">
                                        <p class="span">Add To Cart</p>
                                    </div>

                                </div>
                            </div>


                        </div>


                    </ItemTemplate>
                </asp:DataList>



                <link href="../styles/Product.css" rel="stylesheet" />

                <div class="short-video-box grid gap-20px col-w-4 goods-list is-vertical is-trending">
  <div class="grid-col">
    <div class="goods-container" data-itemnumber="34-156-561">
      <div class="tag-list at-top-left">
        <div class="tag tag-s is-skewed bg-red">
          <div class="tag-text">Black Friday Deal</div>
        </div>
      </div>
      <a href="https://www.newegg.com/black-msi-gf-series-thin-gf63-12vf-848us-gaming/p/N82E16834156561?Item=N82E16834156561&amp;cm_sp=Homepage_TRENDINGNOW-_-P1_34-156-561-_-11182023" class="goods-img radius-m bg-lightgray">
        <img src="https://c1.neweggimages.com/ProductImageCompressAll300/34-156-561-01.png" title="MSI GF Series Thin GF63 12VF-848US 15.6&quot; 144 Hz IPS Intel Core i7 12th Gen 12650H (2.30GHz) NVIDIA GeForce RTX 4060 Laptop GPU 32GB Memory 1 TB PCIe SSD Windows 11 Home 64-bit Gaming Laptop" alt="MSI GF Series Thin GF63 12VF-848US 15.6&quot; 144 Hz IPS Intel Core i7 12th Gen 12650H (2.30GHz) NVIDIA GeForce RTX 4060 Laptop GPU 32GB Memory 1 TB PCIe SSD Windows 11 Home 64-bit Gaming Laptop" orgsrc="https://c1.neweggimages.com/ProductImageCompressAll300/34-156-561-01.png">
      </a>
      <div class="goods-info">
        <div class="goods-branding has-brand-store">
          <a href="https://www.newegg.com/black-msi-gf-series-thin-gf63-12vf-848us-gaming/p/N82E16834156561?Item=N82E16834156561&amp;cm_sp=Homepage_TRENDINGNOW-_-P1_34-156-561-_-11182023#IsFeedbackTab" class="goods-rating" title="Rating + 4.5">
            <i class="rating rating-4-5" aria-label="rated 4.5 out of 5"></i><span class="goods-rating-num font-s text-gray">(164)</span>
          </a>
        </div>
        <a href="https://www.newegg.com/black-msi-gf-series-thin-gf63-12vf-848us-gaming/p/N82E16834156561?Item=N82E16834156561&amp;cm_sp=Homepage_TRENDINGNOW-_-P1_34-156-561-_-11182023" class="goods-title" title="View Details">MSI Thin GF63 12VF-848US Gaming Laptop Intel Core i7-12650H 2.30 GHz 15.6" Windows 11 Home 64-bit</a>
        <div class="tag-list">
          <div class="tag is-skewed bg-darkorange">
            <div class="tag-text font-s">Save 22%</div>
          </div>
        </div>
        <div class="goods-price is-horizontal">
          <div class="goods-price-current">
            <span class="goods-price-label"></span><span class="goods-price-symbol">$</span><span class="goods-price-value"><strong>849</strong><sup>.00</sup></span>
          </div>
          <div class="goods-price-was text-gray font-s">$1,099.00</div>
          <div class="goods-price-ship text-gray font-s"><span class="goods-price-ship-eligible text-blue">Free Shipping</span></div>
        </div>
      </div>
    </div>
  </div>
  <!-- Repeat the structure for other items -->
</div>


            </div>



        </div>



    </section>


    <style>
        .card {
            width: 280px;
            background: white;
            border-radius: 10px;
            box-shadow: 0px 0px 14px -2px #bebebe;
            transition: 0.2s ease-in-out;
        }

            .card:hover {
                cursor: pointer;
            }

        .img {
            width: 100%;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            background: linear-gradient(#7980c5, #9198e5);
            display: flex;
            align-items: top;
            justify-content: right;
        }

        .save {
            transition: 0.2s ease-in-out;
            border-radius: 10px;
            margin: 20px;
            width: 30px;
            height: 30px;
            background-color: #ffffff;
            display: flex;
            align-items: center;
            justify-content: center;
        }

            .save .svg {
                transition: 0.2s ease-in-out;
                width: 15px;
                height: 15px;
            }

            .save:hover .svg {
                fill: #ced8de;
            }

        .text {
            padding: 7px 20px;
            display: flex;
            flex-direction: column;
            align-items: space-around;
        }

            .text .h3 {
                font-family: system-ui;
                font-size: medium;
                font-weight: 600;
                color: black;
                text-align: center;
            }

            .text .p {
                font-family: system-ui;
                color: #999999;
                font-size: 13px;
                margin: 0px;
                text-align: center;
                padding: 5px;
            }

        .icon-box {
            padding-top: 12px;
            padding-right: 12px;
            padding-bottom: 12px;
            padding-left: 12px;
            background-color: #7980c5;
            border-radius: 10px;
            text-align: center;
        }

            .icon-box .span {
                font-family: system-ui;
                font-size: small;
                font-weight: 500;
                color: #fff;
            }
        /*# sourceMappingURL=index.css.map */
    </style>

</asp:Content>
