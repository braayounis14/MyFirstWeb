<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="ProductsCpuCooler.aspx.cs" Inherits="MyFirstWeb.pages.ProductsCpuCooler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
       <link href="../styles/ProductsPage.css" rel="stylesheet" />

   <section id="test" class="features">

       <div id="catagory" runat="server" style="display: flex;" class="catagory">


           <div>


               <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [GPU]"></asp:AccessDataSource>

               <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" CellPadding="20" CellSpacing="20" DataKeyField="Price" RepeatDirection="Horizontal">
                   <ItemTemplate>
                       Price:
                       <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                       <br />
                       ProductName:
                       <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                       <br />
                       Details:
                       <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                       <br />
                       Image:
                       <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                       <br />
<br />
                   </ItemTemplate>
               </asp:DataList>




           </div>



       </div>



   </section>





</asp:Content>
