<%@ Page Title="" Language="C#" MasterPageFile="~/pages/Site1AfterSign.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="MyFirstWeb.pages.MyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <div class="px-4 px-lg-0">
  <!-- For demo purpose -->
  <div style="margin-top:70px" class="container text-white py-5 text-center">
    <h1 class="display-4">Your shopping cart</h1>
  </div>
  <!-- End -->

  <div class="pb-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

          <!-- Shopping cart table -->
          <div class="table-responsive">
            <table class="">

              <tbody>


<asp:GridView ID="GridView1" GridLines="None" style=" margin-top:-30px;" class="table" runat="server"  OnDataBound="GridView1_DataBound" DataSourceID="AccessDataSource1" AutoGenerateColumns="False" DataKeyNames="Email,DateBuy,Code">
    <Columns>
        <asp:TemplateField>
            <HeaderTemplate>
                <tr>
                    <th scope="col" class="border-0 bg-light">
                        <div class="p-2 px-3 text-uppercase">Product</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Price</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Quantity</div>
                    </th>
                    <th scope="col" class="border-0 bg-light">
                        <div class="py-2 text-uppercase">Remove</div>
                    </th>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <asp:Panel ID="Panel1" Style="border-top:none;" runat="server" >
                    <tr style="border-top:1px solid #dee2e6">
                        <th scope="row">
                            <div class="p-2">

                                <asp:Image ID="Image1" ImageUrl='<%# Eval("Image") %>' alt="" class="img-fluid rounded shadow-sm" style="box-shadow:unset !important;" runat="server" />
                                <div class="ml-3 d-inline-block align-middle">
                                    <h5 class="mb-0"><a href="#" class="text-dark d-inline-block line"><%# Eval("ProductName") %></a></h5>
                                    <span class="text-muted font-weight-normal font-italic">Category: Category</span>
                                </div>
                            </div>
                        </th>
                        <td class="align-middle"><strong><%# String.Format("{0:N0}", Convert.ToInt32(Eval("Price"))) %></strong></td>
                        <td class="align-middle"><strong><%# Eval("Quantity") %></strong></td>

                        <td class="align-middle">
                            <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete" CommandArgument='<%# Eval("Code") %>' CssClass="text-dark">   <i class="fa fa-trash"></i> </asp:LinkButton>
                        </td>


                    </tr>
                </asp:Panel>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>


              </tbody>
            </table>

          </div>
          <!-- End -->
        </div>
      </div>
        <div class="container">
      <div class="row py-5 p-4 bg-white rounded shadow-sm">
        <div class="col-lg-6">
          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Coupon code</div>
          <div class="p-4">
            <p class="font-italic mb-4">If you have a coupon code, please enter it in the box below</p>
            <div class="input-group mb-4 border rounded-pill p-2">
              <input type="text" placeholder="Apply coupon" aria-describedby="button-addon3" class="form-control border-0">
              <div class="input-group-append border-0">
                <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Apply coupon</button>
              </div>
            </div>
          </div>
          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Instructions for seller</div>
          <div class="p-4">
            <p class="font-italic mb-4">If you have some information for the seller you can leave them in the box below</p>
            <textarea name="" cols="30" rows="2" class="form-control"></textarea>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Order summary </div>
          <div class="p-4">
            <p class="font-italic mb-4">Shipping and additional costs are calculated based on values you have entered.</p>
            <ul class="list-unstyled mb-4">
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order Subtotal </strong><strong id="Order_Price" runat="server">$390.00</strong></li>
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Shipping and handling</strong><strong id="Shipping_Price" runat="server"  >$10.00</strong></li>
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tax</strong><strong id="Tax_Price" runat="server" >$0.00</strong></li>
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                <h5 class="font-weight-bold" id="Order_Total" runat="server" >$400.00</h5>
              </li>
            </ul>
              <asp:Button ID="BtnCheckOut" OnClick="BtnCheckOut_Click" class="btn btn-dark rounded-pill py-2 btn-block" runat="server" Text="Procceed to checkout" />
               
          </div>
        </div>
      </div>
 </div>



    </div>
  </div>
</div>




    <style>


        body {
  background: #eecda3;
  background: -webkit-linear-gradient(to right, #eecda3, #ef629f);
  background: linear-gradient(to right, #eecda3, #ef629f);
  min-height: 100vh;
}
          .table td, .table th {
            border-top:none;
        }

          .line1 {
              overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
          }


          @media (min-width: 1199px){
.line {
   width: 450px;
}
.img-fluid {
    width: 150px;
}
}

                    @media (min-width: 1px){
.line {
   width: 420px;
}
.img-fluid {
    width: 100px;
}
}
    </style>









        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DB.accdb" SelectCommand="SELECT * FROM [Cart] where ([Email]=?)" DeleteCommand="DELETE FROM [Cart] WHERE [code] = ?">
    <DeleteParameters>
        <asp:Parameter Name="code" Type="String" />
    </DeleteParameters>
    <SelectParameters>
        <asp:SessionParameter SessionField="email" Name="?"></asp:SessionParameter>
    </SelectParameters>
</asp:AccessDataSource>
   

</asp:Content>
