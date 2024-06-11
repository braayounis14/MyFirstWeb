<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="ProductsCase.aspx.cs" Inherits="MyFirstWeb.pages.ProductsCase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <link href="../styles/ProductsPage.css" rel="stylesheet" />




   <section class="headline">
       <div class="page-content-inner">
           <img src="https://promotions.newegg.com/group5/24-0609/1920x120V2@2x.jpg" class="banner-flexible-img" alt="Video Cards" title="" style="">
       </div>
   </section>







   <section id="test1" class="features products-page Sortborder" style="">
       <div class="sort">
           <div>
               <asp:Label ID="lblSort" runat="server" Text="Sort By:"></asp:Label>
               <asp:DropDownList ID="ddlSortBy" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSortBy_SelectedIndexChanged">
                   <asp:ListItem Text="Lowest Price" Value="ASC"></asp:ListItem>
                   <asp:ListItem Text="Highest Price" Value="DESC"></asp:ListItem>
                   <asp:ListItem Text="Name A-Z" Value="ASC_Name"></asp:ListItem>
                   <asp:ListItem Text="Name Z-A" Value="DESC_Name"></asp:ListItem>
               </asp:DropDownList>
           </div>
           <div class="ddlSort">
               <asp:Label ID="lblSearch" runat="server" Text="Search Product:"></asp:Label>
               <asp:TextBox ID="txtKeyword" runat="server"></asp:TextBox>
               <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
           </div>

           <div class="ddlView">
               <asp:Label ID="lblItemsPerColumn" runat="server" Text="Items Per Column:"></asp:Label>
               <asp:DropDownList ID="ddlView" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlView_SelectedIndexChanged">
                   <asp:ListItem Text="Items per column" Value="North America" Disabled="true" style="color: #0000FF; font-weight: bold;"></asp:ListItem>
                   <asp:ListItem Text="1 items per column" Value="1"></asp:ListItem>
                   <asp:ListItem Text="3 items per column" Value="3"></asp:ListItem>
                   <asp:ListItem Text="4 items per column" Value="4"></asp:ListItem>
                   <asp:ListItem Text="6 items per column" Value="6"></asp:ListItem>
               </asp:DropDownList>
           </div>

       </div>

   </section>

   <section id="test" class="features products-page" style="">



       <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Case]"></asp:AccessDataSource>


       <asp:DataList ID="DataList1" runat="server" Style="" DataSourceID="AccessDataSource1" DataKeyField="image" RepeatColumns="6" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" CellPadding="40" CellSpacing="40">
           <ItemTemplate>




               <div class="card">
                   <div class="im">
                       <asp:ImageButton class="img" ID="ImageButton2" runat="server" ImageUrl='<%# Eval("Image") %>' />
                       <div class="save">
                           <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 683 683" height="683" width="683" class="svg">
                               <g clip-path="url(#clip0_993_25)">
                                   <span>
    <asp:Label Text='<%# String.Format("{0:N0}", Convert.ToInt32(Eval("Price"))) %>' runat="server" ID="Label3" />₪
</span>
                                   <g mask="url(#mask0_993_25)">
                                       <path stroke-linejoin="round" stroke-linecap="round" stroke-miterlimit="10" stroke-width="40" stroke="#CED8DE" d="M148.535 19.9999C137.179 19.9999 126.256 24.5092 118.223 32.5532C110.188 40.5866 105.689 51.4799 105.689 62.8439V633.382C105.689 649.556 118.757 662.667 134.931 662.667H135.039C143.715 662.667 151.961 659.218 158.067 653.09C186.451 624.728 270.212 540.966 304.809 506.434C314.449 496.741 327.623 491.289 341.335 491.289C355.045 491.289 368.22 496.741 377.859 506.434C412.563 541.074 496.752 625.242 524.816 653.348C530.813 659.314 538.845 662.667 547.308 662.667C563.697 662.667 576.979 649.395 576.979 633.019V62.8439C576.979 51.4799 572.48 40.5866 564.447 32.5532C556.412 24.5092 545.489 19.9999 534.133 19.9999H148.535Z"></path>
                                   </g>
                               </g>


                               <defs>
                                   <clippath id="clip">
                                       <rect fill="white" height="682.667" width="682.667"></rect>
                                   </clippath>
                               </defs>

                           </svg>
                       </div>
                   </div>

                   <div class="text">
                       <p class="h3">
                           <asp:Label class="line1" Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" />
                       </p>
                       <p class="p">
                           <asp:Label Text='<%# Eval("Details") %>' runat="server" ID="DetailsLabel" />
                       </p>

                       <asp:LinkButton ID="AddBtn" class="AddBtn" runat="server">
                       <div class="icon-box">
                           <p class="span">Add To Cart</p>
                       </div>
                       </asp:LinkButton>

                   </div>
               </div>





           </ItemTemplate>
       </asp:DataList>




   </section>





</asp:Content>
