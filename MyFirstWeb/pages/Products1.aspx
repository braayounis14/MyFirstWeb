<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1.Master" AutoEventWireup="true" CodeBehind="Products1.aspx.cs" Inherits="MyFirstWeb.pages.Products1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="test" class="features">

        <div id="catagory" runat="server" style="display: flex;" class="catagory">







            <div>


                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Products.accdb" SelectCommand="SELECT * FROM [Products]"></asp:AccessDataSource>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" DataKeyField="image" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <div style="display: flex;">
                            <div class="card">
                                <div class="im">

                                    <asp:ImageButton class="img" ID="ImageButton2" runat="server" ImageUrl='<%# Eval("Image") %>' />
                                </div>
                                Price:
         <span>
             <asp:Label Text='<%# Eval("Price") %>' runat="server" ID="PriceLabel" />$
         </span>

                                ProductName:
                 <asp:Label Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" /><br />
                                Details:
                 <asp:Label Text='<%# Eval("Details") %>' runat="server" ID="DetailsLabel" /><br />

                                <br />
                            </div>

                        </div>
                    </ItemTemplate>
                </asp:DataList>



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
