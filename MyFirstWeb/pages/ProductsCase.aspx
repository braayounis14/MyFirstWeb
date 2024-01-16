<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="ProductsCase.aspx.cs" Inherits="MyFirstWeb.pages.ProductsCase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
       <link href="../styles/ProductsPage.css" rel="stylesheet" />

   <section id="test" class="features">

       <div id="catagory" runat="server" style="display: flex;" class="catagory">


           <div>


               <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [GPU]"></asp:AccessDataSource>
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






           </div>



       </div>



   </section>





</asp:Content>
